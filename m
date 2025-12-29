Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 301482F49F7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767006834; cv=none; b=edWwLFRGfLqljffsnt2Q+AD82i2JQZnQyoz3LB7Ha2ZykGFE2eLE90NOh5kX1pFlzf0CbbDmvZbnxFg8k6E7kcOxxrzUtEdsN8CoHk63CUtF8VKaUPZ8Mozc9FRyuOzOidKo2lZVhSBDLbL1BkFMW8CGxS3/inD4Jbg0ioMhGx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767006834; c=relaxed/simple;
	bh=4SJfGFEivy/qUQr1w1ZcpsXj0U8rUOb4u46gpiQ3qN0=;
	h=To:Subject:From:Message-Id:Date; b=tM0X20GUyjmEGr3HTQjLMN8uf8xaChRSR/nJbMA/QCnTe4govr67q71lZc1uBHaYkEeEEoHQids98goF3+jwAC5T8AH6sHIfFye6r/LsdoC3RDiGaYHkOYo5sz/tLnyv7yAxQMqaPmMyo113Vv67VQzlyoEd0bDzom+Drq65xeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=azwZCkAA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="azwZCkAA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C176EC4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767006833;
	bh=4SJfGFEivy/qUQr1w1ZcpsXj0U8rUOb4u46gpiQ3qN0=;
	h=To:Subject:From:Date:From;
	b=azwZCkAADafaYTGx9S1ZTj9QZLr4GJyLUYyW0nEH3Qhul4sUmABewfjsmUKeRxQuM
	 4Yc9IEl5eE+rsMhXhLNdaHjDjDj40Syjwu8wdQNhKSd6SanEVAMvn6nozU/Qdzy95g
	 R7PFUQ3zeArwiFTgufgMPEw5AQlAzTh7lPKQ2d9B+DVPEZ4oMbWb3PPXRVcoMqPswc
	 a4pzayGrOG/YSd7B0uvs7kemS1+F4QvZ/F1iHj3D4rMMOesO9ZAp8iGCQ34c4o7pxU
	 C4C04HzL96b6ANACyPVNpNSrIcLKK6U8/ewXIDxRANEKKJLQEjR1IpzfyrB09wDmp6
	 r0baKEBOujKiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A6654E8FDB1
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 11:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176700683365.22171.13450353936835411094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad51efd900f68639eac1e822697b827593bac1d67b38cd7b12dbd389b4a3cc28
Date: Mon, 29 Dec 2025 11:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767006833
