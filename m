Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3018919E7D0
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728556554; cv=none; b=ujNhWCNQveoVvS2OfVrvUR+CFNlz3Nta/BBbjmQlWjWur52jVeRioTFWVXYx7qlHSj4bRqWUmC3ik1fnZuqCMC8M6iLZPuyx+OEz38Ldogj6nO8xFPcWPkhTIbtqJG7SipAsHIJvUdW9pPcECllfIC4AJHdyRoGgUS28npEil3E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728556554; c=relaxed/simple;
	bh=divAiEbAwJN2pVcA7MP8iY//qJilufkLrXDeGQ+Sohs=;
	h=To:Subject:From:Message-Id:Date; b=Q0CZ+DhjEzZCbgb7SfcWQv+AHmTERFUu+53J2KR5nIsKeIu+VDIGQtS5UBS9sVpU1Vep7QypFUF9rpSNxxU8fg5upqGUCYLrtmUzA5lkA4GrO4joCpOmmDqlHoW7XXfm/9WdfGz30trY7jmLZFI4yrzAiRgHjw8Jx+ORBDJSSaw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Go/Yw/yh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Go/Yw/yh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A303DC4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728556553;
	bh=divAiEbAwJN2pVcA7MP8iY//qJilufkLrXDeGQ+Sohs=;
	h=To:Subject:From:Date:From;
	b=Go/Yw/yhflNL8D1KWyGcKfIdQWYzWizEPMmD+5ZWUO8qvdZBQUlKab/NzAO9x3kuI
	 QykUxVTyw3o1PrWYLvTe34iNOfM/b6Rjpc5j1E1qHpqidO4OSbtByRPoeLBL4nJ8gT
	 +iu/jGHYfIuvigqbK4egy0Vp24qiTqoYn6dN/exku/6UB7wM7CtOcXabJ/C/7yqG5h
	 U4GAFWrdpab4WcSWg2DL+W5h3v/+Xp/gcRBTlZQP3ig4O1aG3U4AgB80Rz8KbR5kye
	 Ju86PytsqAjFKuNZkLdG6n6cipDjMFp99fSNUOm/0yITysaGLjDUVOsfshYZBOHKKP
	 oN4j7RCwwmhvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91364CF11C6
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172855655358.11474.3066112345025040221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8882f1e03ea2aa510c7ec3cf25da6ac606be2440e8b16f45d94545512517b251
Date: Thu, 10 Oct 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728556553
