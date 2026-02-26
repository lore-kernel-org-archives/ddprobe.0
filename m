Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AF5850276
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772096694; cv=none; b=rRd0jFybL3jTKBaV382az2mDsVY/9T3ux/6Iq4o5cG067/GWBZNuoK/qiVGId2e0C5lCywunMZ5gKVOeFICrGsX+Q/THxlP1mUeqOpFTpLJoWwxeboYWfAcdVStJ0uoH3IQOlCaeB40iFkmR0vPXd2qSyNu6Z5ZD6FeLOX67UiQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772096694; c=relaxed/simple;
	bh=udX8OoBu9CJxH8Qkpp0ugVGPl+j9dsATY1+Fxa0+sPY=;
	h=To:Subject:From:Message-Id:Date; b=EZdAXnJ2HZ1S+e/STSMs/M/woUAfVDqDMYJ5T5mdK++fkiId88646ymMMKcn0dqr0rirZpgSow8c+z8hPL++BCeteQh4k8IdzNclZ0ls8CtjA2UIr3HXb7YwFIwgkBup75pYSoP0IgbypzhjdAY176yb15zoAQizYHj8BeBnoGg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ooj+LeL8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ooj+LeL8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB909C19423
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772096693;
	bh=udX8OoBu9CJxH8Qkpp0ugVGPl+j9dsATY1+Fxa0+sPY=;
	h=To:Subject:From:Date:From;
	b=Ooj+LeL8npvbTVX0aEjwE8AVvkJASi9xhOMVDhN4dj71lgfambZRzrovir2fy9z+D
	 uZ36AdofXljpf8L82uU3CDVWY0E7t0XgbFsaqZd0oRZGllFVCaAH+P5Lww/Wn77ZgA
	 XbC/eeZg0wWAKiYY2ZyfGBo++VYE1JcEkrR2XDx3TykG5dVAND6/p2ut7DtOel3S/g
	 I9dGTxLvkX6IaExVRXlq01A9/HHU4AgSujv0afRg/V4mW44QjEZ0SS5tz1ZEHLvB9A
	 3Za2IXq44jDoWx24HuueBr7+cJDjFBbgwVIHuwkelccrL1TJkfBimX48pnbvTOC21q
	 dd28Vk6vw8NoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E23FC5914
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 09:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177209669360.1898.17980871183309059254.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93cbac58d8b70ff5f20802d451674bf97d0076394dd50a2b55782b42b5888319
Date: Thu, 26 Feb 2026 09:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772096693
