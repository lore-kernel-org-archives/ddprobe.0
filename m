Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62C0617591
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:40:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720867223; cv=none; b=skfAayeFbgP2VkMvVKTapc6a+t1eSQfcBVuh2lOO6PNxVIjynEil99CfwvwwHzMon5sXChyuJWXdhSCo2LMGLUJSUMLjVGMkTKmKgQivySahQpuhIAdE1TDMc5fjVRrZvYWJqjNwafdLE1SXG4HYjSb9HOequXu6jd0f6LSwTYk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720867223; c=relaxed/simple;
	bh=SuJghbTMHKmGBeB8TFn2GevRbFtZMQbJRbDB+fekMSA=;
	h=To:Subject:From:Message-Id:Date; b=EnkC4OkOypq4QYh7oTi/1WDf+NbBYZ986x7SZXFHig1omDkXXYYtQuUfPhIl6aHxD41HS+dkWEBk9TPwQx0hzF0OkXXp5XuEYdvbXjHWA+2QN9IJlTeiw2i0zXV4BTt3wnSbi0dn4OFlvNL0OKwYwD1JVpvV6Ty+UY8l5/tbmKg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLtJ7CQ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLtJ7CQ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9831C32781
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:40:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720867222;
	bh=SuJghbTMHKmGBeB8TFn2GevRbFtZMQbJRbDB+fekMSA=;
	h=To:Subject:From:Date:From;
	b=MLtJ7CQ2eFkldZFvYmHMOyRrRW1ZM1TjbuSyXdhm1k6SjN8XJPnd6Fnz9fBnJ3yHG
	 KEOlFMkutvshlUUOxqyCH+9zsE+4A+6TbIUQbAVmvb3sBpBzqM3LBOkscKGGX/kbrt
	 wW/g7aW88MXjf4+STdkuN37di/nNFaQ/TVMr7FYTO8CJ1RNbniNCES2uWK4T8A388f
	 rE3jyFrLlLFaJPwvkD7KOnhYBCWhSWF9wK4kH7Fb8oPG+la65qGBh0cQsxNaawAlbg
	 JCD4HH5lOWCSmi/5sbX8eItEhFPoFjeHRjUdSCnI7B2IE1I8mtgdEpEgGewAgOurDG
	 J+QQii8c5De2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0CEEC3DA42
	for <ddprobe@lists.linux.dev>; Sat, 13 Jul 2024 10:40:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172086722276.21292.11838968225666791785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215bf0263a96600a0cd5b5b928e14dc72b84c91082a6f1e07e2b68bd1b81f23b
Date: Sat, 13 Jul 2024 10:40:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720867222
