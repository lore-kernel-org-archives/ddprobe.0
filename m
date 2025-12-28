Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 630C627F732
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:23:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766953434; cv=none; b=A99WzWL6v2M9jaxHlJr2nmws6CVz2eKOFKxZ45x2JlDcaevOve1EhCz3aV0F9qagJa3H2L4tb8FgdA6RNoP8qPeSOwccJt2QSFvrmVqOymsUo7SyibRZdYLmn6tSvU8oLqR5zd+aOg25IfJf9zJCRgiyKj5Q1Ndaw5iWeVpEYeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766953434; c=relaxed/simple;
	bh=U9fAqBx+04VBQChjOAWG3hgC/CLAd2Orx1VYQWRDA7E=;
	h=To:Subject:From:Message-Id:Date; b=etBq7jp6BiDQ/BSrSbHXu/IQChdzz4Tdmbp0h5XrgZs5jyPPMmWA6eSzFoCI6EBESRiVdUXdHdS43Ohp5T2neNJpBSNmBPAR9hh+pg7obb6YHoR8K/SeyFBMM0P04O3PKZdkRinN+OqifHfddFEz1E0C17eRZJzEsyzmsUoxEbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DJfbAZ+J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DJfbAZ+J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5267C4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766953433;
	bh=U9fAqBx+04VBQChjOAWG3hgC/CLAd2Orx1VYQWRDA7E=;
	h=To:Subject:From:Date:From;
	b=DJfbAZ+JJcfPzrWhaJXk9QNae4TUHGon6TtZz+9TelAsWnr33yInFGmybfhXeFBmY
	 LIskD8IfwOoDlMvJHSaPi0csqpd66eJ3KgOhcvphr1LworUrabBWiBDx0es74jCttR
	 xxiBE1ryvHVXM0SsGaIK/hVasogTqG7um7IkytVh1mk0jU2t+chexq1szhNomTaf8f
	 q8Dj0J2zG1cBp+8miaoQDFtukNBtcu3bZEPu0AhRnAwsT8SbC27laxToJS6+umWMh4
	 +ZFxJ8Rd++VC7EwiPR3uQ7P8T9xEDRmhJqH2CD1NIrv4ups3clomQjCDo42zcl7Tdg
	 2OkRIPZ+0bHKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5464E784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 20:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176695343362.21993.6905418843013238438.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c19ae750a614243d9fee3fea5a5e6f3c38b098ce93cf832851d8825f0080eb86
Date: Sun, 28 Dec 2025 20:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766953433
