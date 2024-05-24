Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 72EB81292FC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:23:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716539003; cv=none; b=i4U5lpU1a+FCoPQZxHQeWIgSxrvsBysjWBLxf3pH6g5TsGbOgw5YqGdj2X5z7rYjyjwlaeG8Lt67qKEjbvM84FjKvGNjFkDWSm8xgKq73x9JIQLAJBrbWc122eS3UzpStdMcHhQmV1FPfZH3ITr4QPZufCFAah7g57PHJ287wz0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716539003; c=relaxed/simple;
	bh=jRsvGqAwUrUzWhnIPAaYcdG4gIUfkbd9ti3TSXfJOfc=;
	h=To:Subject:From:Message-Id:Date; b=ZXyS8qQbQX/DU/E4f8Pb6edKqrSxLpP1x9djhG1Zc3UKj3bnXpD6hjmLA5Cu3Y8bul93k2m9Hg1kuqaIlOD+DZaQxIXognCIb5rIQsULWDEA6zgPFX7FXgaT5ys3v+XDA7gKFZ25ghWZVStbaeJUyP/XS73hW2Rebg89YMuzTig=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pZ6UuwMV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pZ6UuwMV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6C3C3277B
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716539002;
	bh=jRsvGqAwUrUzWhnIPAaYcdG4gIUfkbd9ti3TSXfJOfc=;
	h=To:Subject:From:Date:From;
	b=pZ6UuwMVxKhIq4CMBbMgr/D5zxeUFAIbe9KrM1ygk5vTNHkJNfqbt0xRaPiyGr8J7
	 d7hvpJbRHNpWL0FUaRj6id2llfxwEVJCq2Kb4IZFVAjo31Cs7dXul5Euq1OCPAU55t
	 DjAGvg0ZrSBBrLfmNmUF4NHYWxmCsX+4u8y+pQQlEuRxUEJxtw7cOXF2fT7xlRVbDN
	 nRucBCv49Sfzwdw1kduPBAHqvNMb3RUP3+yBe8c2S3EhP13FW8+aNuFsaE/n1NHaCq
	 mqYrp3+x+efunQ97pNLlgtkYt3549iAqKPvlLFKtgF34Yk27roD3wEhWfZ2NqSrOoJ
	 NoYkn6xGWVKQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C445AC25B79
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 08:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171653900278.27299.6321272545010481434.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fa2124ede0703affbc51110268e1bf0c9b3f85f66407c40a891c57f9a197dda
Date: Fri, 24 May 2024 08:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716539002
