Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2825EA920
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752493795; cv=none; b=MqrwglaSiA55uIMyXF1Dnu8+aBZoFiOg9Ks1F9iAjccZE42kwPH00QA2w9uAQRJkAqwZPpyCw3g1Lk9yT/a0XSPbdErXqFZY7h+ltKGK8T26zhkEil+CIm1hwAtqt5tKMU8gYyCDMJmNtZlId1wgBpftSt+svs7j/s4cKaLHuZ0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752493795; c=relaxed/simple;
	bh=pOIX5EcV08i40ptXpsEAGoaXBUuN9A/tZUfRu3Kz2gk=;
	h=To:Subject:From:Message-Id:Date; b=IoHSzBopOhpsqluYlEUyK0lYpVo2hvTbHaLqrphoIPfAEYfQ5PK3pptLY2xW9YdovRvWsjnBrI/zd+1ABkZwvgRqO9bUbiOAUHJAz2UkZU6/JWvhdgJyPVgv8SEjUdyx7cTJieL9w1PrxPOAZj0BjWV1vT34VfRAPr7x4DY1DWI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r31Ff5nm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r31Ff5nm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A393FC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752493793;
	bh=pOIX5EcV08i40ptXpsEAGoaXBUuN9A/tZUfRu3Kz2gk=;
	h=To:Subject:From:Date:From;
	b=r31Ff5nmp5RGkm0cDJQT/IH7QVbU6P3rChXiykjglotcOmTofeQzbDHvJidohOT/+
	 z4XjhuglBFXylR8OglMQ71ZQhMeaq6kOkhYDe5vNPLiIy8RJNMZELZTwsEMFJU/3Zl
	 XXSOV52mOr9cQtNTj9l1I5lRqtPv7gqD+SCMimukH9G1rARq22LZoFTahXsl/Sx0Q6
	 FBfLxcMPPTpGwYpStxuRSD9TpoSSe0Kw/075kVt/AeAQrgOJ1W8o7c5BbJxEOnz7dV
	 cECxf4pqxxCs9bYp1l6g2xJwZdaCEzSX8Dor1Ihmb3gyYMPAstE1tq8iE7fScoo69M
	 3Ds0lDQVgsC9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90654C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249379358.6563.2464139179560357532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3d8ccd3bdb36e442d6aa68cc5b4cb82d9533d403efe56bf81a3b4268d1f5e97
Date: Mon, 14 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752493793
