Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2781818054
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731875754; cv=none; b=AagdPTIxGDiqga502LZJQv+CWuWT0xJi1oHrN6JomZIcrY2WQcVp2tyYtSmhafTFVK9e+9+dymGKSftPtIvcyJaZqpLiUAm1UPjC+SP6jdygGCT1iQyjXK+hFGrK0fqkWLvOdW/V0Zxe3R01mJFofw62slO9gWRCmD5m5unU/Dg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731875754; c=relaxed/simple;
	bh=Qrd6eXqiqbFQZzj1Vms643rQaqeBEB+Oy+FoGCBnTsA=;
	h=To:Subject:From:Message-Id:Date; b=QQmXAi3uzNrQp7z7KcwVLTAmAkLyBnJ0vM2TR8lNV/evoUeTgJpCPNPMFMJsfCla35EVUmYhWDbnhBEHrp+f2HFpNrEhJKZI8qmmcIkR+v2qKaPbH/W9WrSyfWaB0IGuj2QzcP87pIaOwdECKnZ55cESUm3o2vCvX45+ZFtRuak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=anCl156C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="anCl156C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CB8C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731875753;
	bh=Qrd6eXqiqbFQZzj1Vms643rQaqeBEB+Oy+FoGCBnTsA=;
	h=To:Subject:From:Date:From;
	b=anCl156CBlwL8Wetx8UR7d9NbF+gTAuAmzWxcaTx4hiEGYS49jCIxnKNEw7ThJT18
	 0EyB2YyYTGGhDvpNTiGrAVE4QDxHNcS/iq5hXBnbK02Kty6SRC5/0Jtg3cWYZlWJaz
	 OjjcrMqdNi+DPTWsozLGG9u4qStHKynuQuNeNCN49eoTK0Pd/BLOAgZsdogQ0maloA
	 TE+or3UrQo+0v4rBZS9GS7SOlGwWTcCqMsLqebDnTzujCdVCGbNk4nRrXRjqzmK+wm
	 qOYSrbJ99oWnCujJTE3mGnexe2OKtgCik+ujrlXGvrSowgVLho25XV2+HQSCy/+owD
	 4zYE6RZmG9i1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945AAD10F28
	for <ddprobe@lists.linux.dev>; Sun, 17 Nov 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173187575360.9662.14000646838630779443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab8020e2a6a134a7bc5502581486a2c7421f7f512f5ad2ed1196131b1bddf38
Date: Sun, 17 Nov 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731875753
