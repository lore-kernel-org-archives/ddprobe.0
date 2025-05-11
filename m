Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5642242A87
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746944994; cv=none; b=XlgZTcnbfyWV3l1zJj73GkGh5q6bHAia1vjY2dDHBNS8HR/6lj2o3nu6HXUq6DRDNrp6A39PiE2lHh7VKMcX+hej4qxqRcdQp+3vRwpGq891MnRf7ynoOlW0Lx7L1cH/3xnFFDIA8Q9VEKKBnTWpcCRMO7hqTiuOzrMro41L7t4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746944994; c=relaxed/simple;
	bh=VYkKqm81eDCrFho0Ao3xYVuFwTvaLrShJuR6CWpBIiI=;
	h=To:Subject:From:Message-Id:Date; b=D6YfK10esUdgBCN8WvAC7gscMG/D8KjZzBHoDnk3kLkzKJXNlwfUXTdy2laiEgVzLCI8wm+JKFibBFWRmYNUYSJN5bYosxJcybqveh/lnVBbA1ev/4Osgx33PHSorJzetp7LUYCErf+l8jNvIZapGz1tZgadIK9LeC5kl54CLl8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uy2wWUij; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uy2wWUij"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B45C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746944993;
	bh=VYkKqm81eDCrFho0Ao3xYVuFwTvaLrShJuR6CWpBIiI=;
	h=To:Subject:From:Date:From;
	b=Uy2wWUijig6g4hQkJANj61Qxui3V+Os4627x5iygAhTE555ZFEwHyxepWHMGznUFB
	 X21vKI5+u1jzp78TY9YlNONPI7eR+frg72IVPDz3FaQSB46kZqnNvRpNJL19hf50pX
	 AY2ymh/kkjmWK/4vPtdIalnvAIm7NmcryStO0WPgN4bXFB+y9jFsL0vdUfJjaDbO6w
	 BAAJ816anF8MbO6puNw9lD1MzcHjQZ9Gf89GYGd/ywIFViJQcG8J9PAZzPvJjb30zW
	 G+mogPysEHlVpc1QJedpn+I2jolojtlE/7LsdN8c1ct2gHu94hiE1xhvvzavdYHaH/
	 CTyxESdA2h0kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93810C3ABC5
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174694499357.11494.4590175590221935413.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b1b6842bcbee6cee7c44a4a5ef8aeae95175126a7c122ff6285ec149cdc2f940
Date: Sun, 11 May 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746944993
