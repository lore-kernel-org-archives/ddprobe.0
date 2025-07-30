Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 116DA28750A
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753871396; cv=none; b=bMBItA7j2FTE43pZuQLeD/FVaw5Lc+piI2a5gUqkA/TrvL4aAgaQOSC1cLaIZ9LuEVQzHrBio/+gEVZTMjaRsJMY1+M3in8W8SCgddjGVMv2kAvD14foAGDhir2BWAp+nep2H14RbqaYrSseW3hdBgTAUsJMSxKttmlTS9Eq+ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753871396; c=relaxed/simple;
	bh=MU2kq156iX+CMRArlZDe2TNeych4iwb4DiFanxTTbYM=;
	h=To:Subject:From:Message-Id:Date; b=upGXQZZr65xN1vKPJd6O1Pt1rwNbDJqp0HeNmQEWrcwdBJJMllJvzSEP3/Ofqmw4Y0MkQr42OG9zoEskHKDwqCn8AeFflinLWMXpwKG6wcDd3Yo9OC3XZsrYI0uyQqa7DgAHaRTTnhJNY0dSw+QO8zGFpa+9DRMl8zDM0oXbajg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EtFFV0bW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EtFFV0bW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B96C4CEF9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753871393;
	bh=MU2kq156iX+CMRArlZDe2TNeych4iwb4DiFanxTTbYM=;
	h=To:Subject:From:Date:From;
	b=EtFFV0bWBUuMyvw+2a8rjm7UGOMmY4BRXuJx6RynfiRggY7qRJEuM9By7yuRURumn
	 NfiW8sJpKBRx76GgVq0a/YLvVNGKuxB7OtDgWwFjhSZQRA8HZ7GF9uQvl8ym6X1SUu
	 s5ytmu1tV/pkwrH6tAvZ4/R/Pz9HX3BWPY+5Jzm68cIydc2h7oy1CSOLTVyq8c0Wp6
	 6i3SvHnTXEFSgCOwmxwgQTWEgCGCFdRCqWJCnrdVkcHR7Fe/xQIq6/uAb+pMiPVadp
	 z/RixxtvZt/HKCzDzji0tjV4u/ipvG7/Gkb1TG7fQak/OkDoSWww1jqPNqqA6CBYzD
	 41Kqix3/7yMWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90896C87FCB
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175387139358.19313.3003653008590470207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e8998f44ba0e5ca0933f81b139fe8517af775a9df9843e3bff6640c4fa758d12
Date: Wed, 30 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753871393
