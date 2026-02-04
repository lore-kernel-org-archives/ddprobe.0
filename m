Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21F25299947
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770215634; cv=none; b=mr3OBGwYaW1KC472RS6TLgYStGF+/drIxulFIfMKaFRXPmxGVWL7vLRTlopuPBwxrVtv7lq1Z/zPR4w8CoW++Aw1jN0nfoL7ZkJI2mr4b8pxmd7ZDOZ7SjI1lKIhmJVsapfA+83L8UZ7/dzOXy+OsLWvA2VqrKNsnqKpMY8+jrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770215634; c=relaxed/simple;
	bh=B0iknPzij4PEukr/8dzPtioIxb1OotubIVb+ZOgo+a8=;
	h=To:Subject:From:Message-Id:Date; b=a7MXdZdPG1aMBzZyw3OoUN4Vsg57bgAuqwdhtd8rmlnCE2NK0rV4CAkt8/QsVZL+Hj5L9ISyFddUFgphIpjlDwDqxBYrbTHkse1SpEFojRqbr0x/baz9Kd6RyFU4/aZMn37wUsvBR2K7u9/fqmw6qlFnDVkIc44vGZGhJ0o4WUY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V6bnp373; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V6bnp373"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D30C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770215633;
	bh=B0iknPzij4PEukr/8dzPtioIxb1OotubIVb+ZOgo+a8=;
	h=To:Subject:From:Date:From;
	b=V6bnp373gr69xvPvWUKWDMndiL/IzQUz8LV1JanX/iSusgWh4lZndcxN1lPoSMD8U
	 cODoJqAxj/DqATFpKq7NL10KLNLbRqmOxGykf+TaL2bTzlKjNDL6ix/c7FaXjXMXoD
	 YBxpfeVJa5evyAVa+JYLHBlwVN0vQulOoftDrEh24dzc2ABH7t0dd3WfjqFUn3VUUF
	 mNicfQViVIcr9Ecp04S5dvHbV025J2DUiP42XYNGY7JgNb8Gzybg+apwr0xQAPoGL7
	 SqJRTUQZdxyFb3WJQJBfTv7l6qfRisCKyAKxnlt41ZjALWjMd/4vzmY2StPnf5886j
	 6U8FfHgDziKqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98200E9D3E7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 14:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177021563359.28597.7782548960153349324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa4fd3478cbb3b1a95d9ddab8331eb17f796a85f2456db2717253a750fc0642
Date: Wed, 04 Feb 2026 14:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770215633
