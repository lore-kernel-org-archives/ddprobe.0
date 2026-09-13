Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415BA374721
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789308634; cv=none; b=qYjIfgoUh5T8JB5IntHf4V1ETSm6ZoJwr6SkcDr5RVZJ3Hh9UJmuP/b/K76tDbbKE+cgvLoalWjMJwIs4YH0Ce6RDOpnh8HVU4e6i4iz3fTJekSCnjjcxWbw/gxOhOxUXeqp0I2q5h/+Idy1P1ASB9ahsvgqp51tRJrY/nagIeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789308634; c=relaxed/simple;
	bh=L1F7ykFRUzdwOc/R3yRLFcoscO6ArLueFEvWXQmAUuQ=;
	h=To:Subject:From:Message-Id:Date; b=CFNCy5/xEvLoCPmArC47IBOKrsw6fZKrLsFAQ7V+mosRPyFpEjzCtHE3Cges4PqPs7pU/ZYA76QUPUWrQigWb5/8kfBsDxBIAY+Ssy8llJdaTXMaosN3c/ypnMstJypNnfIUHXMkV7iGZpsSzBE2VxvdHDOwKde3jaVxAVLs6Ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZAOufP0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZAOufP0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0D1CC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789308633;
	bh=L1F7ykFRUzdwOc/R3yRLFcoscO6ArLueFEvWXQmAUuQ=;
	h=To:Subject:From:Date:From;
	b=lZAOufP0nCQIKnwVo45CZDFGe5Uxmpjkkq9ktIav5ZKtb8boS6TGVB+qAmli4zo02
	 wjb9AMtbIXi+CYG4Nj/U4auXFU1dxknLzWQ3/8b9YGeIxCHfoOBBBsTTR+5jmpUIyw
	 wl9re0f9aUA0HGdBHOtZq9M/2J3XlOMbCptT6jvqG846C5TkzoFwULN19/O7nqDraz
	 jh76cpKQQ+aFMb+Zb6s8X9wZ0qsqp59k2Ns+XT1hS7qrloS3POXodoy08DX5Jx9a8s
	 xGv2/emsZJiYtRGu7epH2IVJnqFiB1D9naxq+bAwEyjvghTN6RXQzbQjTq8FFYrv0l
	 tXor9N4Q7HRYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC044C88E65
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178930863368.10666.13465212600810400728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4daa9e0d5504288262cfc963d12d6b48017af2bb812ed7a64d4e7f61a3e3fecf
Date: Sun, 13 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789308633
