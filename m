Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D0610315D46
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757330393; cv=none; b=jUpB1qihI3tA41M871b6rnLFulU3L7fsfEJZAwL4RuIOL9CXtjomftnqfIs/rx3yGbjI8yVH+U1bJPbuvojkwY6QMakehE2BulfXGTssc+dk2eEfZyHSAQLJ6GTO6aHpZouDUj2ydfj4HP8goDO84UwkxtjxKFMoZDaFvDadcWc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757330393; c=relaxed/simple;
	bh=Glm5rrIMyTCMoxcct/VGDkmBaPdHRmSFXbUIGqa5F88=;
	h=To:Subject:From:Message-Id:Date; b=FaYMhZlwL++kP5o+0WpafLSHjnuQtOVthABRqoVgT1KO1eEarSxgDfLyWIHpNWOzfYRponc0W5LpotXc5BORLaLiuEbffhjkqS79uVrQeDzGCgILKAzd3Na36sb96AdZYaue37LS0j+38nx93khaaN6pgaU9UOngAdQI4zC7Cbg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WCG4A1+v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WCG4A1+v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D2BC4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757330393;
	bh=Glm5rrIMyTCMoxcct/VGDkmBaPdHRmSFXbUIGqa5F88=;
	h=To:Subject:From:Date:From;
	b=WCG4A1+vwElLbGzxicuug+9cNOr66mp2vv2SlJzZmPlDjCb2qu0iBlnl8ZdptOCLx
	 qUwNUzf062A/loWt0jiqSKy5SNamJZLi8wCCEwNWKg35B7V4NNcvq63PMw5tI+3aul
	 H9rDRdxFM5kK8yyM1f3iWgk4Bg2C2ypBVOAG8a0XxSHF8AIgj5NwABU6gjMj5bEJp2
	 XsLuIllosvxyPu2hs6Aa6uHNUl7OocWu+Bl0lfpOfJ+hSEkEHCLJjshA7yOOSXCeoG
	 1GBvY7fFYNcIF2dAysxEmjgNqT85z2YuL/ophdDzTi55rWnZGcsJXNhy3zn7tsqbZJ
	 /dVVuevF4Z6nA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DB0CAC581
	for <ddprobe@lists.linux.dev>; Mon,  8 Sep 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175733039358.21300.2972089002963786268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 872392e01a9e653aea5aa08e3b0315ea34299d47b5ba222abae7d1841dba8897
Date: Mon, 08 Sep 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757330393
