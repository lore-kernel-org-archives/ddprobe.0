Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E1E2313E07
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782551914; cv=none; b=Z4MeELC/FN5MPGLMu+eXpKRq/F5hrF6jcE27PlNMK7Km+9ttp8hCU0ofuMmdFY2T97dTH7RnNex4BQTwrM4z8dvT6MJTEPsB9suhlN49ooNqlVYhGsnRZaXMIUEXGpyoR6G59agEXsQcFegsGG9+7OQC7ELyRf3z+vPlItdpR8g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782551914; c=relaxed/simple;
	bh=TIMdSniIrLdqZ9U+/iA3uuK4v/e2JxcYRaOcS4dsQEU=;
	h=To:Subject:From:Message-Id:Date; b=GmwYK5lMvPT1GlXC8Jc0PKPLQAMuOpjLKMrgvh/LFXNVHYA5ppUbk4Yky+biBzFUYJH6AW2z7VirLiu0HyHIENpHHE8wisnzbUxSm29UqIGnHNQH1z/u5oXj1jWKDebhUZvWbRXvVU68ROEJl0Ae4+xzMQu3oGlfahbZckU4gtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AyZoewJD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AyZoewJD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBAFEC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782551913;
	bh=TIMdSniIrLdqZ9U+/iA3uuK4v/e2JxcYRaOcS4dsQEU=;
	h=To:Subject:From:Date:From;
	b=AyZoewJD9u6fzYa6E9LufB3hK/p0B+VpYesX4xccXLhETxoY2lHenVj37kzv6UWe0
	 d+YKNkdgivvzgb8z7Z/F8V/+eOW2OnXwmxlMgcUqostsaUkjGjeFVmd/R2VZrQQMiN
	 YCXe4ju2w65pR9YztSMaUAdggk2bQ4r5jP33Wk+BVGM6WH/So8jR2L9IKEf9aWphHE
	 igafeD9n2dtHzdCHFbJyEBtZVpHcrFJwOatypGDDFpoDXNH3n6Q+yMfME8ZMbrKVv8
	 /DR5BzmROzopmq6dAx7G6Jto/FXpxg3/JEg24J3bMGMiwaKr/VCnlW5lZzVTI8iVDu
	 kc63c99+rtaog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF62EC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178255191369.24915.17973042445976104591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a3cfacde179bded953b92d565b5aea7ee8a459b69df41afcd76b41fe7463d9a
Date: Sat, 27 Jun 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782551913
