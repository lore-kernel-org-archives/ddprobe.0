Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AD2C2BCF4A
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759214994; cv=none; b=XXyyHXr7h3ECfu0V81HwTrWqDrsQkTcTozYbPUGcnJ7OCmfDX7+CkhUA3OO5zTOznXp3NWMoBXbU1gtXvzoAmyKS3z9GINCi7Bbo0wyVqG4mKSpjrJwes8wA7t7cHXcf/iB8hm5wO9WgKwQtGw8fNidWVX1HqQTERSxAdRPoin8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759214994; c=relaxed/simple;
	bh=lFl1rKBsNceoxZWhcTbemlbYY96H8M782y6YXAQ8uwA=;
	h=To:Subject:From:Message-Id:Date; b=q0XQylj3uaY5+KlbZTs00u2THQs3CJY5ahrvcE6rNJ9Wu8W79hPl40xCyoFYRzvgr6R+ydgn6XQ+kR68VKqHnwpc9D4EiMYJa8ZNRnZ51UgDLGo95CM7wflGKKeLN7+buy8Nd04TeoVC1+/2bNeLgtHSaptSacXk0bzCv/ObPbk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lmzt4Orq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lmzt4Orq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51F1C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759214993;
	bh=lFl1rKBsNceoxZWhcTbemlbYY96H8M782y6YXAQ8uwA=;
	h=To:Subject:From:Date:From;
	b=Lmzt4OrqnvadVkiy9v0SdGtNtJYBw4C/GnlT4jIi5Noucxtup2/TPrVJY6Me6NyFo
	 g1WN9mRjwTB9BnA3MNmfzUBRdt/ksV8N6Nf2mifPmPnpM2jN+7fS/RlvNp+20X+vhd
	 GZi/NQnDcYzpIufFr5ZWJ3DBRmsaGDHG/PhVyEIsiWIlOZ5V2IdImYj3ZkM7Sfun3j
	 vr7uK1UKl7cEQS3xzDT7o9jzP+6ESwHzGXITPooyzyTZK80O5BTPXCuaiHwKdRlzG4
	 vR4tYIKfAosua16FmToBqpkKXY7NQ7SIC0/aWH1psNnJVpph9pEtVoyRVhY7A7pgDJ
	 0BBkzWFLB9NbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB4DCAC5B9
	for <ddprobe@lists.linux.dev>; Tue, 30 Sep 2025 06:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175921499358.13535.3045999617272800415.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6e2ae86432d4493cfd3f62cb42927b6ed81bd6ae53a724178ddbb7de92c49ae
Date: Tue, 30 Sep 2025 06:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759214993
