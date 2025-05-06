Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 305221E3DF4
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746541194; cv=none; b=tG0W4pqRbNRNXgRhkPjmKhaZaNVh3hkro9JBu8qMiwiY2CZvIjUmF3SOq49HZaUFJalg26tr477IvP5JCCBYQ68+pIbTUCgdpKoeZtvaxuhxs5OGeaD7x0ih8Ug4jTnHxGgf+RLY8OItAS7WRCgmE7952xzDq+bzEnY/u99PWTE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746541194; c=relaxed/simple;
	bh=ulRbtnJhSjxuixjHHZe2bApIaGeXFD7e4NKefnhGTQM=;
	h=To:Subject:From:Message-Id:Date; b=AbvWpNIcikwXMMxwhNmekIRfgn8SEG9lofjuwiv02Q8jg3F0nnns+MiUAYTQzNNExZ0WWPkv0nIGqjljxEN9caVlkP4cT0wkLvlmenXBkLTL58vYQX3G1iTWmJg9nzBdKt7viMG2yIMmwmowWxHXRJTxYj9CWjEJDvdj4/qSBCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fGIwSvbg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fGIwSvbg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FB4BC4CEEB
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746541193;
	bh=ulRbtnJhSjxuixjHHZe2bApIaGeXFD7e4NKefnhGTQM=;
	h=To:Subject:From:Date:From;
	b=fGIwSvbgony6DIiCqr/t4+OCzajgfxE0fapQiTj8pX/PJvhNatKE/hxsdlnHg1Hd3
	 0YDOjyMwED5UCRqAZo/h0n2GGULMxlV+SxKPStzcGU19Dh5i5vF3nf0IT6LXdFh1Hu
	 agDa0oftj3D1P8cxdfe4xMGq6SA9JtQuhl8lcKwtoTXiJfyfk0byG8f2XrrGXC2Gs/
	 3vuZNSC87IiC3pq1pIgCW/gGoegJbNk0YWO84P0PchnROOsCtNSaL627lvZgxRiKtx
	 mJQ/4cDVadtbT0I8XqzLkW15etHuuIZXn3tOE4ay2WzK1TZGpZDnUBlNHCKz9FvTEZ
	 JdBWJAeS3+50w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F504C3ABBF
	for <ddprobe@lists.linux.dev>; Tue,  6 May 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174654119357.7524.15462935086248940400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89a80018d62ca7d28e1fb3f7f1a28a7eff51c688312fadd128e2c63e7c6875ae
Date: Tue, 06 May 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746541193
