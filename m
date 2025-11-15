Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB0B11CBA
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763185194; cv=none; b=DkeIA8OfD9wTnAxnwpIEMtG2R42ETvbzrKhWGjOlp3U5+WeNVw8ZI1jME28+ejZm/dcS+FSphRRfCBig0Xp/imOlSrrH+WORYX7/+N86sT2xga9ZXeF68HIJ3l3r6bMv4C5sMLOEg8Wm/QVA7cu69t0B0VnWeTzwKHcf0o4DolA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763185194; c=relaxed/simple;
	bh=juoHJyhvWy3pWkq/MXMVtYu165Af9KN6GfKrEw+1VCw=;
	h=To:Subject:From:Message-Id:Date; b=GguHhdZPK6sQbNk9VmPrUNTFJEO1lmVylSO1I3RDQMgw9gjkm0pxEbfFq2jMSrxV1vJKtcWDS9Zsl5uffTKn65rrgTQ/RZzGppuB8XPsuvG4dnMpYBFiJMMDCkHttb7vzg0ZX9oKqjMjPZI9vxGQ9654FfnU5103bfuYSwsGArA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nKctlMU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nKctlMU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A88D2C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763185193;
	bh=juoHJyhvWy3pWkq/MXMVtYu165Af9KN6GfKrEw+1VCw=;
	h=To:Subject:From:Date:From;
	b=nKctlMU81FFMeIcz3nT/NPdXpN6gZlQPhL9qF1haqCgr1pThTQBU1jIAqDwWNfb/A
	 AOIHjcu2/wP9dM752baJxpSt5bw9icVBpdoVfqT4jC+xdVN5oV3WAI6Pp/DFj76gkT
	 IJB6FexX+OR7OdHKGQvolggY9O0Z/M5UYmO19igLd9bZaNcniTzeDIBofc4w+jtlPL
	 SHyaEr6BaJX/3lT2zQv0xhEWGLE97jlxgK41YDFIodm+1B0a6DRRbIBbJjcbx8yoz/
	 o+DPvOTkck1XSDdbsE3A5opttC2qTInP279/E8TbF96jk1/GoAyUZAfBIxfO7AL2Qn
	 HL6k8oWw3ZI7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9BCCEB2C1
	for <ddprobe@lists.linux.dev>; Sat, 15 Nov 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176318519359.11430.13379944027304493920.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145ea30d02ace2c7a32e242eed7aec1f0180633a9ec605d4ee5517d3ed5ffc85
Date: Sat, 15 Nov 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763185193
