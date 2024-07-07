Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E9E8210E7
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:56:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720360583; cv=none; b=q3pe/flGNOlb3gCKYfsA6KZIxRbDeVQzjNXZNpEkHulPgzocdSoAjtqAEtTExWM0ovZxLF7G5V5Kzz7vLm29Ge65dPndjkUM98ZJVLFateMJFaK0ru+FOzqv1WBcYk6/UF2px1O6q51GGocH7b9N80OGZxlESjLr/KDFdeuxD7k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720360583; c=relaxed/simple;
	bh=L4kWI5NSewda6Xp/P/Fg1KO8GLh9qWeXTP/raBrSWhI=;
	h=To:Subject:From:Message-Id:Date; b=jdYuS6cuYoypio/Mev06MhHyoDK/3GtCQgJ168BVtNJAUZEcu9BsoNKaD+Ll9nVeOSaDF9XoCfhMRH8fAIEFOwkSnbOAesadcGHwPJIWt3xLzEPNt5EJx9cnG32mRRkOeHbb8lc9ANEY1dI0+2num+zFPqDSBSzFefWV+5zq/Z8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RGrHaNvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RGrHaNvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7111C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720360582;
	bh=L4kWI5NSewda6Xp/P/Fg1KO8GLh9qWeXTP/raBrSWhI=;
	h=To:Subject:From:Date:From;
	b=RGrHaNvH4c/K7JNUfOPwpr5EkRGGKRsfv91WY2y4sq/aG24nYBioGGIKTuBCVv8k/
	 QrTtaL7Q4Oj2BC+YCZ9WoKfcRYxcO0KGE4+N/ilLS0sGBan9bAyfpt5k1vfNf6N6sL
	 XSugBU1dTpcy6ROk8nQl5iJwXlkX8u3B+SfNIqmHoGlJhMQnFq48eagLJ26Rn6OnIW
	 +jY8Jdm2OcaLnTXjI65nfZV3IkcWb+iNaBHI3sG6SpJBzRo8tAOc5UHcinCbOTR6Om
	 rXjyqRvIfhetTpIuUbqQ7w9WrCqlxgbJF0BF1f792Tkh/wnNCQz3oYXsJU1xHiayvz
	 2fqzBMO+fEd4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C52DDC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 13:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172036058277.30327.4885559201120906084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 22f3d2956e1e5f9ce622516b3a310588e21520e7739c9f9f4c179fa81bf75ece
Date: Sun, 07 Jul 2024 13:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720360582
