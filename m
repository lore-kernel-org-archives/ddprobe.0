Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A18129CF7
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717853843; cv=none; b=eDJJwtwQkrU0U9XY8SG09ihHQQjG3pw/DIrjCWBF1cyiXEumUYs3XdhKjnvzKYyfP9SfSPPpwrKcukXN+9b2WgVoOe43oMNqR36oytYXtNX7l96qgyF00rYIc8ZgJEWOpYFOHfJx5CnksuxTMQaXUDTJTID3FimCAw2qo7jN5JQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717853843; c=relaxed/simple;
	bh=tVxpHfyg2zQ/MDuDg6zpRgDSxvZ1uEU+Db3ZlKCQyYY=;
	h=To:Subject:From:Message-Id:Date; b=Qs62NEXJqdfoOJJx/i0bb3ismygeJAyKqxb5i0Ir7sojTm1SrXOxqonwP86aAWwz3ciTWkerLnp73LJyRttTX3chQqFhEqxXbSq4onNrkMaLAPcAFwMFNZRJQpyTOYpA6putZc36AKcQ01A2GIGoEzGY3nbzvhs4AUZ0Pb6QIrQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=byvXWr76; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="byvXWr76"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3665C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717853842;
	bh=tVxpHfyg2zQ/MDuDg6zpRgDSxvZ1uEU+Db3ZlKCQyYY=;
	h=To:Subject:From:Date:From;
	b=byvXWr76heC+LFvLaAt5bgSBrlUwLgpbSDvneR3lsa6xASxKlj3e9A2O0TL5Nqh0k
	 mcZBW2EVOrIWz2PdHA0uhDIMo5Kb5LKwA0dXlsZFaBdZdppMJI8MrFcm7QIBkSKh3R
	 8ZXuxU+kQ9MPaBcB1IZh/dI6jQkUgfwM2lYYIN08X3XzkOXPMqqbC9iqW9lmGm3fOJ
	 sTV3xnaR5AOp4xLGOXLA+rVqRReOtfpiZ+czW/i3P8TGZ8I7iLWfuz4nkCNxzqz6zY
	 9V8ofrYJRia2lkc1gZInjqtZ5mcuaJhMHMbsCHnMsm9mUpSSUQgYAsNYeWgD+BTNi1
	 ac1PmvmIKzElg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD608C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 13:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171785384280.15302.11040723503903926659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf171ef1bb78a7387bece137370b2432b59c4b9e5698d8595895da5d642773e6
Date: Sat, 08 Jun 2024 13:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717853842
