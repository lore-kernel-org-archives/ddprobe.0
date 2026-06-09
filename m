Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F9002E091E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780995874; cv=none; b=hbydc3EHK4xVQgJjIiGBM7YlIGY1Pb6FwpcXsVWUZEt6Vm2rOo5bJ+q3TeNTSGSGX/qFcMpDxgGJfQIr1LHLHKkPbvKBW8ymwrsOlymxqi5jmZxpakLl42fR5TXbGBplIYExxIB6hBfJsQjT73DqxcaqEYVPsZRt07mcPdDEInk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780995874; c=relaxed/simple;
	bh=462Sf4627cRnEjDW7feLH2hDemUYPoiKpP5LO18rnv4=;
	h=To:Subject:From:Message-Id:Date; b=OXQFHW+amdhAGDZinML0GY5NAk4VsGbUSaI4mxHGQjLfCxzx0uBnKpQKYlpYl32ban+S31e7N29E4poy+IcRpTp3BGHzzQlFXKOD0RcbRMin31WwyGR3OgGOe8nus1wCMDBYa3GGBbJDkmfMBF/Q50XG+U2XvCgiDC3eMSLVTcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vNpKh8ST; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vNpKh8ST"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9704C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780995873;
	bh=462Sf4627cRnEjDW7feLH2hDemUYPoiKpP5LO18rnv4=;
	h=To:Subject:From:Date:From;
	b=vNpKh8STzYa0QoFug6rTRXCi1Le7tmOxVQstUmzALLPFrmQDpI3Rbd5FlEUTkyu0L
	 YL+SApm/Sg/Z90q8kfUxYCm5diTEZb72O9u+y4n+FtVoNTmSh1FpgKAe02nlYOyYlq
	 ZwsnfQ/1FgqwEKKBC2bBq5900YFNomfePnanR701EN6wxc4TA3QAkQPey0lGhPzv22
	 7vSejtHDEkEsaptQPTa+vB74YvSnPqJftmG1davpInLNwrrGIJS8ITX5F7uZ1/SbVR
	 lZdqCgzJgs022eEpGzsZKzcCIMCJyaTTQCSW7UdJEW7xoMfRg0WlUlbNRoHSmcOAvh
	 kmkPX72qtdoyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B939DCD6E79
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 09:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178099587374.12381.8792599351101610230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbd356d0d06dcb9501a4f0013c63f6cb35f21c128b93b7322765ac0c4ddb5f6b
Date: Tue, 09 Jun 2026 09:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780995873
