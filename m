Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAF02848A9
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756286394; cv=none; b=fvSwTGjLxFtj8d7WXhcLkaNSBwoLgjAs3CckO0ZJEfQ0APmLhhvKCWMQs/AbYmOKX6+kqziPtEV6SQxp0U5msiCCXsiFo9XKKcffu0wgXjPz/xhYUPM5tAuYgErqhELlyQYdI4Mrkxg7ds4+Lp7zQKUwPM67nIyC+JJvVba5Vro=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756286394; c=relaxed/simple;
	bh=OLheFbhIKwON/lpZm3zTOljJ40kOrrj+gIyk0OOntHA=;
	h=To:Subject:From:Message-Id:Date; b=TC263Re4GESBihAAjgAy3wCjrj/yVVkQEkQpL5bTDyWLiASfHTM5yLh9vd6/mG8AjKlBtm7pkIfpHWmxUxCcaW2siO9BmZGrrOW2T4yaY/gp4Bo+7pzcsfm2GHWN5nNYmtfjzU5dty22V6LgaAJ6wQQwGQvx70vMaABl8YD7kLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hik7FHqd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hik7FHqd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4949C113CF
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756286393;
	bh=OLheFbhIKwON/lpZm3zTOljJ40kOrrj+gIyk0OOntHA=;
	h=To:Subject:From:Date:From;
	b=Hik7FHqdZSDrKJNqr4es1QsG9r+A0c7pHDnrf3wREBCuAOyw25uZpj1TltIL3cKy/
	 9dXj06fkaoxpTX+SRss3ZWY5NrnkiJ4j0sBBQKuivdbY2CQJ0cganwbDu+k6HnJpjq
	 qqnz7FIHL5o4x/uT2dONlwgmXWWqbqRF9y53o37BW3Pnq/jZYpg7LvU4SvSzLDOf+d
	 fHNpFJMcLe9V59LMr4e9CsI3V6i0Cm4uJMIZ+iKqFZI3Uj5gh88Iy3X90eU6heQYjk
	 LMB707PLZhmt8SDe6i/GWLEpwkJmYplMffLXQvoe6srwrRVYfpkrG5jC26RRCfR/fk
	 sQAI+9yL66g8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90664C8303F
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175628639358.17687.13194741307647627715.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b64d555d6049b57da2d1dce0bf3b43a17b92d9e9c52bfe5941c06a9a9aa3807
Date: Wed, 27 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756286393
