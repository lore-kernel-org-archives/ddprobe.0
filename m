Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C99C8CE
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767095034; cv=none; b=E2IckFvegVApo62RocYnIw8Rh4L9nyX+hywD54wQdfgR6cK00fyWRIqvTROnYVoLf8yVPvZ5e0jNH+Y/Bhs23TfHH5pnYF6t9pE7o5eDBqllJ74VwuK+hRqUbFtGtqg7Ilec6VDfm6GY6jm47RvTGprByRoZ7YTmAs7M4MMrD94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767095034; c=relaxed/simple;
	bh=0lURsREOmAC1yk7AneEl4Z4+T7Xfz5C6MBfBGMV5DTo=;
	h=To:Subject:From:Message-Id:Date; b=flKKEXdjt/blO+jaCBGj0STZAlgMR34fRZSQgCERuL+Tg4QOrg2aCXYNHjYdhb7CpX0IbnVp3A34/O9Xm4VGJyI88pIiG2Vv2TPP04MtQbPGpOkFU63gyv3zeUz05wS/ycy2CKNmkuS9xONM2c+CCB3eFxjW8Whrf9dyUvipKgc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=umRzGiFR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="umRzGiFR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A782BC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767095033;
	bh=0lURsREOmAC1yk7AneEl4Z4+T7Xfz5C6MBfBGMV5DTo=;
	h=To:Subject:From:Date:From;
	b=umRzGiFR+vVtjVMfyatkDG/3duORiOOSVJQlle5vKAWz2xmjJzIo5pIdek7GMpBSc
	 9RDsn3wV3o1M+1R+2jBudxrxaUmGFLUwfiu0M6Vog8FtCt/Q2c/UzH38C/cylGlv1N
	 m4/GSXjBMH4zVUXYFubu+BnqhtaSd/nIIDqE8KVt5Q6JOJFbZkmAfcYvUDAm4uY8Pv
	 jLlUwsp390JhbmmIrGj0FuG6KSbGd+nsEbzUdmPJeUhRftDUuulpJRtf5u9U6FXHTL
	 CXP8mgbB0YDEm7GvIj83i2RxzqlL9wEcuD4OQHbKpqXVV0ptmmp7fKAuK6yCjPQW7v
	 TkFSyhNAmruUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E2CE95A6C
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176709503358.24262.10457892061167177464.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a09b90b892e6e82fcb3c6f8a5fc8b85400a97e9b2a80e930932c6cd9d61450
Date: Tue, 30 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767095033
