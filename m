Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25349EED8
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759532994; cv=none; b=gQ9kUGa1pUkumNCGmlOwwwBT5MOCBzi68t/NAuMsIRqL6z7GWqZSOhShgEWf8hka7XWhnXPIdvr83Vob7LVtSnfhi2GNwrhmwftOaOP4aDuA4PwbL6NkPqfkYfQJFmrUdwB2czQ8xEOXk+Uy9cPvTaoBuZgCEmdhA7T89q6ONdE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759532994; c=relaxed/simple;
	bh=XVDTGctzX1hP2F119C+BGa8tyuSVOMMr/GX3k8ZMJ78=;
	h=To:Subject:From:Message-Id:Date; b=i5o/Bjoyp6dEawrzeZhwdZGZ70BkqYzJj5+jh8PbFqZ2Ktc4FExrHpfcd9+UhaoV1Fz/9ethllJqi4RA/FxAGuQ3426vUQKIMu86/Dcv4jlxlcVwcT+/SqUV8BJFl+IYkcoWa1qkzpzzcDxavXmUDLaw3AE35j98IL2wZ+5prHM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CF5JYCkZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CF5JYCkZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A223CC4CEF5
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759532993;
	bh=XVDTGctzX1hP2F119C+BGa8tyuSVOMMr/GX3k8ZMJ78=;
	h=To:Subject:From:Date:From;
	b=CF5JYCkZjYas1CFaKgEfnUOefnbMHHtpGhSEwC3VapE33JTKxmgmFvGEiOyRVoSXe
	 P+hwm5St04Uw6KaPeD08H4zRcboYb+SeOrilohLTkSe8Pz6zd9LshOhZeWAGf8Au7G
	 eAj4y+hVGgh5wtK3ugZLgLP6VlAu37FCViJVZTZ7+Auc7/lxoDbgOP10Naup77tWHt
	 7MkqblHoHn4Gc2c/ZhGBf70FAkKK5xjoM9mfHiaHmeeZgSd5jJg7mIDusjExC7BPx7
	 K7F86qPrrDKM7D5v6T9383S0ckJ83xPAJ0euBum/BOeTSHWlJO4Gb9Hx2M0sS6pxau
	 pX4tAVHxa/eww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB39CAC5B0
	for <ddprobe@lists.linux.dev>; Fri,  3 Oct 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175953299358.28911.8072539136143269587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6ece228e8b41cca4b10bce2f3a9df9c18128232418af0def2bb6891b5cd619d
Date: Fri, 03 Oct 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759532993
