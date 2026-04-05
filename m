Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DCC940DFB2
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775378734; cv=none; b=ZDPpq5zGJQaPeEb3IeeXWSMwvRPxqUPfGxANaz/c4WOUkBBIERCpRUS7V9DOOXM9EIRYHd1OiS6cyGcSGIdGFkzipkAg2VOvRYmlhTE5mSAN0NNO2AaigNRvCGoA5RNOTh1P3aOKsAdrshmnoOvfjfgy2neMb1ZyFBsRCGaH3xE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775378734; c=relaxed/simple;
	bh=Yxmmp+S3sYEqgvRuljYTMaodqh/QR+M8LQ8dccZpZUk=;
	h=To:Subject:From:Message-Id:Date; b=vDTjyflVfzahlVDzRKQS3oIav2QkBhc3NjzMQXXdKLgJtm0/qtP3UFSRnLzXZtXvTvecqgJqTKM4clzXl8juQehuAeUdfeugs7TXVHgv/DzUmIqF9WOP6PfNCZlombx7pw9XQDxdR7ldqCQjLDq4YyYpk1Tbzm943an7HhAsmVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RIlZCL+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RIlZCL+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE6E9C116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775378733;
	bh=Yxmmp+S3sYEqgvRuljYTMaodqh/QR+M8LQ8dccZpZUk=;
	h=To:Subject:From:Date:From;
	b=RIlZCL+vpk8PIcovf7F/+b8IrZV1bBau8jEbUZXoSomA0Fnt6KHRsMq9hkhLvKa6Z
	 mpzWSE4/F7YfvpgZndZCzofPlSuMd+NDMihmrdK+dgM5PdR375VH/bWPoCVrtQRhcS
	 Ku2KYXAPrZmIVz+uGdat78ktfog1kD02zpVNjQhyfJtAPA6a/mxpQLpq5bz8r1kJAI
	 RrCWE4/gHmtaNi/rDVrjQcC93YikaAVskYLXw/g+zdNYVT+eb/s2bYwKV5uGkDmVXS
	 TCOy8ekxSBn/9HaM4+vCamZ9uIMCvB8dWm9EhV+SxvjvloVf3FF3ViwdEnp7KW4KxB
	 BrEvj7AGgg37A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B785EE64002
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 08:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177537873370.10860.6740016988526056183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73be7d47de7bd1f418f8a46ccb32e758473badc2f2e4ea000e06c8703330e2a6
Date: Sun, 05 Apr 2026 08:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775378733
