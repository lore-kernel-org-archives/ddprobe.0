Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 358AF1CB332
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740826134; cv=none; b=ct6t9myaiMwmvx4XKgEOdjOLpLQrFrgsOXUilDcwXmNaoj7HhGXvjwRIdA6DFCatUTJvrYFCgduq40Ru5iLzPm6eW5zR37ACWhOAvj+vixEWY1cjBSVQysxBrmlEN54MPbwmoXdGI/A/s+pi06u7YpNO/jXFNzFXlnDGFsODvGE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740826134; c=relaxed/simple;
	bh=uLwDNaBNQWYgL7z/ExhcQCcUrNtXVDiELBirDDAh7rc=;
	h=To:Subject:From:Message-Id:Date; b=KKcc5jz1wPUSyxrLMyPeCbMIM8tIsHLol3tEc5E5NZsKnTKQx70WVVK8BA+ubbLvKeOZjhdawYnhNuXcMHrDi9MWRFivWUsAPNGTr8M6ci3JVUmJ7I5pVMtSpWy1X71VaisrFEW5DnmTfqVA8upmrUBgFO2eOdDHQuvJmx6Gvxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oaGFV7NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oaGFV7NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E2AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740826133;
	bh=uLwDNaBNQWYgL7z/ExhcQCcUrNtXVDiELBirDDAh7rc=;
	h=To:Subject:From:Date:From;
	b=oaGFV7NROj8MGboB0b6j614q05NGZFF6NzQwc9gWsIMHJFN0ZSKbqC0j2TXX7496c
	 strhjmibx3kLhHuUd427izmHLWYO2brtCLmonfALJ4gsJFzWcqd2lsCmrdQ/voj//F
	 mUJBlAO7i/TP/MFUHujlpuw19YZ+vxdlwn+IPETfYr2kiP/Qx1rayJr4sUzwxq3li7
	 83BDey5UXP8RbZIyytTR13LJ55TyG+4VKPoPgsRgJSQN2oj0MEKK8RJVJVRSBgdnQt
	 j0ET35CqFwWXtFg8tEuId4lwTmaww/Xj+k5DqR/qflFwxGjEJeLkiMpQvNgjp4iac8
	 4HwOzMZb70R4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 940B0C021B8
	for <ddprobe@lists.linux.dev>; Sat,  1 Mar 2025 10:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174082613359.28324.4677319960067926739.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34f2d9f140ef2823c9f821da08ba8d8e94528de1422bb6c8a1fa39b6ed9d2c53
Date: Sat, 01 Mar 2025 10:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740826133
