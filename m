Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD3723370C
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747396194; cv=none; b=gj7jBVSQVsdUMbnXmOWzT2tEW/zaKsy/+3EAEtqFGRxCKsH0Yz2WyRp1tmqM7nKD+pDUaMg2LsMYlfyaKC5/zXVQeugbWWMrrX/eT8dUZq6HHqz6POwB+V3GG2cXr0rqUmQh2R3at4ZrdF6t/c8tn7sGmxCoZvZ7wyDHeulbmzE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747396194; c=relaxed/simple;
	bh=Et0h22BU3oNR/PH3y79HdPYGvODFHSj/ktVxUDhDPDU=;
	h=To:Subject:From:Message-Id:Date; b=WTwGNAPKaSpEd9uIR2RmDR33ne2mYud/peL5on763zpdCi055myEZLFk4xtS9fyr6cBmSp/ye8P6c/Bvsr8luqINsk6PBB2glCqhCHc3QokaPYq60JxKDNPRiOwfy8HNozwzv1A6zky/oeybqJ+Op+8Y8cCKyMzt2GojAbniYIc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aaQA2ifm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aaQA2ifm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A128CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747396193;
	bh=Et0h22BU3oNR/PH3y79HdPYGvODFHSj/ktVxUDhDPDU=;
	h=To:Subject:From:Date:From;
	b=aaQA2ifm0ApD7cAtngAAUMVrcqLwM5gzGpLbmOf2fcLaCOMWCITAkfRL/vOSV59rR
	 00OkE84UIZFDdc80CV+/9nan6yvVKzNUOzZxwAQh8KutX5EoF0DklHjft07fzV/t8I
	 9o70WeaVgN2AJOtJCPoz6WEUeD4e5RbNuBQT2j1ZcDEtUmDDYoAyKukMeEmcEjc+IK
	 ekdU+SACG0w53L8zl+V3o6RKiG1Mz74HniG//dBZL88qJMqOMLyaFoDiSQJPisfjAM
	 mjz8QWnUoIYN6io5yJpuPKU50+EMQpQ/+YKUI4Qde/tgsxO3T7sH1X6ua08K1OwxUX
	 JO1gcpR5MBLqA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E70FC3ABD8
	for <ddprobe@lists.linux.dev>; Fri, 16 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174739619357.2908.2619046307227838189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 017acd5fedccf7375df1b8e33e3996921deeaa6e2965a706488d82ca59e5935a
Date: Fri, 16 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747396193
