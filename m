Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 198493085D7
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750321794; cv=none; b=OWJQxwuLAHihNEkcQ75HvMiuPWFr7XHQ6SitaovtCDdbVTE3IV8VSC3EKzAeP9HHBYOJlsK+naUT+dgHa3xFxvnfR4z7SO9vALdVCCDk2rAz3qhsC+R/lpO9Rx7jTM9JzctwaFyQj2lEYjcmbDHYSclk9LPboveRpoOlrQ315QA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750321794; c=relaxed/simple;
	bh=Ws8DA36Bnnlsu4eXfg7D/meo+paqq0tPE8LwsOjIIXw=;
	h=To:Subject:From:Message-Id:Date; b=OqtKZe5MvXywDY/5RbwKfHAWR9oeGXET+h9yZmCG8jaz8J/hkHpHjZ4JRxYVvfztqUMfnf8bX9Wlj6Dl2MCf0cEcKBH/KTcUlEGgQX0hxCDjryTcnhP/eO6O7MhouO0bWuqV/i4i++h+nbFeMnkMuGESudQExE/k76Q+p4cYEyk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rCdWcxTM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rCdWcxTM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4156C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750321793;
	bh=Ws8DA36Bnnlsu4eXfg7D/meo+paqq0tPE8LwsOjIIXw=;
	h=To:Subject:From:Date:From;
	b=rCdWcxTMcFCVDm0fhDP2AGlk4an2DjY2qc4wxipngVCc92sKEucSVUNxx++vxuchE
	 s8GN68N1J1rqe+bsd2X9scP9uCeecNgIX+v/vNsa8MgZAA4sIQX9xEi4fOXaCxEWno
	 B5iDcchVjB9Y4u6ETXyIGLHM/OU0tfetjAOzGySuCnjCEm4dovJptnCdrw0Qe/6GZJ
	 iE/AKWDGnm0dfdDwx7ZFHCsip83exSilUYlYA3AMxIVsuZhUf4OcTCA2DyUTdd4h7l
	 PBkw+dxzAHJ5F+vAoUEQclxe+9iDQKLjYE0gHhhUs0A/kyJF5e4u/D71ziQNOZ3SLc
	 OYVx/XUegUeTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90156C7115B
	for <ddprobe@lists.linux.dev>; Thu, 19 Jun 2025 08:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175032179358.14754.13066258811565038579.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8258eacf46e4e023e325f644e17efff3f8f4e4ac3edb98bed7cca4c3742cfd9a
Date: Thu, 19 Jun 2025 08:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750321793
