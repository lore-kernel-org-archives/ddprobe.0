Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31266220F2C
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769953434; cv=none; b=SfTBpy+e9ueNUfXGmsNeuLv6SiLtCeStMBr1B9Wo8UTCujgWESiVytOMUFn+7edXKBJRCytdZNiVOTDXezqLTslgysQRb1CcGOs61dLbTmAMjhNW7rWH/qR5ccO7vct7pGSw85v9UieHFcH+/UCCI26IpAggAdn7fVj0TNK1svA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769953434; c=relaxed/simple;
	bh=rTQLp+AKAr2AKhNP2fs+J0w6EfDz4tTGCFqVCq5TmJE=;
	h=To:Subject:From:Message-Id:Date; b=SrovhPdPWPV9lxVC4CW2KvF4fltzzK0Xwp3RtXMtBINMnOsDHKBZPI/s/cKnZ8hVjAEa56RSbUwoBPfyMYvXJSthTMVY2rin29nuZ1fY5SxGpCqm7zSONGVTr311GpWTPVRAFJDds25wrPRJAmCALuNupQ7JczAsng4aUpHdKgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VkCEsA6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VkCEsA6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B12C9C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769953433;
	bh=rTQLp+AKAr2AKhNP2fs+J0w6EfDz4tTGCFqVCq5TmJE=;
	h=To:Subject:From:Date:From;
	b=VkCEsA6lJWSm6cx34j19iMTMpTir4bAgzi4N+lmpw2QD9MKsaUMDeYv+Qrri+Hfh/
	 sVRekzL9h0kqDUNt7M110RkVmHxWWmuWanaRQO6ELv3MSi2uXvSwDyBDZNnAQo2rbT
	 8D43L4kF872ADptFxjqzP4Isi+7ntaQEZv8FYFFEscMK1BGxoyAKe1SJtDM6OaV3zE
	 VfzWi2wYAjlQifHUkTFxirR8nshaTEn47njNfNbFuTVwpv1Tgm82jwtkX1O7/o8F+m
	 3Zj11cPnc2mu5frYGJaqFQuIVgyN1yU/t+iEVXXMbEdYdCrvDlV8Xt3S8nsxYFt0iw
	 G99+29RsyYbhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 995BDE65264
	for <ddprobe@lists.linux.dev>; Sun,  1 Feb 2026 13:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176995343360.11746.6717138944589567278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab5373a2df3ec2591caf9e476cb69324da424f309988cdf08ad74625192d311a
Date: Sun, 01 Feb 2026 13:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769953433
