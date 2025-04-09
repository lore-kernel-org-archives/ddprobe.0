Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 69470BE49
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744177794; cv=none; b=nI3lDEC/iyfIhvdbtz20wiKYNtR0V2pyis13/bupGwhXm5kcLxL92hPfLuIt/ekBSVr/FUJ9V37rodMHRKzBhxVYdJDJD/BvPJSNBav4S59pTuB4C5feObBzUJZPd1fqURU5H9ouBB4iUKXSTTIlbCQHEoGau6QLxKtggHLvIo8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744177794; c=relaxed/simple;
	bh=FWOIZqEN9Fl6tSb13TqKO1Povl8joxNylBTkSt85pog=;
	h=To:Subject:From:Message-Id:Date; b=K+HV8jB5okDHD2WY6WMiDcY8uVCePm7QtzAc1yLFTRjZ9C9ix36Qvosm44h0HO7EQ77NUnysHYO32hYR1FllCMf9Z6JfQJ5LNLHhqoQTPWjmA8B77HzsRn7a8/DosWsN7CWATp4ZZLBT4oZuT1V0mtpsSpyk5kOlDLhWojRLgyU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pq4HIikH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pq4HIikH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0BFC4CEE3
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744177793;
	bh=FWOIZqEN9Fl6tSb13TqKO1Povl8joxNylBTkSt85pog=;
	h=To:Subject:From:Date:From;
	b=pq4HIikHpAicmDfUavbUBklbbIP8/hsLvfEJsRJ3AzVfO/tyUy5kccXlCQHOfEGxj
	 QBJ2GrRifYskzDfdHRpQqW2H8rEqVLuZcfaKHWgkGo6Zb4ke2CRmvScWjJrFHblexN
	 H7yNX+pTWWgX/orpclWl5B2PbxRDqTYF+CgKPZOxNOT9l89/xgEYvCvqwQo3veBD6G
	 fPokssCEf3JfWog2ls7cYqR7QWhJlcaZneOhFng46Ul1/3RjooMeViIn/AnN0CJxz8
	 wVbQcFrjzpGE0En5SlKEYj49IiYQLAZepr2D9pYo1areA6fCTjyUJ1ZYlhyk/BawPN
	 FgC3Voy+GeQ4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5286C36002
	for <ddprobe@lists.linux.dev>; Wed,  9 Apr 2025 05:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174417779373.16274.10399160069897325625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e9c2dbd2a40049e3f635acb6fad46f04fa03280333bd700ed7fc5aea2c53f5c
Date: Wed, 09 Apr 2025 05:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744177793
