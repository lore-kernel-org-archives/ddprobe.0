Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202623128D5
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783868314; cv=none; b=k9MCCS6jqybd7zlGym21lO6kXGD1hK6ZLLfOdK9i7NaDPe7Cub9yQSaTsL0uLDXsflLW4mr7M9Q8wctMov69P4B9Gn0ZuQB1a852zFcBAiq3PkmkAm5ZRWUiW4pBpWFn4fF6Di2dMgwvFi9cfM+flItWPHDd4LACHnHZOagQcA4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783868314; c=relaxed/simple;
	bh=Y8gq4+lZ2ST2gxNU6VblIYbwJRQ87l+ZrvOopS634oM=;
	h=To:Subject:From:Message-Id:Date; b=J9zfgHbGlzCV/RXOKEh3vE28p4LF8Nh4ZhOUIP8/Q8r7YCkzHlXSXf976/3z7ZSMXpFlBeWtL8xfrYN1KsIdSPrQoxQIkauf4hfoWHc6PijjgUC/LwNXL40YozJmh5zHtBQVnToO6EcauslExWEKxACUCE6wvwxfnVsld8owGHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA+NQKJE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA+NQKJE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA075C2BCF6
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783868313;
	bh=Y8gq4+lZ2ST2gxNU6VblIYbwJRQ87l+ZrvOopS634oM=;
	h=To:Subject:From:Date:From;
	b=LA+NQKJE6vvqxDH+Xajei5ec00HGEQBV/YcHqTxj4NDmxdpPBKiGFNVf9K0CqMmDz
	 BvzItHt0fdv+3Q2GUQAQ0Pzq80+VaUQLNhmPowmOlXBhO4ovWBLhixOf7lAyFT7jIe
	 MIo5iMETU4B/mEpDUcSxq0+nj+l0Qjd9rKda1A2CKpRDBV4bM7XwvabViZggg3qNb0
	 ImgHvwp+yrhZRlOXJyk1XMLoQ3NdVf28RAEVNgHP4fsiE0rbY0VYPNBanAWifg8B4U
	 K6dXCfKwyy0S4pW01PzXeeSqzLF/I2qOZFrsMFg+rCSNuWhVDRgycGQtItRS63gvoY
	 CXj8fffTzybtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7FCCC44501
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 14:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178386831368.28370.1351280521314783293.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0f52fe084841873050a9588b2685758c21c16e90dfa26396085c4d14b6fdbc9
Date: Sun, 12 Jul 2026 14:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783868313
