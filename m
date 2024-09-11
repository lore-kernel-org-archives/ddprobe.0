Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D18E24A08
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726020955; cv=none; b=MZPauzhBrPzaiLOi1liTF4pOacJud58kZ8mtQYZqSQ2f6n5H/IxAgjhPw/iavuuAfRxsV7YPumkX/U/+0Hf+xuBNKyfvI5dIozG626Nc6YLxtEZ9ASFsNr8qxH9FfPsfAt6paTlrLB6NzcnAN6tVQLHOccfkX4GObs0Aig1youc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726020955; c=relaxed/simple;
	bh=ewXHXJS5fFuTiqPICbbpBxatEtLvamC/5U9R4di9FBk=;
	h=To:Subject:From:Message-Id:Date; b=rAaHA/hdoQouk9AW1Jxd5p9I0BBkUG/Fi4lzGATRrLZ/bmYEp/3OdNUBnp9XmugaDhzRy6Jyn1It2HxqsYT2E25AcQqR28XREglfmiPFZohyprgVlvqQGiRnZPHiilEIyi440wRj1wfLPIAKZE18VUFBDWhUaNZrkwTa1j0Lv3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SovPudkU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SovPudkU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB60BC4CEC3
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726020953;
	bh=ewXHXJS5fFuTiqPICbbpBxatEtLvamC/5U9R4di9FBk=;
	h=To:Subject:From:Date:From;
	b=SovPudkUzlQEJxLituaLSwvtl13t7jgiT+XmGtRGva8yvYQnXJeGRDqklRVPogDIz
	 gdL3DIunLI3i3tvluxZkEcR4WYoAzDveGFcOH4B4wNbvDkU71ZWJ8fQ7f83rWnw+9a
	 FZZFmjfmtK0iFH3YzgjhVTl8eJICSKcMRnzQCv1YYVfC+bu8ikMsmMBHpfaOSt7sq0
	 pei3LpZx7z89rX7pB3WUozSTpTJQLGu6LYCfR4sy/5wh2OryGfHBf0wvCf7j7mrWaZ
	 fcNFQmGp96MLf+KzvgcYJd/jOA+bBXmlGc1T/NRn+E+xziw70hefae3AixGMveM6ud
	 etQ7j8YcsjBFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9879CEE01FB
	for <ddprobe@lists.linux.dev>; Wed, 11 Sep 2024 02:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172602095361.23368.17707444978484012894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ae684fd24edde1f6821649d67f616c2ec044a7ce6f09758146d61c7693eff7
Date: Wed, 11 Sep 2024 02:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726020953
