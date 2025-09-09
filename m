Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D8F83054D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757401195; cv=none; b=Sdcu0NGeXDKJo/cope6E2FqvNuicsXLo5MaQmeV4mBfSIgipoE2PjuOVfACA9M9NY34XDVY5BjCq00Cj0GJ9MAYg06WHevCIqHzV7WdTEnm9PkOb6K55OFd3/en1RfW8IT+TRoOM/tJqCNwMOC5vJyFfeacSYc8DSUNnvYJapg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757401195; c=relaxed/simple;
	bh=Y8ARbhSYwcbgAMmZ/mUSwiEzYVPB5tekaJhYZD0fFwA=;
	h=To:Subject:From:Message-Id:Date; b=qQR/nY4624sRzAgSyJOZ6E81kHxfa8amQ3Le5JVaHAInguGjqi10fp/2V4Oms5TvpwVDjOux7QZ6tv+Xt72KMavA2POX2N/u/jLdBqNJNes5lqb97wvuDnKO+awFkMehnCUQc4rIFJkUugYVbp7wGStPBd5NKeQmauutDCXgWII=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6KshBHV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6KshBHV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F2D7C4CEF9
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757401193;
	bh=Y8ARbhSYwcbgAMmZ/mUSwiEzYVPB5tekaJhYZD0fFwA=;
	h=To:Subject:From:Date:From;
	b=j6KshBHVDtPZOxqY/dB04fEoGCWaXhuQ6Nv2KVywchjDwT1fwjM6HuwkzV0ICjAWJ
	 MrAod9ieiw26ydY3jXOtqDfez3vS0YUCb+dfCxuvFjk8MjReUBBQaEMMwlDNUNUz4C
	 b5o9Qz1BcYMc970RhhA2Dv+cjjV04GfWtNopvfVvHXiIalLcZx1zTXWosOKRrleYC2
	 yuApyRiBwVMW8PKIoYtzG92FhQ2BXl0mk5hRtMDQY5QnuGVZwjcoa5enEmAyjLy2Dm
	 KXqZZU45TQugdcmzzqduMOIcj0zbMQMgcr8ulLx6mNsj2lnzdFdfMtguAv6Y57MMuj
	 ytG27BQVpP39w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA1BCAC587
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175740119357.32613.14472333498661919078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70a1ac646c652152c331fea0646170b13eb9696d9150df00368dd15acd91ae71
Date: Tue, 09 Sep 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757401193
