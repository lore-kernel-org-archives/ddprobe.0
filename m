Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 370B91773D
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727746554; cv=none; b=n3uXXq/4D+3knp81vRJCr6atDpAFvtrjbfSCK8ItbB/9TImYNjpq/JfTrahPouh7Zh79DKa6IHSVZ6j5ISP1LDWBk7HtL80Y3vxTEFH/6ug6CZZ61O9irHTadZUAUSs/fzdvr7WrEiWEPP1Q3RhqD4si0+TLvAVzDu1KQsk6s6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727746554; c=relaxed/simple;
	bh=8i3JSkn0luTz1VTw4jI5VJZj1UaWfxkPVvFioiVSdz0=;
	h=To:Subject:From:Message-Id:Date; b=NYyWXSwv6hB29yR0LASRWlLBAiF7L7M2j1BVQSY9MIXzdE731FHXyX937gLapJIM6wI6nQm+mWE8bUWdwBDgyqMbrJ1R2sZ3JJUXJvbMraXroeLLh6gi1Hf0WfnBoWUfNoWN9AUr2cDSRb5pJK/5awcCrUv5J1/jA4wpbJNcvRc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M++ql16N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M++ql16N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B351FC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727746553;
	bh=8i3JSkn0luTz1VTw4jI5VJZj1UaWfxkPVvFioiVSdz0=;
	h=To:Subject:From:Date:From;
	b=M++ql16Nfvmm85rL65S1/hjt5lIyq3SoyrOvcuVhXRfEzCjZUBK8TTniwejUVrbM4
	 +Y93VnOWNgnwdOc6jXbM8ZkhGjwj9haoGyXt+KjrTvmUyZ/TYB9eFXulTqoNnEfzNh
	 7SrY6olfwhaainxrHlpBQC+Y+fYpgX+thY5DgjleQ+WKU/fV61o5ne1o34FFbK1KeK
	 m+nCCuvSs9DN1KSQMLCCu7M5L9TbM3dC3aKAHL7yvkaop4EKHW/QWR73aQ5Goz7DwK
	 DlMlYCJFscalABjLrtuDHlupcf4n/kEY1tiumtiSjolk/tE4/2gw96lvKTcwisVV45
	 8ILVMIswN7YiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F278CEB2D2
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172774655364.8569.7495260454763973251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8d33d9a7b5448293d850ca997c545ac6aca0b9ce0c1a7498038e912f91638c02
Date: Tue, 01 Oct 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727746553
