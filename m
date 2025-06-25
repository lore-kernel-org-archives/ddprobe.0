Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 365EA25B30F
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750851594; cv=none; b=gros/N/z+nHaQyh4tywdV0XNi+UTP18h5uHAiHoDt5OnN9ifH9XqV8RWng9NqKWur/Abg/LHEwYPn8J3b7dzd8EaCWDa34mMd26nVPFNMAt5MUMMDwkeI3yPEAUIlWy7SXFL1DYZIi1VXF/WHc5adXR4/PO5xoHORwRe9VmuQ2E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750851594; c=relaxed/simple;
	bh=GnbfzNRHg5yJcqeG4PjeTf3cM+aEsyCRaxiA74ZZRM4=;
	h=To:Subject:From:Message-Id:Date; b=h76R+YfUtteXy9G9hVo4mZaSlH4DKWQnejA65uOa90/5vRToUM7qxMxvr5AvWyYjHA1BWY3Y4A2FYA7NDY/Pr4FlnWd2zbEWjbH2VTpvmFMJUzh6nnxJQdJpYXRs7yennU4LEZQXj3Uzo3sYbaAlh7f3oSEEmx9z5SFJdXBpe9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W0lUGk0C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W0lUGk0C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE89C4CEEE
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750851593;
	bh=GnbfzNRHg5yJcqeG4PjeTf3cM+aEsyCRaxiA74ZZRM4=;
	h=To:Subject:From:Date:From;
	b=W0lUGk0COIA6XfzYqUOKkW3oPv934X4j0Aa05iwaIUXIXOWyXpopr6YUmy+S3TsbW
	 5TjoqDWlcowbscmgQ75z4oEAIC53zWbLmL1tCyT0CbQ7W9vj9iCaFiZPtCn3qfXr77
	 nMxUJnqsEtTYtNEkUex55Jag7AMf7E+TXWSps5tsW7ETf01vFtdzcIdIEt9plLwqs2
	 NU9PSenaVKrfeRmTkXExbMF6Cj0aTdkT7oC2DUJ0fbgISR01eopNHO4bangKi2Uz8Q
	 tZphdmarYqQ5ztPu0jGYmissts4hgT+/jmg8m3dbReb2tqJoyb/N0VQ4GbdUJ3ViU9
	 nmXPYNT+gjFNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFF6C7EE30
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175085159357.32188.4812107737174215537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6adebcf7bcdacecbc661e0393c48da15a8c50be2c084e908892b31aa79d94f25
Date: Wed, 25 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750851593
