Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18BA51DAC8B
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728071154; cv=none; b=d3wsJxkTKP7dav7mBTeI8S5npCCg1StU8E5PMWek0uEipPnwie8mmJkr1hALzl3LGGAf8cfpqvQTIcrh6oaECsb124xKUxoadusfLEpvmJq794TNMDAialMR1PulWEBCZJx4HYSm/w8pmDATXNzAlxeo6GUXC+LzVMvNiFlxlcg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728071154; c=relaxed/simple;
	bh=xqV+PhZphoLRC4x64b66ks1ov7XpXaRIXDBcRfa2LFo=;
	h=To:Subject:From:Message-Id:Date; b=sWOEM7TxK7bzpOspWawFYXK5ymKgn7E9w9WvNBXYVr9Qo7etUDq8/zY+5nPQQ02A+M0Gdw16+GUTU3KRViXbET2WBR3nXZaPyDrlZ6ZXay3bdc4QqH/jxH1l0Tl2nasxhx5GcaWq50jLS7VV5U9xdToJOrCxtXKq1ScNniIoS6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vef4Tl02; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vef4Tl02"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACF69C4CECC
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728071153;
	bh=xqV+PhZphoLRC4x64b66ks1ov7XpXaRIXDBcRfa2LFo=;
	h=To:Subject:From:Date:From;
	b=Vef4Tl02IyRBa2GbMUsx5VYxadz17RI6o/3whA2jWbW0Eaj2moVpTgojP6gfW8Yls
	 41HvU1VFrrj9dC9/pp+080tGlhh5yLfHscJu8yFfVKRo0FkpVzA0qdPWcIMLFPfN83
	 wuHBCB5I/edv0KyloqGtx6LNXcCFEv5g0l7EVvl33bYgNeIbykTsnre4sgbqC9CEyQ
	 xNvrzXaGFcY+eUodkRi+QGv42kxuCXiO5mTOroLyV+92TnEWiVlePto/T7/e8/YQIj
	 phBvfAvFhPPJmz9C4j9VxFxmc+lueN9TI/X8Rsxqnmfdj+t6VMshZ/RAHsRMwUM33E
	 z2BjKatzfmCkA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98876CF885A
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172807115361.21885.17194505582960277545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 509365cef35a547476cacc272f6f625a39c05f5aaf0752076b8474f7158ab0ca
Date: Fri, 04 Oct 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728071153
