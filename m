Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 177D172623
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755931794; cv=none; b=CCZBsxW8vdDBofxboWVESqdtEC4zBa/STv3lQuwebc+RNws5EuC74Z++Opy9SUsxuoJCnOn8GE4DDoAdtHttsVMgeMSjHvzQ9+7shiYC1HDkBIqDJPuqwzCq6NSfVF+3LWDfdcDvyR116sCGJFK31f7UsOHUZAudvrYSdGoMRX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755931794; c=relaxed/simple;
	bh=AEnEV5zgTe4EfydiQ3jvB9hR+2taLdggBnM30vPGnR8=;
	h=To:Subject:From:Message-Id:Date; b=TR7le8SSVks8shIcmBd7bWQDlcgOT5JOAvyTE/WD/ONhe7ysPbYd+lfeNas0+D5LQicy8D9U8hg/pRSUo5V8bqCbGnaKDqRnhS6XUuEfwcrdgOpXM2CtMo+7SHvrjfys3dx5BTO3YQjpA9cRNIEHLpMf7MrcPOGBAUQtl80t+3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asVXsxoV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asVXsxoV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3ADCC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755931793;
	bh=AEnEV5zgTe4EfydiQ3jvB9hR+2taLdggBnM30vPGnR8=;
	h=To:Subject:From:Date:From;
	b=asVXsxoVYFCkeamtezxnif8jqXEWoC+dhwj9d7R+5k6TxNJNjgpQFyBvU6QfY+wxK
	 r0X44plQH76qCyhXZi9J0iaNnvIyXo2Y5R2LgH/I7FdV593vvSMnpna3AAIlDGGIth
	 zHEzNQPA3bcCZGA+os50lYYSNCSzFrR4Am5217uB9KLpkkCccV5oXh5OwqMTt7SJq5
	 OleqXvoSdVMBouasJLEzL4GuSH7h68LCtKP1r+drI13xEnAHBDe8PlOSiykWA6jCvE
	 bbg4z+Zw+afr+NlYx6Gx9zwJwxq94TSKdeeCcRErPm2AZ8gGVHKoTH+0X8h1LW1KKB
	 SyHsfTEKA8U/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91A46CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175593179357.25465.16921175526038437895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 615e02d18e20ee264a02eff4bb0532fc4db846a050aceb785ec178052f5922f8
Date: Sat, 23 Aug 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755931793
