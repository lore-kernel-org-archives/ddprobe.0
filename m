Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F960231A21
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760034594; cv=none; b=KkdPJ1M1svX1Cbsd3AC3CzPPicAPUQPNFFAKudhtTe7NmAOKX342Uwq7FVyxTewx79m7cq1yQHHjlZiwCBeO4IQhFLShKNZkYfauSkoW/a46LofLmASoNrMbUVlFrwPzLe5tzVB6F54hhVRQZrZYHT3/mgfNuoA9WONZOwnl40E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760034594; c=relaxed/simple;
	bh=DKRjVt4WVeqr7hIgzjYL5EyMRoywzPIf1/Ro97VBQDc=;
	h=To:Subject:From:Message-Id:Date; b=VnU6KB//evjLf6Lwpc9fUvZHNK1j2XcgbHuhCH/bEDPcV24gL4r6Hwyo4VRb+qhF3bscEWMVB53I1aIyb9jZxxsZtGGiBwAIRLQ/LOneZMPExN9TffbajTSXz7H5uratugtN77wMXBbkPVKy0DWTzjvCo3QCOgbjK5I4ExRLXHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BG+L5Wsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BG+L5Wsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7FA0C4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760034593;
	bh=DKRjVt4WVeqr7hIgzjYL5EyMRoywzPIf1/Ro97VBQDc=;
	h=To:Subject:From:Date:From;
	b=BG+L5WsuEu2eUCrrL5uJnvHcIlpXbFvXgvBU8Jxcqa0vSC1EmNhFuD+TdwGdfQgiJ
	 hb7czhOsROggxzeJp/oilxcottMMKLdxisN4bjkrodS896MTajHx9h4GNJxyJ5fsLP
	 pxb/7vcan1LegDekUX2ZZyis3dhYpKWHg88c/DJprZfGGvKiA0OFWBG/NWX8rRHh3j
	 StJ42wEEpeVBurqu1CHMBIfQ6i9rIq66VyssN156yG2/Ic2Wn6zVv/2DmjWk85RZNI
	 RdsAk7bwPOcYLrwSurkaRKTLh7xvHkU8tpcPehbSm8uGMWR2GPCy6JZMbwUXhunyWp
	 gOJji1HC1WJ3A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2269CCD183
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176003459365.3961.11681471963575394297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97afca417b566bce1f41f1bd0c48a0952d298785c4bfe9da806374eb94e9c3a
Date: Thu, 09 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760034593
