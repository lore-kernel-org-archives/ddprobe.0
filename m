Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483703D561
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742770794; cv=none; b=ZNDzfiGk+LKUC2VeQ1de9U9LvTHojRDhF0veOs+SgHlkYvd/sF7qThY6eteYgqwosB2UaZQ38KewmyeSahS+NZHBO6Hp+JoqTq84NjZmnsC3o088LfDzFVwdTyOoAmUpCBag74xgPRhADOeT5v7SDfd+HsjiXoLPlXLUaSkr4qI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742770794; c=relaxed/simple;
	bh=qJi4mxiOmxwJA3u7U7ZptSlYpOeyCYZGG+gk4X2dyNk=;
	h=To:Subject:From:Message-Id:Date; b=ca7HAQuSyN+S6reIAnPpBY8mSM4TBjzZlcXoctPcH6Fs+wi/pj6bTh3fiPhEYVNU1JajaVzpPZ6RCT68Vq9qCS74L4kv6gIHCxUPaRLDO1YsDOfi2DC4VqQK03v7asT6KE2OBdy5jRC9HOSHEooMh9Kbez86XdlauxYoF0sOKdY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bzaqzVGQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bzaqzVGQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B38F3C4CEE2
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742770793;
	bh=qJi4mxiOmxwJA3u7U7ZptSlYpOeyCYZGG+gk4X2dyNk=;
	h=To:Subject:From:Date:From;
	b=bzaqzVGQIxM2t9rprUcoaw1MQTkGemQWm0pt4xMbloEb7yJHuH8RBNHneKAKIDK4X
	 TTf/04iodRkcRSBTKEW7gurN57/Qgm8tEVX1NVxY15fwbLeJi66X4bzZPUvK+i117B
	 IOWF1/gDhMMlrCtpi4aVWMWzFf+rO0C1kiqT9iUcALmXyZ0olN0a22REyreNFamrYb
	 eJgVXUssmrFc5nRJL/pSNeAAkrbQhYwsvV1QJ2TR5fKxzoETQqIKEj1CstqAjB2gCm
	 ulfQRilq9qoS6xg7mOm6UHHaWH7xe4DM4A7yxLrqtGTj+JPq3DJ/crt79hlD4kfk2O
	 CZgpjKoKFjW4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 985A3C28B30
	for <ddprobe@lists.linux.dev>; Sun, 23 Mar 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174277079361.20053.6345122401269141102.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90092f5a8458ff421b7e0e93356b6b567ffc8d97d526c4d181dce70e947decfa
Date: Sun, 23 Mar 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742770793
