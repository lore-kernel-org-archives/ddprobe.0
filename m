Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B0166FC3
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761301794; cv=none; b=AH9PEEAOBm5TWzJP6B8PhK8vAaZ2ajSE1watHlLehIPy95cD0T7C4rn9XLLk7NVYG6b3VhBZoCgOMoENUxeuuyYHfbuz2Py/Kuc2Tl1Ddco3KV2tdqySU1DnVAaNTILC97VwFSIkD/pjJ6dPNgxUXSF3yZj5GKpqlXzLqU1qVHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761301794; c=relaxed/simple;
	bh=iJ+TUkGnmUcahhbH3ynZQS+GCyl7USNBrz800HL7w4U=;
	h=To:Subject:From:Message-Id:Date; b=E/pmaGR3cG1BczI50CNoFofVn8BX2dwgHGgp+CK/791SXlvNCNaFGACKT4nwR4Y3RZYhoDArw91Qgh1KdITPqYmX/K9T5hDCLYVdllKJnOyDE8WbYtsKwnhiXLIKFar+X/M8F4+laW1W7QUoGgHnbdt5kC3TGsMZIX6rIfss8zw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u7JebFZl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u7JebFZl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CBBC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761301793;
	bh=iJ+TUkGnmUcahhbH3ynZQS+GCyl7USNBrz800HL7w4U=;
	h=To:Subject:From:Date:From;
	b=u7JebFZlXzhQ1Yf3ZjvmsyG+mI+fuw4mnK1NWoZSbFxqa4xj+DCsk00QCRtyGv9WG
	 WbPjx1TSrADF3lbaU1SlwpMlEcqAnRmVK4fyjKmUH3Qt3veWeiEWe1TAif4eRtt+T0
	 HhuXQkPzltWvNr1glMon2E5DkoQtB2rfCECMVRnYyay1mUzWBWTZQA+SQHDmVRm7vO
	 LvDtu8kNH7utxGLCBsvelEXaJ5w6n0fqe98ziakRFD3Ig6cC+gz/jcsuSjiD52mWiA
	 9m5kN/uvQ/kE/SWf4xK6rtKyUzh3Kc8wIP/M3mz08YU6LU+1YeoCNvgRH/vxwiHYnR
	 JOM4BHs54JMOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933C5CCD1AB
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176130179359.28763.18036598807921171584.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f6500a463b6eef224cd6ce77b373911a1b29dc547415f8e8983f9969b644600
Date: Fri, 24 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761301793
