Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 534C033E348
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777427254; cv=none; b=ri1sSzbemMT+/watVrfUFHPEyAUxCMr804N7yCRvflOHqjllsvJQDT44hhobFcYeq/Q17yo/RiGuZDcJE3HIZNtUxwJ0fczfwCVluJDdTmYxk2iDb28SpUs0MNzF+kv0x1Scs9Hji2lgOGV2+cf4qeGrDxFsfhxQSYByInJYZiA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777427254; c=relaxed/simple;
	bh=H6VnntzjSA/5IFHkfuRMxJzjt6OYKbxdlbLay3o/3GQ=;
	h=To:Subject:From:Message-Id:Date; b=pKCPk9hMThzblEwy7n+LPNEnMaK8efNkThy/D7BQpgchv8RHTQpJy81eMx7Y6/9g4wr8K1j3YH/SDlfxF584OhuvvR84sL7jxmF/CErBNypTWxRBw+6DatI753zNcFju7FU0kEqXsK8WdRY4KYl2oizEpHhYc4psBOp2MSuYYN0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a/JSehDb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a/JSehDb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8337C2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777427253;
	bh=H6VnntzjSA/5IFHkfuRMxJzjt6OYKbxdlbLay3o/3GQ=;
	h=To:Subject:From:Date:From;
	b=a/JSehDbLgVXf0rqenGP88uv2CGHDd0iWKRdRCHcJohpiloOSJ4MRl0pPfnMrB4me
	 Rt6su1pi3Y6/FSM9rhuX1KT2rSAPVMoFa4sfe+w6ZI3xLLyb1pGoS9ZacyviyT08ou
	 fOZVQt7KKwUdE4rZrbGF7ez0JuyY0lzVo7CIFIulnBaOsOt675fpUJet1vGxij7Pcn
	 DJHZlZhRGU/aMMZV9/U0uSwo+l+ZLKpNHPj1Yp3aVghl6GROCH40Jnet4lZN8Fy3eU
	 rGaT3kGMhj581qb9CT3EychKenVron5skms1fMTLe3tWj2SBzl8iTtbX05DmD7gNM9
	 YEZ0M0PdH5PoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A945BFF885A
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 01:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177742725368.20367.3333975912960934752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61d92fcca476d264367e14fda32b007d1911e4440b1f903e10baadde0cb692c4
Date: Wed, 29 Apr 2026 01:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777427253
