Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64118288C34
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:23:56 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769135036; cv=none; b=bfAfPpTWr76dwx6JsTGRPBw6zXCq/S7OEjJ6Tfx51jpbQ/aHgIyDeQFL6V6tIamLyuuon9PBWrnFXd/AIuaxq4fnQnF1krsQx1aFTpuxzb4cDcVi/FozvJXNmFHGqbSizOHw4y9uOtRFqhTvwNrvwhFiNkCsjU9/+YEGxk9aUvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769135036; c=relaxed/simple;
	bh=IvY3cw95IrZG6EQzx+vRJ346YOzO7AKiMRhwlEF94V0=;
	h=To:Subject:From:Message-Id:Date; b=uT0TN0qoSL1P46nHL6zcu4CsKaFK2ACj2BWgPwWMES8Mnp3iJCLJDdwoVN7TdaSvWORArGTId4dN3eAB/yUN/bvVS6BM8H8Eia2tf9j9ManSebQNjAkAmbGeec2VUSzYzOvoRyFlS5wtYmTk7lj4DIrrF4yFtzETHlfS0URgcb0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EDgBlGcz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EDgBlGcz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5FF9C2BC86
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769135033;
	bh=IvY3cw95IrZG6EQzx+vRJ346YOzO7AKiMRhwlEF94V0=;
	h=To:Subject:From:Date:From;
	b=EDgBlGcz+tyh6F/yylz21xO3kwI44UP0Fd6YwYxutaG3HuwQMiQEgMw566AV8xWpj
	 laIQ4VtP9iYfpygLcsvMXwDQFfYzWxdxkApGOYk0FXiVEjjbZvykuj/3rX0pKae02T
	 E4SjTnkNLiqwMcozOeeXtgrsjJFMozhbrjmhiPTaFavmbw9W91ocn+rp1D4gJAvWpC
	 qi3Vzvj2Ba0HYjpL9GPZBhSGDHZYDfq5T84fiGEQrE/LmjIOAAabCJ1DHglfOgjDBo
	 NiYE0twyNasNKG/mc3TcZk7wCXej4zkjUQT9fYqGCBXAjIFbtzWIU5lf/wXcahoJge
	 gCqEm1BauWjYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9287BD6CFAE
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 02:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176913503358.12691.1610565267927466021.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b252540eb8f30672f6263354107bde3bf23e76f69814da61d498745bd336fdfa
Date: Fri, 23 Jan 2026 02:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769135033
