Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52F801F8908
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737498954; cv=none; b=XpZSpdhY5CjQ+S9GlvKfT64FyOZpMEqGo5VCDMRkeXsThzpXkZ39ojimqpw7XFT5OQZlIX2iMMIhLUnRfWBLHk9qIoKrYvqqcXS4IHR2Yaxg2iMkQF+5QtPjmIAao4BO4NY5x/jHOcI5UiKUCiJ+ekVXF+5w3XoALRSPFG0LMeo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737498954; c=relaxed/simple;
	bh=WAni1+o7w7W8DDuQNCV+LV8Rsm6AL5ODtQHb62BZBeQ=;
	h=To:Subject:From:Message-Id:Date; b=uFVteJ8avvIhB72fvGD2TEtalFxQy7kkJx8UrxK5sH2FKAR1BkZoQrgmfPkegmD71G91FFD64h/RDh4tvaEwsbk3eODnUZ9R8p2i2dETRjIKn8uE8uwPC/l2yacnyS5gT4pw8XNS0Hdq9S3pVARFsZseBYvud6VwEWbevVKcHgo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GXUcIi9m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GXUcIi9m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5A31C4CEDF
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737498953;
	bh=WAni1+o7w7W8DDuQNCV+LV8Rsm6AL5ODtQHb62BZBeQ=;
	h=To:Subject:From:Date:From;
	b=GXUcIi9mY6SE/SoLygumBzygkViX/hnjawUdXzCOmvYtmbpS5R16MG0OPmF54mvO+
	 /6lvtCly5YEeWjMSehIyJQp08eVqZsNCy56AQIHxW4oGQSJGVywtbONG7xG108XSIC
	 bRAMg1XRToIUmy+cuNAVA7/4D5+vcVjjOCGeOSp82XZWsJliVtGRccKWab/K+OH/sC
	 PM/1Tj+NSPUlj+CyJ+abcfvJGAnyUY6whpW5gyilXoW17/uZLABiHwxx5V0ZpgCL5J
	 wygUn3uTAS1baXoXIt2n02KQY6kMFp5CEjXHeTBrUJfOboUOyKr+scOqIxhA4QbOgI
	 kUKc7pMTy0TWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D6F0C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173749895361.28966.2187705269522389475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2dc838d142a11cc59f76278d48588cd65f821f322a9f82e5bd93a6743b5ff0e9
Date: Tue, 21 Jan 2025 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737498953
