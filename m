Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B7A1F3FEC
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758291594; cv=none; b=IZeuE8s6vWk9y6YeFj8sUiU2Fr2jUSiG17DPUIuw4xhI7OWlmyap6atvWWJaiJmu36DzCW3llJkT+o34YTkqj92TQhri74GrGVF7dD+uNMULNBu2gICrvBHARxX7c442S3s3AKOdKS1xPTkNneYsTdRsq+X3EnuGr8soiPHRuoQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758291594; c=relaxed/simple;
	bh=wYwT23lPkRqF530sVZEGlTTs6dsjBpyrh6rxKDjO42Q=;
	h=To:Subject:From:Message-Id:Date; b=qkrmduftyvgr0CgrUbUtVouRse2q3IssSFq5UzZRB3hPU/5NfOjFE4Gvs0GTkQMuCjM5sR29g6kM2AtlJZjK6Z19dj9ulYoxagbY1246M9e+EejnhztqPHdrFn/r+17xLVTUvyZBRguL2MB5iBdAZ+wCnTB9/VoEFtbOsUtesD8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hKzhJ/kx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hKzhJ/kx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A493FC4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758291593;
	bh=wYwT23lPkRqF530sVZEGlTTs6dsjBpyrh6rxKDjO42Q=;
	h=To:Subject:From:Date:From;
	b=hKzhJ/kx6Jn6TCK0QnEj15hANqjV9McwzQ1epkbuOhxEqgskzOuz/SnokkyyUu+X/
	 ucFQr7Knhhu0/zeJ0LyDc3APTKxagONh11huwa+YOvbXzB9SuTv7ZlVLU5TugEc3zi
	 vbupTqhb4XvE1sZufFYpH5Il+rr4U46vVZEi8XQl4jwodGeXj2Nk8nBrXzf3qTPGZ2
	 K4FFLNh0X/JJfEAAWttXe8wHT1ucGSwU05czkdih1mqaAmp6A2DIQxVs4HUcjUv7vY
	 RKeOsU2lvmfDFIlVvoZin/dp6LNHRIQ27oxMlsjYvFlp32ANdne21H3mJUi8C48xAT
	 POubXr9Xwuorg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923B2CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175829159357.7124.5978655254326483177.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4096909fa249118915042de3f948a54487c867ab2cd4c0dbeba3d54bbe420962
Date: Fri, 19 Sep 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758291593
