Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE45E3806C9
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778412034; cv=none; b=XBWyYaD+w9rzTjiBUbyyvn1lkdgF96D6H15owN0wUAkrU4h4jqlJBZXtqizTX8NEvDMe7HClkU/qEx1FTw93jP3yfMNpz/60qjTe7AqMAXzqqv8eFb1tQFMY9O3PyGmkPsVZqtY2O+rPGTeO/SDW4tyhFKIN6PjBhbZItvT9Kzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778412034; c=relaxed/simple;
	bh=fJLIUTPiURm89EtHIqawVIzNWs1iIWmELNHUtHNYBho=;
	h=To:Subject:From:Message-Id:Date; b=YGjpi54VihNj2n2j+WIPcoZsi9TbQiMVcgJu/QuyR3oWTzhzBXjjQXsDwMVZypRH01V6CQumKcb5rhZbeowoliLfsVNFfQyTRySN+PNNh3Ktn0VVlGz7dRmmiXgCB3Cd6qskoo6krZizsK7/uxqgd5ErD5zrlfHZ7D8qevS6UFo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L4yt/o6o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L4yt/o6o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0805C2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778412033;
	bh=fJLIUTPiURm89EtHIqawVIzNWs1iIWmELNHUtHNYBho=;
	h=To:Subject:From:Date:From;
	b=L4yt/o6o2HAdLBX9GOujwZyoUituFXdTPsFnYj11LO3Yfbg2svStPCrVDau3SOQTj
	 sbVBKHWFrDR2rNgSXp4d8XcBCcyVEoBXCAtNuyuvJ3Qqxw+boX/pNEMmb24eBafiRR
	 jYSYioPLoKUmi0RgY7/or+CWzx+e5opcMR7lrqiXpc4/4oZPN7TyGkcY7I5Vveg3R0
	 3njTwo/XeZwZrzkRzwd3FeSaxItkRcwhnc7NvvVh1TUo74wRXAsDCM/9rscHOMefja
	 tjz9bz68mbUp/1i6JYgMyiEkGbamthUhwtiOTeIN8hTjXfKwGWgHz9UVrF7No6X7uk
	 6qzYsqWPiUA8g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFC5ACD3427
	for <ddprobe@lists.linux.dev>; Sun, 10 May 2026 11:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177841203368.24322.13695534306794710697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 425f8ecc4f6943cda0427cf50e569dd44cd14059855e63f4997dc9db20b2d023
Date: Sun, 10 May 2026 11:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778412033
