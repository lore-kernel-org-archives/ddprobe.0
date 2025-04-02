Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CDA1E4A4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743635995; cv=none; b=bG/yQYslJ0Ln5Qeol6ar9XRTIyYjlqHNt+7zn8QzecllxX1ll+vEp9xCqJ2otEFPqKcyKBpQTdPg2HQ8UEx6itsvmy2ve0jv44/QYlFsf3vS0UfNcf08hjhjQWOdaU/f6wXyPWnbFESImYv1Csa7SFqsbPPfAiBdpI9Ec8sEsY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743635995; c=relaxed/simple;
	bh=L/vElrFXjVhsYNiPGilGo0MMVuaaNDrX51sKjA8OKLU=;
	h=To:Subject:From:Message-Id:Date; b=k+coFv5dmux37Q0/HpNxJDVpRVnjmIy6VMzpq2V4YlBglrsN+mjrtnMXr3I4Qnj7vb2ganNyS9ZorqKrO9oGfBCMqmBEzIpTzrSNJugFgf1Lewi2AwneRBarUQzR65XihrkJv68kcu2c8/DRpsgJ0SiHxW96gNhFuBCbZhW8JpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=apVnkgEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="apVnkgEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD106C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743635993;
	bh=L/vElrFXjVhsYNiPGilGo0MMVuaaNDrX51sKjA8OKLU=;
	h=To:Subject:From:Date:From;
	b=apVnkgEHRI43gVBvH0HBp1cWySAUvWV9CB+33V/Z8vVuOoGZV/L3fv7p7i5zWFN+r
	 QTLWLj0VdMPeLOnl+PCtjszFf4Q0VYEs3OJdeJWx/ZaXSXr8dhklWRFCVRJYN6a58x
	 1oAB6fcQMNSQ1CeXtKPXjxNo3gihvOVFb508JA4ZQ/K4fOIkpO1f8lHxwdV2yuX7zv
	 VdqCF606ylnZsziJgiE+M28gnbp4YzYiRqTHQ4LoswjJQ4AYWfMdTwUE8rKuKqLPXC
	 gfG6oT5+SMcYwM5sFIAQCPkO2OQUyPC7/1kUdsU1ByYEIqyIxGXAKmG9Df6x8FnmFs
	 xgaX8Tvj8MgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97C1BC36018
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174363599360.30836.5176192820651229913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42c45c73978d690f826b3fc90126ce7b588500dd17ce80f9844456aa9c1d4bfd
Date: Wed, 02 Apr 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743635993
