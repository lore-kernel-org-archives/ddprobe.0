Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F3C513B293
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767827034; cv=none; b=EFjQm00G1zbZTvV/CUgOTFzv3H75y9FVbLnw3Sh5peH/iiYe/IEowdJClYOaFfSW6dyIcUkwRi8F1zZzgHCPcHDUdDPaNxr5OmbsuVKAzopF5fYI5l0XLrqpiZqPMbISKkbwOH/ZPsVMm7xfH64KY322T8hLCjkSnDlasI1ta3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767827034; c=relaxed/simple;
	bh=bFYOkJm8tc9VCrIm5dsuBLMezYjV4xKrXVtGhAgSFvs=;
	h=To:Subject:From:Message-Id:Date; b=nzi5VP/TGa3hT6d8IyqrnAun/VRI9pGnJWkGugsm/RaH0MvfOcwwjEqjLSkMOmoguSCxV8PVV+yibHiItK8sfi8EBmiL4QGPFr+sHYFTwg81y10UHumUr8bKt81eQK/wE/j25BR8rpL6hbvQI8Y9gRPaC6TV3QWauH9jbblR++g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GK1T3Q4O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GK1T3Q4O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AF0C4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767827033;
	bh=bFYOkJm8tc9VCrIm5dsuBLMezYjV4xKrXVtGhAgSFvs=;
	h=To:Subject:From:Date:From;
	b=GK1T3Q4O7dn0flUThmdWZJ65a0wJ5WSPdKaD3TczqjFUu2NbKepQdfh3py0qHEJ4K
	 eoV6BiY7Z3trrr8cNxeLn1hett4qCovu8TZxHzEo0cUpNWuNeL4x+PRdiRphKvFtj2
	 rPqrbKWepNW1Z6zDeV+llEPTRcz0jVpEOXA/AdWFUvN+xUuywAKtsPS4oct4MW7opk
	 QQkG+yA5+Cduyw+9bF1ACoG/eA6m60MN+oPykaeEmG/STLRogWV9lExSv/n0IBPAzI
	 9JVeJQIlmjt3iWF/rkiWkmcJ5ms8rVEdI7pXfb4CctbJNO85aoGVEVxj8EEYquC58f
	 SNY5owzewRqMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9436CD0D16D
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176782703357.30970.13163514794174423954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef673428bfbb233645d112141f898a01c4cb667f76bb3083b084b5f3300e6682
Date: Wed, 07 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767827033
