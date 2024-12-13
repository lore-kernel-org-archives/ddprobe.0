Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EAD18C01E
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734081354; cv=none; b=kg/vnYKszakWlFEOi4hJvZp5KllL/11TLesIEpVVOgrZRVMpgwJcADNuQ6xPIhEiDdEr1L1+rddkClXgvPjvb+WF1eW2pliErNc/jw4+vWRBjceY8VZ04BolNYTxN8ZpuxvWUSRPSkSsNO2nlrKYMhQDUK9oSTAkVazWMTNXNr0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734081354; c=relaxed/simple;
	bh=04MVTLBhcF6qV1lnk2udHtDroefT3pjcJFHSToAIvZo=;
	h=To:Subject:From:Message-Id:Date; b=FaAbDMZ9ylGdAL/oJJign310MFYhJInF4mlvW4h03frjx+9IAsc5jLmBL5uIaOmmbaYlsyItnw2uwX4e1cnUWtTKJWBTm7nFAf7qWi3bly3N3lG1rGHacPy8BhVMZfOy4MlSM/wGMHKNzLQG80weWzuhgmPaaBjkaFmSMoyPE1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I0y55IWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I0y55IWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B159AC4CED0
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734081353;
	bh=04MVTLBhcF6qV1lnk2udHtDroefT3pjcJFHSToAIvZo=;
	h=To:Subject:From:Date:From;
	b=I0y55IWYPkVJh3wj4LjI129ohrAc6sEyvNuulMFmVKZ5mwRUuO3Do5H2PpasJPi40
	 Nj316T+3IK1HbCCADY2NRrm07BcMGs6Debl9tDP1OldkftrGjkfbyVWzdgoCUEavTS
	 LSQs9ogtBH0epHdNIvJ7uFJs/Kl322joRGJ5WbdCZmLdIhCGXbBsiGlJJgNivDnF8f
	 H7lj6wDBpb2VWvRi/mbfTF96ZJHvjz/JUtyEAM6j8nlokf7T7DLJv2BnepyqX+1ndx
	 wGCPFAgbt1o52fLnoA48fcF38AnLoiPk1Jesk2OgaA+L115QE1ZDpsrv8FCmeZ707X
	 K2SSCisQYDSFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 979E9E7717D
	for <ddprobe@lists.linux.dev>; Fri, 13 Dec 2024 09:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173408135361.2718.5892037401168882459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac181c6c898cf2f1eff0da4f38c2065edae48095e217cf275f81bf425abb6346
Date: Fri, 13 Dec 2024 09:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734081353
