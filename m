Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5AAA3B64A
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721452554; cv=none; b=j1n9RfX5iIyNMbVIPJa+JpXM5WCsJHZKUubCLGepHNSRZmmidha3BtZ/SBD2s/BzUAu7jGhASstfbGgH9hHop5yghsNtqHcHSr3vWVmNuNVcNb/SjHItNM/HErgrQEeOymSforZoz8oxE87RPJwtwiVfMFNrvigdISAO9CbaDG0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721452554; c=relaxed/simple;
	bh=Elz10FCcUF7keq60pvY1eirGHG2T0tTsWJHBs8CBlsc=;
	h=To:Subject:From:Message-Id:Date; b=UxariUcwOLQfKefH1u02GAAVMXCXwvv56ojlfnT2CpzkKCuQ5o2lKj76jk0LF3/jBLJ1DO6htcMmm6+H9Ht09/nhrC8noK8hfGdNKM3KBw9hULtm/nyWRc4qCiVShdek+pW01bg76eAEfOtl8OfKHVPiel3r+BTc9zBn/tcalqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cob17Zzn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cob17Zzn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7F4C2BD10
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721452553;
	bh=Elz10FCcUF7keq60pvY1eirGHG2T0tTsWJHBs8CBlsc=;
	h=To:Subject:From:Date:From;
	b=Cob17ZznK5VVezUg28/9tfk8nOaTKKTb2jqAykRY54GI5n+Bgjz/KHCsTpIG+kWZF
	 /a/CL8BMajYX6XAk+s3yXYW3U9hjC+ijgMfG6PPdkoCA7Pq40wpiriIarKvGG7Mhmz
	 SYtz9OhShInhBpYP/nAJeo1Wshw6MB5vrVmZX5MOmZXE2H9T/nCECIsVvpb/VhXbXg
	 ml6FJ9NZBRxsCu4amZg4zSoyN4KqISDzGfBvmqO1UXw9yDZM71qpHh7aPRZmtn6iF0
	 wAyYT0hd9oxqCbAVGCt7db12ZxiY94cxCCBN40LQYoNYApeNnsJH1uzjLTiyJPCMAs
	 Wo1UK+NXXIfXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F21BC3DA59
	for <ddprobe@lists.linux.dev>; Sat, 20 Jul 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172145255361.12795.7239762228573066859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9fd83efe219f56b08cff8ac65ab9ad26f085ad855931984679388a9b94d7849
Date: Sat, 20 Jul 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721452553
