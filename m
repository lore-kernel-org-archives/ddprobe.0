Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B4A837C918
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781266594; cv=none; b=Mdtk/8oFnLegb7zFLhTMjV8dP5vi5IZtyyEfFRU+gfCxu7jqdEguBdrhe5AbYX64vCbxYh4kBcXFmaL9/CdwgihlBJkH6UV5eg5nqQvHuD+fSXXQGJWscK62ifOELkXTnvdACR3jWL+Isexb4XwYYed+wfN0hXIMvHKYJETJ5RU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781266594; c=relaxed/simple;
	bh=rf72umtt4HHFOldyLcEeAHGUy6TE1s8u6Dzyt21R/Kg=;
	h=To:Subject:From:Message-Id:Date; b=vBml2ma/rr8OYurxXyQENPR7Gt/hyXKq9EM2jbm9Xnldp4F+b2adAl5eD3/JEZuWPU3Pv32VsEs779ZNGmZv4pjaEZV8vbcABqJichGoEM+zJHUy7+r35IARQBWqJLy0b6r3LvwxWEBQWWRagm9lj/IqXt0oCkc+zqi2awuVPOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GKoMSY6V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GKoMSY6V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C902EC2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781266593;
	bh=rf72umtt4HHFOldyLcEeAHGUy6TE1s8u6Dzyt21R/Kg=;
	h=To:Subject:From:Date:From;
	b=GKoMSY6Vo41p9fMpFgxwH4X6+O7hmHmOeemVrYSU6YSzAojBQvBpdvvilrGBSNbuX
	 W1XaZN4lewfyWZDE/jv1rvdfQ/myCy3A9o9pag4qCtTpXDcr2lD6gZxCpF2wkeKa/B
	 x82vSiVXCXB+V3MmT1LUylgJH/DxW428AOKfjYC/SUFFP7psWAo8Z0XP/j2OPNuNIX
	 6MesSNx9BZ6G+HItzH0ojDBaJy38pA4Lu57tcQ7mCvaI9ZjRldVs1d0nTyEqAJrp0R
	 EXenhZKhFg/7+OkVgvQgVmmirAdzGXhD85mprbv5SLo53G1AueFLWOkQJo07Ztul7p
	 Uc57K/vkWJBAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E13CD98CE
	for <ddprobe@lists.linux.dev>; Fri, 12 Jun 2026 12:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178126659368.6394.5621281935948630549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cb018542cf78c8be61595752f9e23efc73f768730d29e4bf24ed18ed2741751c
Date: Fri, 12 Jun 2026 12:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781266593
