Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFCC30E85D
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750369794; cv=none; b=QRSzCIZOHqcHAfqCbKhpQG5TVBLopzjs2S9VITmLAy4HK32tg11qTTZKjg5lrehwgYLM5oEwm6EbVVDwyXWhSxc8q64tmepTL1mTA7g3f4D8EM1aTOvH//rIo1VWTmqw8B/lMTh51ystq1hd2P3x9RdysqfG0d1vImiSLqv+tLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750369794; c=relaxed/simple;
	bh=NQCJpDJhAa+ihHniDXubL/36x3767fWuzpq1xJGTl1A=;
	h=To:Subject:From:Message-Id:Date; b=ht/97+nHLiFCByAzfVH3dQXALGgNbGPPwvHfd6rNAJ7JtEFFfnXUU6hFw/8HjzF8I8FNltSHqv+RprcpyuzASWJCMywI3AB8Z77h3clhuu+x94kPBZFxjgIprFGoP9AQVnWPP0b6hfn4KQSVSEg85rH3ErqA2dvNkYKASemXToE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QAC6YiSG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QAC6YiSG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F74C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750369793;
	bh=NQCJpDJhAa+ihHniDXubL/36x3767fWuzpq1xJGTl1A=;
	h=To:Subject:From:Date:From;
	b=QAC6YiSG1xJknHA5eNjv5xoHhAKzhAtDoC9QVklWeajAb2944PP6D6k4mQIoHWva5
	 UGi37y9/uxl09Ei1mGg/QKKeXQknX5wjX3aGf7UZzl/bE+LQC10uUsXRQc/hBa5Pyu
	 ChXXi661K0O8TNZ9cO4O31bQKR57ke2ItMvkVYJ5BcWQa+Nli7R0O4jjJhlP8fi80Y
	 NbgdyfrzrSAqN6UxHX7H6Mm+m76Jm55AVaQ1J3dMDDM8BGW1mgWyhCrKSat69LSfUU
	 GTJmsPGKDI0GEDpjFi6n/2KsntIDvwvvmCESXOnvlTnSW0q/EuDf98/4pnhHDfCGS6
	 diXYZbv8DtcqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9216AC7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 21:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175036979357.12636.15414894321093737708.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a829890eb0fb63b48d7a379b0531da48177c1e7e28e805fe3ea45c81259c8ef8
Date: Thu, 19 Jun 2025 21:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750369793
