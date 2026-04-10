Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6FF26C3BD
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775795254; cv=none; b=OA9DyP17KCvkQEZCyPIrUX+NXON7wENHqREX2BPbGNv+0Fv8dHdqWDpfXsjeSAI/YbmeRRl6Px6YeSecJPUbRdAlDjLpiwtcIHru4wSK2m0pDFqrZli2zB4oCo0NJ0wPWZdRBbkW5gQVJT1jp4cCXW2Y6uLObMEsDZUSuCz6R2Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775795254; c=relaxed/simple;
	bh=t+m30bnkDBSBmF3Kbg5SoZDcBUmkfWyMs90lRX00NNw=;
	h=To:Subject:From:Message-Id:Date; b=iEfCxd9M2El3xSY+y5aTVTYyW2EyIaj9VWWiprrT+utOljFdys1lvcOgLjXn5QbUBTDL/3q4/MD+iH6Ju5WCtmi2GEuCvefeO2LXl/uaT7Z0e6VdLVKhfyzraeh/2Fyh2LERNH82/34g25OSct8bZJeaMHZPY8bAHVwlCyx6bmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RRQOWShw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RRQOWShw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE4A2C19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775795253;
	bh=t+m30bnkDBSBmF3Kbg5SoZDcBUmkfWyMs90lRX00NNw=;
	h=To:Subject:From:Date:From;
	b=RRQOWShw2YM+GSiW4sTZtuuD49H6sJCTTPm1sHufy4fULwKqna0KsA7wh8E0Aem4R
	 J+vUDT6eK6O5+8jQnzZ8doDY/G+2SkHl0KQXsnVEFP9M80GLimK/B/2ioU56ou8S5Y
	 TcVl9F3OpcXsRhknQkGCTRgRl7LFs2ST/WkBo1ENeNCECWywhN78m33DFDNtkli4rX
	 vF7BJ3HBsrbhG1rLh7s+tjzKw9dgOhJbRwgQnsBi5hFYmG25TITNyaQdl54Ewfbm0I
	 Ptg02nmS7ctgfHmvrBCQo7Vz6hk0k8Y/5PwV4IeX4412qHh7rDY+X2sBZLV34v1gCE
	 RKCIvyvqVw+og==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2A4F36BA9
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579525369.15633.639750391032264766.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 365025de14a3a2d2ef10044d74e13bd3c24eb2828cf806fdf63b74b91b281daf
Date: Fri, 10 Apr 2026 04:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775795253
