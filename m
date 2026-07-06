Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49A8EB672
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783297114; cv=none; b=pOTzzh6haVx2wHCrbeCIj9pLxoSxNnjWY5EIU8apbuYz5hml87NBgNcAC7ZP0hPrmGOG482hILlD6oHMqOx47kxuZhECPDXkY/WUIduExnK5dtlcPALLlMuKCxiQLQ3+jUSmDx6OkNYkDgszHy7pTs3/S3gVAV4xyh0ToLI4gps=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783297114; c=relaxed/simple;
	bh=JcERvc2DETok5fI3f1VmL0cbnd91E/W9+8Ku6gqbb2s=;
	h=To:Subject:From:Message-Id:Date; b=ff9Dya6IQpXCztIhrW8o9cr+RBW6wLfSPAcSYlL1mZbWZvR4qaA4KObzLjwpaIIAduBV8/W+TLMiHKiTDmuOUjggEiK1o37eE1Nibl3wUrxpZNMMrzz/+ynnUStUce57Lb5Tz/vl+5gvmZnAk3Li2uvMaxnEujKvAAa2N89WiFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nnhb/ysn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nnhb/ysn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB39C2BCB8
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783297113;
	bh=JcERvc2DETok5fI3f1VmL0cbnd91E/W9+8Ku6gqbb2s=;
	h=To:Subject:From:Date:From;
	b=nnhb/ysnAVrOdrkW9d5HeQJ+FBEyW9OgdoteTK9EuqIQgcNdGUbbH7le4mURix73H
	 b9zLhDAg0ckPjTEIjJopcuoeVOE4rgtyn49Zaq3KOfZukkoO2A1tLARsci8LqZ1DBy
	 QUm/16u+ZjG6cxqd2Ski2M3SPvIpCZhJLX3tUIs8cuztOTyNnd77xrdV7toSEjxrDC
	 jHaG4dn6CqtiJwbAU38sPcMTgeo/vDo6hFoeFauanuYNrKA5Zy8qdToGLkikqUp1MQ
	 wyyfjZQn84bMexGdSKI8U3+by9e/+KjTsXCZub9U3HFqlEEG2sQT/QXxSDtTT9l8M4
	 GdCQampZQKWzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE15FC43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 00:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178329711368.10771.16490418319478129939.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f354eeaf3ffec236cf9b92781957a24e91c4ef87d7b67a242e074e0452615f3
Date: Mon, 06 Jul 2026 00:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783297113
