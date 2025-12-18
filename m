Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C10FD31AAA9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766058234; cv=none; b=lWjGO3gWPbJtvy2tObAlfUqV0AbH7zZs4FLbnhApKOiKTzTeoJk3zU0MZzMSK4VsfdUCwaR6JdLcWcgRUNaGyR2gX6cZ7895G0dCuZ51mb5DbnyCJ6/tsXjSGIle1mvmPoj0moFcmRo4gZ41B9g1dkhFMXLbyLL5WLT/kXQjeTw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766058234; c=relaxed/simple;
	bh=0AAQmCspivKuZ49nWjBRepks/vIvehhU61SUbCR5E6s=;
	h=To:Subject:From:Message-Id:Date; b=Rei/WXHll/Hl3U/Ykwvffld699ZVwiB4Fq39lE3PsdtsbI6JolKzca5526qP8oQtlyQu0GPFkoPUKNOitPwGcD2lg4OQCarJFJ/4/nWMeAz1vn9RWb5Ek+IaC/nbjIgJSPiqzkZeDfvO2Gp9Z7po4X3Q1uXJuRg/ZW/jL7Y/Yu4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FhtNYUov; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FhtNYUov"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E4C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766058233;
	bh=0AAQmCspivKuZ49nWjBRepks/vIvehhU61SUbCR5E6s=;
	h=To:Subject:From:Date:From;
	b=FhtNYUovb0VjJsKbViFXdeUT0kK7dNfi4484CdFi4xgHCr0J/Dj/YsIlftO/OoNu0
	 TsBX5j8PSzlLvKRKFn8Gag4R4H5Odj7SzPNSdNEIqaS5aE/mWGR/MjzDSr6jc+3Mvx
	 mb3qF00f8yY64eF3mLXSCKFgzIQ5s6MN1paJZ44l7wcoCay2vuQd9OkD8YElNi/dEV
	 3fldBO3hthmXFkPyxzdET8ciFOygK0ss2KIZA2cvpGfvavhMTa9I7r91Rr1LgikU/J
	 AzwagpQW+hDqB8RB5o0u5Z3h2z/1nc6R5VV0KTTIGIbucn0jUlrDlfJDrVrgWW4pki
	 NP8gahXYchBuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A91D6ACE9
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 11:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176605823359.27801.10562839241290170852.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69e8635df430753d5ac4db9d74b9b906eba965d4b5eef247134069f814f91264
Date: Thu, 18 Dec 2025 11:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766058233
