Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4907E3E5570
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774296894; cv=none; b=S/DLm7az8O3F2YkhBEeUc8xFaxkNUkzkTJfloFK0g3MTDpIQLoszdBu3hhsIWNHdNPbLyQ6ll06pHvOzyVRc/CYthCb2ozFBrWmHwilLpvD1L84ST5LQZZFs04Bl6iM1bBHSLRgx23rzTVRONfLzu0fr6zpa+F4yjUGTHzYvI+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774296894; c=relaxed/simple;
	bh=fdixBTNNMViCrCYsDasDd15HNap3aHzckA6Bb4FDkMg=;
	h=To:Subject:From:Message-Id:Date; b=AwBfTJZcEONbu/xztsYPKSHiNH9d/4eOlHC9+zN6LXJzqZfAkBPGURebNZAu0Vwlto0VnuWdoLMEqSv5Aiydl7KxaD5modcN60+1u9Aggjz92h/KPkc1IgC0pnbCaC58bXihIhoQB80boJ/4yCg6WwYO6t6qloJ671MkZ2GHvfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwyTzIAv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwyTzIAv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA47DC2BC87
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774296893;
	bh=fdixBTNNMViCrCYsDasDd15HNap3aHzckA6Bb4FDkMg=;
	h=To:Subject:From:Date:From;
	b=KwyTzIAv3/A4g4iXM2ySumAoIh6kKCbDYg93z0QoLN77P6PKJNriv4kAVq+7gZNT4
	 79pHwpFBnKrxUcHQbhUtJFW2xvRsgpmK1tX55e9zgWWFeHkGmk741cQpm/Et6hwIAs
	 Zelcj1DP4/SF+6osE35g63R/EoDyequXLJDkTuzl6xa+EfXjeNFmftnb8SCDv/MGxA
	 NOqAswMps0dndPH8JtTRsZPInZLN7FDYQhJ/H31GRzOAVJVk5DzqWJOA5uG210UwB8
	 vVddD8u2Vawiw1fYZdY89yxj2ZlHFzQgwrHiPHjXIL+FaOEbnVN2kvOBKzZRk3BKLQ
	 eEsPCoBtjZGrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991D4F483F2
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 20:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177429689361.19851.5534799693893880525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa06d117236239672ad141ceaa0e1ef02bd4fc50f267d44ba6320440994a2eaa
Date: Mon, 23 Mar 2026 20:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774296893
