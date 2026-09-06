Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586BC14B950
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788721834; cv=none; b=eGNVRT4Syu5ngtZq+Z0zTPWSiPO4yxrwsP/kJStkPTyNUgmAAR8OnLB8jct4o3WO1f3u9KixEqroFinAqSvo+uKc/AV3mqWVLxRvkg4ZanMEV/SvGSGCEdPZdiUhu6TnAr3IlcT+99pojfv2x/F8WK7uB6QWnzvgDbCpbrNw0Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788721834; c=relaxed/simple;
	bh=6h4dg0++XIg4CmuEDOCGO9ME9SnltFC5Egej0+pHFEs=;
	h=To:Subject:From:Message-Id:Date; b=S5AGAjfevbUHiKMK25UTxis7ZoH8kJg8s0xmYNPyUoRshzixxFbm/L7MY8xHgrdZhydQvquw4fATWICJ/2zVYykvJv1ijHEJY58Q3eeVQqOeewERQzCDeT6cWvQsKilhOZx6w2CMa/D02rdQCqNWT2S4vANbthY+NdYHy3+7Zm4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=srbrTyAa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="srbrTyAa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4161C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788721833;
	bh=6h4dg0++XIg4CmuEDOCGO9ME9SnltFC5Egej0+pHFEs=;
	h=To:Subject:From:Date:From;
	b=srbrTyAaPFmEck/j16cWX4xHgz+3N8a0BH8symHe63ma5wsfx2ghKZ0PHf3biP7wK
	 HZzqz6UAtEbc+SWbJLWcsGJQDdSYyIwS2CNRNxvfk4Bdienlc9BJt8J5VEa6Pc3h6r
	 DEub+lZzthC3rJsveHITrmUrEfRVzuSWf2CxlTcQYslzkd/stbxrkz8NqJ76Wdrjel
	 fuxScHPgB/RVSJQYvitBsZRiXjMFbAvWpnlAhmMwSh7Ob7ek++TknRfaNL3LqUemH4
	 D6vk2YEJOkOLxc/iLiBE9pqfsrsHPGZYNtNvFyhjTza0gHEpJG8fcpONMBsphVNUoF
	 SIes6XUS+ogGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFFF9C79F9E
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872183371.32535.11313371421373104164.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2214c2b383218eeb88eb5c5a70371752b23c37c373fbc16fae012efb1663c7c
Date: Sun, 06 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788721833
