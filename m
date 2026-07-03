Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4382117C203
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783040314; cv=none; b=OlTYFAmsmTipszpYzfkvSIaXVldMwuMv9L/e9GqY7L2kq1+eeKHDAbcRHIVhUx5C3AXZE6wvSuDKM0juk4k8n+MgsjANQ3g/5Y0LJZSothR4L9eNB8rJ5xJRxS8NABw7Vvw/ZxMlaEh4sCMf3dZhlfe1VPPOoGQweZ21VAQrshY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783040314; c=relaxed/simple;
	bh=ymZ6zGvaUGhqJEg4C1Z0j7auCkSC6pz0f604O8CoidQ=;
	h=To:Subject:From:Message-Id:Date; b=eY6IaWrE/Jy4iPWl8K3AWMXg0Vk7XGcTbTtXj5X6Zaq+HSFo+CGBLI+DLjuDEX/HukQnlzzUv9ce529vDfrt7FvFzovgKOdXHm9//Ci4yTuGfzOoZeB3OYFjM62ApkAP6mKJ69f4qUBlmiDa8Izu683U9WF7E9nKiiM+fkGgEtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k27RM1qC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k27RM1qC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7BBC19425
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783040313;
	bh=ymZ6zGvaUGhqJEg4C1Z0j7auCkSC6pz0f604O8CoidQ=;
	h=To:Subject:From:Date:From;
	b=k27RM1qCtel3mZY1ytx4o/vh+ectJ7M0C2DtFqWlTV7C0A/yGW5zDiIXvx5IJvVAK
	 lKqKJ+gjJjgCdwYH0mAwgLlwiU8RTcnQDI062unvSWbtdBB8Q/IOhRhNIqpu2Mlnlf
	 VipV9NwU0SBqUIhyyx5VstXYp4t8wDDfLpq24UFG5hocBbMUket9ZM1tEF6oihLd6w
	 NHt7xltszW1y+/qnv6gU02C0wG5mT9PguGNBfhuQ07gXCB6QqqXFoV7xUpVmJ97eyL
	 Ss8MyVi2EQWiDAZ1GC0FHPd+QEyYYQlbMWgCVfITl8wO9xYgx8q7FufZYTzTJ6HKm2
	 npzFBvoZSq88g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA691C43458
	for <ddprobe@lists.linux.dev>; Fri,  3 Jul 2026 00:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178304031368.6009.11905484328557550676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a96051cff0c76516af0696929285453f1176adc0157b95ad28f2885eb327f75
Date: Fri, 03 Jul 2026 00:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783040313
