Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428B615A864
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741520334; cv=none; b=i9nzi3/bu4Pka7X2nbSKxts+X3pfy27g0T7t3KTakkGlOSgEErQ6nJqc74CWn6vKAUusQFee/MV79sS9iVYeyKi6Fhj2puL9f8YMrtG6Sbwou8MYNCkcWCs8st9sRs0YYYKCFdc31tumytKZI1vWuYKh+2yxhm+2gIc7c6bl5Ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741520334; c=relaxed/simple;
	bh=UJWMQkMsATiS5NPr0ztsybem4iCi2TUIPJ5+dDwNyhg=;
	h=To:Subject:From:Message-Id:Date; b=qRUgsPE/qGLBFASPqIFYvNPSxzS+wGyT4JyiFJWpWXmuueimuf3QHAvB5o2HttWQbUsBe2WG2M6ITHAJbZe9f6jCmm0V6dWtVGlH04CdoVOEEQOpy2RV4MecELGO5hhhEO9jf5pnMwJqh7uXgbZCx0eI6yfzqsPaQygydGc+1WE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQ8Godgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQ8Godgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6CCEC4CEEB
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741520333;
	bh=UJWMQkMsATiS5NPr0ztsybem4iCi2TUIPJ5+dDwNyhg=;
	h=To:Subject:From:Date:From;
	b=EQ8Godgk+fVZqJUQs61QtF10avLpNAqPVqBtJZXgZ4UIi21ecwMjl8LxNl6SRa0i7
	 o+hg1PsRGaCsUBQXt/Tbjn3wFBnwXgq+UsEiieGyBDLXlu/VFZOvYpsC+WezWd2JLF
	 rZ8sKCB7cqqPU43RpEK9PyDHdka9hcPUwsY2XcCWAe0W5nEiqS6v0ZVgsipsCRE/dP
	 Ns9udZJyCwKfvhcVSaj/hPY/KFdadH9Xcue8qYj6NIjvPlUg+t2/LaWBbCEWZ0WMUz
	 FMJ3918U8GclGP8yU5DoK7cm3gIhiz9662b+6HSeoFvCakY6pPHrl2euasoTpUGGkv
	 kABC8G+KIk9jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9EA82C282D1
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 11:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174152033364.10379.7944854565475852506.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e87150851dc98e6e27e1024b6d5ea2a2c94ee42616429e23fe1ce29c4a56e4e
Date: Sun, 09 Mar 2025 11:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741520333
