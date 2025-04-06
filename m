Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43D9C2E62C
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743977394; cv=none; b=HVudmjPWEqPN+duQ6ugzufkdgVG0yigLSyGbX43ITS8SZhuCRLRQxel1uTM7GJYD2yNenAaMNLzs3aFkzWYrcugd4HjrzGwa7CV7IVkzPdjhAzkuPfHLFzLY6UstpZBHsUsqBAeTIuvjTAtWNgtpr/L5HYU4bN0owvoqNuWzM0I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743977394; c=relaxed/simple;
	bh=TMQey3FMlnfTtQ2t16NGK4BHjmtYwKYVEsdjeZ9gmmI=;
	h=To:Subject:From:Message-Id:Date; b=CWVpM1gj4VwcW8EEgH+RCiGBgXZrQWkhCgocXDz84I+wHY1lb88QOnjghxpD/wj7OS2IflJUEFzOa0NvNFjxB1t/vi7gEqx+7w9BUNCLPKQu1cceDngvXQ6DC39U9J8w3WueY594JsDxBSQaSEfWTWPLREWXutTo5z3HCNVJKlY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eR21vhbG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eR21vhbG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEB30C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743977393;
	bh=TMQey3FMlnfTtQ2t16NGK4BHjmtYwKYVEsdjeZ9gmmI=;
	h=To:Subject:From:Date:From;
	b=eR21vhbGkxYyQCl2Fbik2o1ds/XdMDu9+bIcPorJZ+nsobyazRMcv4cSK32T+VgPY
	 ObNMvSL6PjXqGIcbchjVOuulLKU7Xt0/VI1RO3f/CDKA/PshpejihvmzJFte/jkRDb
	 xCBEyiYyglNFMbWBQVHAWafitHRk9aAKcHTQVhOlX4aClQ5KJOA0Mnq7sLMr7wQmvx
	 HSL40vRsCBGAb2ExDDnDLbF/Haa9yvE1A664rhw3aPH+NeplGHqKQNldqvQ9S3nFWi
	 arElgRfZNbBeVDtTo3rWPLTGYCSl4ttZBLHUKRB15JeaqLUHi/hAjsLjK7NWhFgw0m
	 t1RPpTcwphxMQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97129C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397739360.10069.3267829262794744758.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0337969f84703349fa9d814863971fecb0079b492ee7a3b7d58473dc04eabea
Date: Sun, 06 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743977393
