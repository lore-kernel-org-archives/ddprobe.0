Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C4712B9C4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726780554; cv=none; b=q2HbJogvy0o+oPs2U/5iHcP54f/qwlUnS4yyXGhiuPp9mnCQRooOQo7/8uhI2u0ZoWoNGezHbSyMLJnNX4/gN6BpLtbwAivfL68oslaAiqpYY3ZAFPa51ohbpyWHQi21LAoafC5HB67heq2JIPovbPlpvsAGWOfhNkID7aJBljE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726780554; c=relaxed/simple;
	bh=e9aM3Ufo7U6Nt3MZj2cipohCQfFROjZFZUqV6WeHj5o=;
	h=To:Subject:From:Message-Id:Date; b=mXez6YtZOSNXq4A1x7tTli4Iq5gdziO3ile3YKzY/Vp4ftYmvzfF7Ufm+ZLCoezMKi9qm0UAh/FhNQuffJKaPR+xml1a9lSjkCyR3wq7m6NOeBgyOv4WYD2IL5tBYXxAo49WcFdaedv/BI2Cr6YCzqNgBEhSEMgjilw5y76SFAk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ba1vopd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ba1vopd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A564DC4CEC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726780553;
	bh=e9aM3Ufo7U6Nt3MZj2cipohCQfFROjZFZUqV6WeHj5o=;
	h=To:Subject:From:Date:From;
	b=Ba1vopd644in2YNc6GWBjuFnpeguJ1236RoeTOvIaYukXKys/qlUF1q97SjnpxiTo
	 x5SOieWCWB98qzRS+AtnkUY4h7WXSo/ltN7fdqmuW6/UzNd6lx9ady8b7lE7brFywb
	 6LadfV6lPudBjLMknltmI7XvkGZvoh5Y1m7csbfh6t+GcU5lSRM9de8JT06qLbt3ry
	 02ZCw29CIvDtOhnCEcDSr9eat9RzjnAg7PXBvIs85GZARxjTfPlsOIgzyFWZRenfJo
	 BCKabyp79A5VRZD77bSePAMWi98i8wr9ONH9dIYISqEuw7qt5NEndpYZFnEP08Mk0A
	 ooCRoSTBnyL3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9305FCF3971
	for <ddprobe@lists.linux.dev>; Thu, 19 Sep 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172678055359.26475.7435880499410704249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2344113faf1a53f91b7d6ecdb4e862c6ed06d9ecb27cd267d592b14a73cd80d1
Date: Thu, 19 Sep 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726780553
