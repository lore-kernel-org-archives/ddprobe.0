Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EDBA1DFE2B
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728399354; cv=none; b=iMHJgC1W19O+ISosQaon2MP6l4MZ4lxZKS9wgrIvBe60gZtTbpIbptQRsQoFO/T7U8DR5tAcL5L/l3m7L2If1TavGCjvCXS3Lf9au02B7KFI73BpOZ74IU27pv6BziVZFNCNQpxkJ5dEGtO02DAohRT6trJIDfTaVMIo/kMGRyA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728399354; c=relaxed/simple;
	bh=nK7Cs0lBXD8TiksQ+n7j16ZKHL/aUSl5lEshy8Cdf0U=;
	h=To:Subject:From:Message-Id:Date; b=QbzOFbX8StSq6t7IYgAOeE75/SOntbh3mA+znAi8QxrbK1QENAJoXBIjqTZhmNQlkXIMTh0K9e9O31ppYa/1hs0POqF2h6xdJpNGHmDTASIquTxYH8UEo1P1TgL4f3gG6PSEAM1B9gKmw0YiI3vm5wT+fJiCVZm99Fr4vcw87JI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CWVQGoCa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CWVQGoCa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9FFBC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728399353;
	bh=nK7Cs0lBXD8TiksQ+n7j16ZKHL/aUSl5lEshy8Cdf0U=;
	h=To:Subject:From:Date:From;
	b=CWVQGoCaG3Pb6BqTAgcrUQSqSZf8MKF7XVgjOK8bMZAOqsqyN5pwjR1ebuNFFJ59I
	 pDZLO1VrVr82X92iU+GZ+F2z4RpI9XZP3GzexuguLL84LZNiVznwgUBdFpICqM/kSh
	 aMfFsgPSdn9PuwCuZ3e5xuDEeds3N8l//6Z7NPfmvT/B5GpgNEmzignrvFdXR7Yodf
	 b1/lsSeNSnL/kvPIcIidrttngdZelHLsumjZe66GCb0urtDtitbtLJ6B4NqPaOyZyB
	 I1OXpfMmgB3voEXZbfKlDrc/W6CCdwA83Ubp1MNtUmYIUT3pFSMrio1Kr29tc+Q4em
	 3kXzGXuspbq4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98D52CEF172
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172839935361.4819.17960516824643072951.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba0ef2b17a9a0b79d6f6142e2318316c8dd17597edc171bf851701037fe8a863
Date: Tue, 08 Oct 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728399353
