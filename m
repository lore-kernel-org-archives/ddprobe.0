Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15BB82D052
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755319194; cv=none; b=qp4KRcz4EyBiV3LVWDw0TneynzeK3BcRovAD7TDFgfZABesPtLawzpJFuSlW6Ajkoz41vzwVxqWLdn8yBdkvq6UEy/hWZGnqROZH7hMQjTBR4MR0sBldjYh1j1e8mYcbpifK/HEmoM5LyARgei4cqkcM0sKjU5HvXuGg40U8LAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755319194; c=relaxed/simple;
	bh=1rMj49dnpMGftwk0gexk34OH+X6tfzdxjXoIDBVfJh0=;
	h=To:Subject:From:Message-Id:Date; b=JdEUztrkj2K0/mvUpxQEBENGBBuusqi2sAgvnXlweUjd0HiabUCaDf/f+PB/vCfivp7m4za5V0A/Ud6qGSHR/n2qTtlbMFkfd3XVL9oh3J+rZqKs7q4Vo5fX0vcCRpr66XBCpmmHLjk4FgDBMca3kExZDvhAPpizEAihgtsrZTw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NgfixVBC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NgfixVBC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A94C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755319193;
	bh=1rMj49dnpMGftwk0gexk34OH+X6tfzdxjXoIDBVfJh0=;
	h=To:Subject:From:Date:From;
	b=NgfixVBCY688Cd5aOokBdLe9MZDT0qB7i87CIVzCWJLOYmUSimQ9TlPPGRk9m6/0O
	 4jVn2+Yd8+Pvxnh6oNMP8D5zm8pgndG8vBzcp+zHButI4TitMuejU9i5TWwSUdN8fs
	 Iqmp9f2kyOorOd3G0X+5sVrbYQUiZO6gMU9/uS4i6iBJOnmY9kZRPy8H/ByzzP21Zv
	 fdPU3xzsW6ou8IRbs1HIjexcwhx9HZOTWrm/nOBuNFefZBLPFfosqe6XC77yrzBxlz
	 x7dcQCmmwaHWlSRCxFm0ZYVy8g917rlK89NSJN55//5DXoVYN6rfM7ztu8l2s4hlJN
	 /w9P+yMN2J8lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E5AC87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 04:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531919358.9592.11007416961624442090.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e55dfa55a4b64d7aec06bac5dec9431812f4cd29fd1dc11b07778723cd72673
Date: Sat, 16 Aug 2025 04:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755319193
