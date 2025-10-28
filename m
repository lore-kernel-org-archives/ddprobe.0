Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33F4920FAB2
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761658794; cv=none; b=IPgOWf4aZedwnnHrl2E5h8m7sN6mgLMhfQ4qCZstxhDqtl+SA9dkVMI5SiM5k/Jt2eyNeuVZYMm01pdFdKcUUEc3WHnCq8mgctQwrappqkkrwqx2wOODu+4/5/8NtqqLrxCBhoh2hz//shLTyJo5a/eoJ3OuQr0aS+pt63pdT1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761658794; c=relaxed/simple;
	bh=QOY9BsrE/XjeccRMdu7EvU9pLO7yamGRIMnWmtvmk64=;
	h=To:Subject:From:Message-Id:Date; b=tSdXJtCT9W+i4bByGmn5tDU3lCg9m8ctYPEWzrhWz+ooHjKwLOCeQkb8cfKdBr9hsC2MT0yySVycYl4eIgPyeJb+OriUEI8o7kOPRsg0Dobb/otxfDSC3l93cTIyjrawmVExF0e5BQ4/q27+jBG1uBbzhhqCsQ9YMIkZRcT5nAA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q/bt+8nO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q/bt+8nO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5979C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761658793;
	bh=QOY9BsrE/XjeccRMdu7EvU9pLO7yamGRIMnWmtvmk64=;
	h=To:Subject:From:Date:From;
	b=q/bt+8nO7HyIqqGAYOcOplQFW0IqApU8kK69RZUjp1ztXzc3QxK12ATBpBl4L8Eyj
	 NW6nvO5ospVVgkpUtjlDpQX29fyRkLlXreUJplv2CLoHkYZYDT1M8mZF92c0mgHJGT
	 DlsVFt5FBH8JauqdaWDFAEMPnbevNhtfZSnIsamYFHLcT4hQfUf9mP63Thgqi3jxZ9
	 AmlPZ4LV6/qtbQGQLKIpukkhoEZj08cWitWgMrdX84vFtITjC93j0Kw252fyJGgCA0
	 jl6srGjuQqowfVx5ucWusidneGtUxg+fs3Saf2FMbkCF0Y/a3na9nKjYqXSr97vFTl
	 u5Kj4cYBP1BCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306ACCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176165879359.23222.3202781228094093329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0043ef7f4273542f6d4f69a066ac7de981a13c572a2a6d304027f87ca3405a3b
Date: Tue, 28 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761658793
