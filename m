Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330451CFBA
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760192394; cv=none; b=UaMBs/Svn8eVgOjRuPuiS2IDwSCRs0im4od6IXkjpkI3gDYztK0dtSEfbRNOXKRfZ4O0v0eECbgrOjEKTqzpyIQWhsyFUAR9X41X8ZILtfdW74ttUDWqSbrpT1DShF3GEeNareNgaiIqtv/5myXG5cE+/RG0x/0o8z/Q1wolevU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760192394; c=relaxed/simple;
	bh=LSI33U7ZmAKYE5vc1KEFJ4d1I11mq+F+ECJhuAiOQt4=;
	h=To:Subject:From:Message-Id:Date; b=Jk0J0SBEKhzph3C4pcBCAj25AOCH15MHQmdZ91TKDQFdua2PSTYS+TSH/yifbQUyQq7UnDrdulYPGG5vF5LZ3iSx20Rf2/3h7mrwmXxmhpLCUT2bTRbKZ03C+i5BK8lvKGM4vrn3nzTUiRfkNT18vyCUO6fy6TquUrSv6pms8As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XBkc4paP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XBkc4paP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1611C4CEF4
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760192393;
	bh=LSI33U7ZmAKYE5vc1KEFJ4d1I11mq+F+ECJhuAiOQt4=;
	h=To:Subject:From:Date:From;
	b=XBkc4paPTHJGSM8xoAB3BuSzTYqSesTUzPtVMLuuIn1G77IWiSTfDVeghs+1YO+cz
	 D/LkYdsKPHih+adnqEDV3xszqM3AQumEvXPqVD/m+k1PKv11envwd3ruyeJ/wy7qZv
	 MHLRugNWHCLYKOQytB1zZ+US1aO4L7prYblqyLvvd37VESew2yPVc4jm7nfq3NxWW5
	 w9C55aJozo0cvyiWKdehQH/NI0edCNnCz3flrmZYDCDpbefkvebrm70gzEQrXUsVN4
	 zoeRVgjL61x2TiFwV+xmcSkHsOuGOQ8n+vK65eyi03340kSsagsI3ayIpJNIXe49D6
	 eBaZgowU+Zqaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90270CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176019239358.4044.10836565993898366675.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1159b65efff035e3c901e1a9db689cb75e33d491b6c65f0eee468c12e8f081db
Date: Sat, 11 Oct 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760192393
