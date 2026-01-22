Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369053EF0B8
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769057034; cv=none; b=SEcpQifNeYVGRbpB+aE4UJHOa6j98FYJopOb/8hu0vu6dH3CeeiDziba+wNQaGdYeDPKVFfSI5OoL4KLRMgxfk4hHK7QR1eqGkij6BxumO9PVNBYWOwJGH4rbeXVrffr+UsXyyQSnsdKWb3QphHeiaAbrwLhydeqfXsZOEXY/pc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769057034; c=relaxed/simple;
	bh=MSsMENRtQ4qlSmr/izjd9xfx4BqD1WHi1+sAzn19Xpo=;
	h=To:Subject:From:Message-Id:Date; b=h+VRAxMmPps9e0x9EoKpk4LjikEdIn0BpNhg0G5rynuqC5tkROaVZ2I9PnRqOf9kaYLDMPS1YsAmlp+IH0GSwpRQglz3iJOG9n73Xxwle2rfCBVkol72/0S4FpiTlTJ6qfm/X6eeRYqzJgxYijd2ZNmn/KH4pg/NlcZpgO16v7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qE90qgHu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qE90qgHu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78BCC116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769057033;
	bh=MSsMENRtQ4qlSmr/izjd9xfx4BqD1WHi1+sAzn19Xpo=;
	h=To:Subject:From:Date:From;
	b=qE90qgHugZKMrxorrs651XnDEuyfeJNhVk02XhcCl6xkkRclRJYajD8uqrKMq2EhE
	 ZS22Mbfcf5mlQKGO4vRK1k9kn4wNux70/+j7McUmokIWAtYAD8IrbbkpAAtmd2Fx2y
	 OWPMYjD9LJEavmuyogfnsZQWA4YptIXNkZNWpcuguUzIhxNKqIXijRF1qCD9S3XGNr
	 FCTXHCuyhIHjc4cYeFmgZLBWCQdsWSu3/lJIBFKgELSEMsXoo5hIkT6Fmiwt0Yxl6h
	 5Bc+f/kSfgGbNMSZrOGcaS+Jm6aPm14ALfZmzliu/RCEGK1XEs0uu4uHYVbOgUveQ1
	 QrDJhmwnlYhSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929ADC44536
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 04:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176905703358.32704.6699841061875914079.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 262960f72176ea4e32ecae347e8c616c39a726494ed48729cc0fa497bec11a43
Date: Thu, 22 Jan 2026 04:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769057033
