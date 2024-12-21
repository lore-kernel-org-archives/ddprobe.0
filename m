Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3931CCA5A
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734776154; cv=none; b=DtWjo2GXLOMCNlXOsWvzyExwGxZFrDXPjdQ/PB5tq47IAAZYIlyg8puld/oCpZSV27KzPi6zJ3JobvH56zAD2LoEfTsHcBtGEu2qmi1WvUyfwyozkOT3tW/zeozTnKi3xnAbDw7EtfOWbwUeULDcEY2vm2aeqjDZizyHkLeD5eE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734776154; c=relaxed/simple;
	bh=sMb03exDC9tZIpGxeg8kcySeHPaNC+8EKM8TKrdRh2o=;
	h=To:Subject:From:Message-Id:Date; b=lz4d+yRuH8qZJU5iNtbJBMzkFQRfEfmrgPhjqYlNC/sPVGMmNjvUwTEjgCamPeGNP/gOJfiahmxairCbTBm6SHUeUwiXU3Ae+9yvhrLyVajmhE/je5XrF7iaNxkKvcS5YYfazxhO5ZUE0YPPUJUGgLLMjB0mGvAIEGrOeFYU6Uc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Mr3V/8sZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Mr3V/8sZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7151C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734776153;
	bh=sMb03exDC9tZIpGxeg8kcySeHPaNC+8EKM8TKrdRh2o=;
	h=To:Subject:From:Date:From;
	b=Mr3V/8sZCO1yHtHymcp3oSo6y5Tu86ITtqJkNgoviYTiNNa/e2Dho6r3TIAsKeavS
	 s2HslZVgQKUiNTwxj4/I9u+7MM6uWKvThTJti7rwX6i6nRktjPWpi7TA8ynhoTtouw
	 nZHqHVdwUv5pvS8BwYs0wrD7NFixyR9E5eCmnU9znUi+ld4bbfdCjdOeeIOZ3cuMyg
	 pMR2cm9WAmb7V/SQCG3IzhDgPuOaC+BBpv2rE/0o/adUU+Pd/S+plT06SGBq7qPi6K
	 bFhOizT7tx14W6mQjSotOejWF9Eudg8XW98N+9bKH7vXtmTPoao0X/Bffyo34qiEit
	 ZpEY7L7r4IcFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D2DBE77184
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173477615361.4630.17616205853603288408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac6b727b0eaf1ab713d96fb01b2543e110367f24c920d205877b6fd27a0bfb56
Date: Sat, 21 Dec 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734776153
