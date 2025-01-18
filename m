Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BF8F17548
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737166554; cv=none; b=Q1DJ0PLfZvj7Ye3QCYBY4ZEGQLFVaCY3JLJoWB8cwNP7OrPlTm+Vttp0mUSSC9O6rS64Nx9iyOeAPGr/Hmf2+05F7XKR1sMW8GutnJGEyhUOAvyYyDc2jWf4ixGn5tiDnh7KfOLEx8vk0gW8EKki8Gw6i6ShSnNRm9Ztp0Ph05M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737166554; c=relaxed/simple;
	bh=PEXwfdf0xklR17vuPl81GaAnTQInpBnYLpWoqYAe1zQ=;
	h=To:Subject:From:Message-Id:Date; b=iRrAI2gp8rZoizmH7KGJYGkEMtAAF0iTuJqUZAjciXsPjofFwUWGUI0e0KxEKl24utT90M0a9nOlj9Br3oADckAgfEpSGUmXIyN7fMDNUfaujkCRAexnR32Brfxj7Usy8JhoLnGoeL3IKjDgfHl0vdhStfVoNUfHJJ6vpRSM/lA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ewqza9jY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ewqza9jY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAAEEC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737166553;
	bh=PEXwfdf0xklR17vuPl81GaAnTQInpBnYLpWoqYAe1zQ=;
	h=To:Subject:From:Date:From;
	b=ewqza9jY6WFWaqqIh2RfnmkMRtGaVsBzVCu+0gsGl58B6BkyZFfTQwLghAjkcx5Eh
	 EnUDkeMpypypNS76tSncsxS9KErtqmC0gBvRwBKMtz+/0LWgY0K4mqEVINtLTXj+N1
	 SZTuHuDa2thhcmdPxASwsUgDJjxxXUoL0QNjfTESI7O0vhUK0RxuXGPJZM0uFJwmPC
	 fjch20zomXnLcQgHEdZ+qGHZIjrGULD3CAgsGvgy7KPi9qt/Ccd7w6Ezsm4oT/gAkU
	 yalAl6eseNl4TasuOA5jPRTCnXLjneGR5I5zKf5/M/ePKNlQgbd3pts12pGWi8YmJb
	 XhlM9hFvlq6uQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 976A9C02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716655357.16100.7577019320150578248.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15918a072af58ea07d851d8fca611cad9837f7950f4d33631b5f44a45ed0b1a9
Date: Sat, 18 Jan 2025 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737166553
