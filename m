Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id AB9BA11C85
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705772296; cv=none; b=cfQkWNNCpjIk1+KGZ27oJQv29XjmJU4Xcd8yti4sZebJQ7we4VKRn8JBMl++TrNfqfxckIM3y9yhuzkow+evXPg90yoHCgnCodHVDPR6vi4lRZwyYwrUyyI6XK12MC4aSI1AhXWUAIGhmLHXUDutZvmewkKOAZGJkK50DjfmPz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705772296; c=relaxed/simple;
	bh=zq4BYrPciB1CpK+4klAwtyLo6jh6AXVrZDgcV0hEzXs=;
	h=To:Subject:From:Message-Id:Date; b=G6BEc5/3XtVrX2nlGT7vjuT+4EutUd5ORrZ4cLiQ04KPZ97DRYgAjCZ1/56YVsUWl0jOqdTZxo3oZrMjSIAbF/lQuleJ297fmOW86UWVnoeEETfMV0FfqjG/T1Ryf85YXqShf+86q4ffY1P//d9WeFcnbL5QW2pEMtYJa9Tw+3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pUAYFKP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pUAYFKP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76EC1C433C7
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705772296;
	bh=zq4BYrPciB1CpK+4klAwtyLo6jh6AXVrZDgcV0hEzXs=;
	h=To:Subject:From:Date:From;
	b=pUAYFKP3fENwX5vk++x/AJm3LtakCqabbQ+uhJf5KPFW3Cla8EHTiZwWmKBVE8ddp
	 YP8XNuHYALcuEjo5orTDqBtLlM9kKV2cfQ8FzHizl+5/hjsZOW475lPVDNkMr4FyBD
	 0w78ozjQe5kmr64LhMUawd6fdkdhOwUv/wjM6Osk0MQmWIkEGDd/Ghq4qz3FhberWp
	 GF2pzZ0CjHakqAkrdCN9rPfHtQzwMH+sl2MJLeEFvJjUFcGzEyOqQd1fjXaOoq007Z
	 88DUqCiO7ZktpGvBwmZK5ZZ+ordQ7xVCbmwgtTbQVaOnx1CPNzXofEtrhaznnY3O2d
	 F1oLeGS85d7xw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5AEE7C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 17:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170577229636.29362.4601741687023192237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71d3bd7f05199c5a863297c85a3151f273af010202bce7e044862c4b8e80bc81
Date: Sat, 20 Jan 2024 17:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705772296
