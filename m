Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F9891DD9AC
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772394294; cv=none; b=cRKzISZIIynGVDbx3d2x9KiFUAOwF56PyxclQWvivAjr62tLahrz7qPBeeNbLNfpCebDiaJ+QGPTz2lBEocNZzjuJMypAnHjENq8fD94JkiVBAARS4yebg1qSVAuV2UXpwsp/fsd2Qp9gBnk184HyZHRcvgLM5SFxZkg5wjgkyY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772394294; c=relaxed/simple;
	bh=ZGBUsYFrroZfPbeAhZLs2N0iMIfwxJxCGOiEzS7Liks=;
	h=To:Subject:From:Message-Id:Date; b=Z5GByTOOfQKP72xdd6+mUM7cPYWOfjbKTV66eMaqHRHkjmYqoIQpeHeNYKzVgYjy/pNl5GEGlLqOSwyD1WCiiJhb+WLQAV1KZTXmFZeLLkb+AdAHG+2dRPZw6+LZcGj1/nE3KlrGsMjv0N4eGld1mg6JNQcri6UI5hSoxcXHHpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebhU6qhG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebhU6qhG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF195C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772394293;
	bh=ZGBUsYFrroZfPbeAhZLs2N0iMIfwxJxCGOiEzS7Liks=;
	h=To:Subject:From:Date:From;
	b=ebhU6qhGHfT8GIiku5Nn1U6HRILf9y4NGV6Lsb4ttQwGIjd3NexJQTgQLRZ7QK//t
	 uVVkx1NFOAfq/M0Yy9kQNpjc4aDzaZUNa5tqtJfRFq8p8XkcIITTZ3ntvicGKnCUex
	 fjkPv5CqbdfxdM8oCEHKkUlHlVsMcSQRRDhnkOLPMmC9YxOK9HtSqNublfDXKd7OSO
	 zusOyAzZayUoJE/CpQZSM27YWsGZcG/D12fnfAN3yfXXZUdLuNlCghWLIVuEjdVJcW
	 kt122HTnOUGUemNBw+SZbXop/KFAv72Y9Qj0dL16TzoKnM4+shVtg+8jaodSp0VaLG
	 WZNqdIf/7BRGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9611DFD0075
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 19:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177239429358.5901.14107892784615688086.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 904dac4c6069105a86d53179be10b32650b67a82b347373539375ecbe8b1a051
Date: Sun, 01 Mar 2026 19:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772394293
