Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EACE73451CF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773738294; cv=none; b=ZjPXVALlpYsvCXcnq0A1KsawcCyEW1qs1Q4oVToWjt/St/zXu/t1z6CzsfQ2Vh8nkdN4/961qETmHZiJw/Pge4mbckFSpinuxSGKap7V+iVGNPMitJGImZgQxGvM3s2iH0gZW0rgLt2Z/ldRtvujZf0iofRhRTy6SDKq7nqFveU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773738294; c=relaxed/simple;
	bh=wpODQnbsvmIjq3eOa4Yt/BtSmdGf01kEqwVioByW7V0=;
	h=To:Subject:From:Message-Id:Date; b=sp6pL4GkSYzDkAmEV+1jpXKId+haR+iaACqwXd23c73jlNUkzSd/dxBVkZwPmzMfCIoY1Bj9wKzyFfvqLcCK5xa9jezGR2bLuCm9FXHdEnjStTQTXIATcWcTfbSG52gcre6tZ+z2JFVLinukDd+WATFIAUUsPgVLCAehiuOnhDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I1KjN6wV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I1KjN6wV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CFB4C2BC9E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773738293;
	bh=wpODQnbsvmIjq3eOa4Yt/BtSmdGf01kEqwVioByW7V0=;
	h=To:Subject:From:Date:From;
	b=I1KjN6wV/srcB0Ytx3Vv/LdcOrHB2it8sOYAeYYv8vK5IboftMSTkWYd9L6ca0Y5V
	 rjqbdCbHdKM+4IXq6PkyDSE+Ftoyok08vVE6G0y348LDqvnMirzqkVeFyeqqnmUn59
	 XXf5BU+W94iEMLTBHIT9Nkwp5jY6Kedn/19PP9b3bTc48H0sJbRWbbAa2rxYLfrOgN
	 LVLzfmkQgvthfrV/EbsqtrylRf8d9k0AokL3zsC2J9N7z+Ytjgif9CkFCFI1iue+ku
	 Yy/9SNHbOIa+T24oT3W/Fs4s9htrS4RREmD8CnGqHO1XIHRr4jQOfMqMuZOQS4hQzo
	 iQJ04hKl2WRtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F796F3381E
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373829357.6787.12165823619397195999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 130fe32989135b53c1d017d8e2db41c59f8b2abdd906af65253993f3fe3536a1
Date: Tue, 17 Mar 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773738293
