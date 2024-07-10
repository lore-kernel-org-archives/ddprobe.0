Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E3C624A08
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720593983; cv=none; b=dAZnCUX7oAQA7ny0hdF+tR+ATnhXHNn0AfS688j8VIklSmC3R/i2sCGR2/eY3uMTRjxD7BJb81MkknXDgQCkDwbaWVsEMzubu7FxoeaLIrHqJW5n66HW/vRXXeHzFVRscQmkqijjb/8A/2/PDDvq/WvmQ6MOIFtLjboLkXhBb8Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720593983; c=relaxed/simple;
	bh=F/Abj7oOVMXik4E8PwNN4KDw48XuJGU0HgYXy4GWAJY=;
	h=To:Subject:From:Message-Id:Date; b=rxNt89xSlfcOkUXUDa0RECvUE36nibvsFY2bydABUEQHAWHgc24luyxhv8lbDRlnR/JnYAa8r7IqQ0RWLw75Vf14IyOb9c5jWqF88d8nad3Yx8vKmmzqb7ldwOTHujIzy+TK0Q1ebl7HsBg7HGxx60xYDAwmhr73cgo5X3srv2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PjX2TxiD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PjX2TxiD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8CB8C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720593982;
	bh=F/Abj7oOVMXik4E8PwNN4KDw48XuJGU0HgYXy4GWAJY=;
	h=To:Subject:From:Date:From;
	b=PjX2TxiDAYBBQ2IitMKEsGtiw3z9OFSmzSOADM1k0sM3YwpHVMEkL1Ac4ooC1NWQl
	 euC3TfIt2+kNpgsDiGYWGIqG/N+IOmgq/vPXIniityxaa1koga7YAZxIgyKTKwYXrx
	 fGkrFyRZpz3DB7gX3jU/lntDjP9MqoaIoFf10u5g1tUxBOegI5YweEo0bjq9KR4D28
	 jCjoSkex4+VY8ncbqoDklIQ60kqChYb1eowYeBJKRwY/WG8tPvi/LkhhN/G9Br+8Kx
	 X5h/VoAduxzhkWUyukKQO8GgyATV8W3eWhBzNCUlNKXdqpdmFTfOovWcztkSS5N6oX
	 TSFaqY4zsG36Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE8ADC38150
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 06:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172059398277.5931.12138261741458585509.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7d86383442ff034052874978615ae3c694d497382071628c1c759fa9cb7d03
Date: Wed, 10 Jul 2024 06:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720593982
