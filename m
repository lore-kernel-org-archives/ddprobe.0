Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2172F8C11
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726251954; cv=none; b=JbgxoZVn02CSKCbOY6TM06ggthC58MW88pT55dfMiK2sxuYj2OTqkMeE9h4tgmiNxhmn8Pjw43po6eq3+t3TSsgDd6V/ZpSDaEUsVz/DrZ97F4HBdYD7ymSb081YkwEDTkX36SI437GutEovs355ZZgd79vv+8tAh4myKdvUeY4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726251954; c=relaxed/simple;
	bh=9Eteqmjus6ZNhxkXsAvnMLh9a8dsJSvPDMY+jxJa9AY=;
	h=To:Subject:From:Message-Id:Date; b=EjFiyAn+dv7jJDBHzhYH1efa71BskIipseaj9iBN+CgsP8mLRMaimE7WcYhwgN6/DJ10XTkdiz7Cfgt7DU6ucL+ixgizh1wsaNxKBL8BMZIbMlTL5h2AkgEnNOmWgnPsHIYmcubdv13aWIxzdvnH+cjlALYkDazPkcCDR0Z2wX0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FoLlLO/e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FoLlLO/e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB344C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726251953;
	bh=9Eteqmjus6ZNhxkXsAvnMLh9a8dsJSvPDMY+jxJa9AY=;
	h=To:Subject:From:Date:From;
	b=FoLlLO/ezV7zUgx43w4goqBhrIq00z5v8BL312guV66Pa2HLCrpwOcGhyprQezWnr
	 mDM+LZAMRokI+0Fl9x6k7IRWE0rfWAyHv0LOMUk4lgAi/oOCtkCjHxiEtxLANI2gEU
	 RL3QwgGO0p5nJOyYeqZ+UrEOsNwGjSaDli2ws2QKOxk7ZS3XccAfyMwIL6DIBvGyms
	 Jjc5xhZcWyPudSn9kbKO2rIXHUhM0zXGUvLtc1kHvENGe3TROf9hy9xBRIwQmnGH/e
	 Xb5VxQC3PPQ3B2cGeP4BNajWu1cpMyKA1SSRxcaZnDBqUTd+9MeWormxjshrqJOQYF
	 bFdM6/JOszA8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99560FC6170
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172625195361.26385.2793066542788564286.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 827026d281cc3915bd92848b776e784c3f0cc2773fb3768ddb970647e4e64693
Date: Fri, 13 Sep 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726251953
