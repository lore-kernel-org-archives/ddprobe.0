Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5897E1CF8B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734825354; cv=none; b=QOBwixkQpuMnWHAM8WQ1FC/oTRhE1e+nZv4i9IWQm8X/Xy89WPvRmZMPZ2QlnxnJ4sxC+RGt/u6m3DFw8VqriR24YpAZhQUnfu1GVVNzJwK+6GStxxL8+AU/rG/Go2SwPc8o8P5bcqIw7kzaJ1f8QWVyQrF42i3wtfCugGWfoWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734825354; c=relaxed/simple;
	bh=xadHXM2BXnptQuDNTAptLXeCVXMuUXjMsr2f+1Uyjao=;
	h=To:Subject:From:Message-Id:Date; b=sR5oSJ5P0JKADm6eDt4NF0fbodsIcDZGwJQBhJ+bJiUJtPOBXDLzbNtBL5I2HpTBhoX+lCD8XXejxvHi9paBQ3/iX9MFfBnYRRJ524cM84dD/QBBUfe+8ynm+KqvTf9cgcUYwwEcyH++imyhCdie8G90gO5++acqBw/NkQQyy64=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NIj/O6kn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NIj/O6kn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D92C0C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734825353;
	bh=xadHXM2BXnptQuDNTAptLXeCVXMuUXjMsr2f+1Uyjao=;
	h=To:Subject:From:Date:From;
	b=NIj/O6kns0ceex/GbvJnKdaON4t38HrXo/ZKGKT5wnSreiCX8Ljb6DtADS0pxDzSG
	 IRVSwwBcEuf1qKOq0GLPZFBrgySyXy6PWI2haD9ltfm7Z/moL82CtVGYWnu+NiWLN2
	 vP5LnEqkIYGPzc/MBZziegd0SQR1YO3Y9IT1sv80xP4ZpkoYfKng0OD5HDK9r9hpQY
	 D9KoT8W1A5EaVWEZGPqSrC7i6N+ZDOkL+nY02XssZWfiqQnew26ZT9A/B/+XkRzYzS
	 DVLcvZfi+i3RGQc+R86doIu0LYZEPX59gtvCbeLrAbuiyqloAkmFx8qHVmZFyLlM9e
	 vhpGFZvqvSbqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C052AE7718B
	for <ddprobe@lists.linux.dev>; Sat, 21 Dec 2024 23:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173482535367.31139.13690360496780259355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d07c7c9d2eb3b30c9d800fcc7d5ecafa6356e29b4727f01836d3215053b35cef
Date: Sat, 21 Dec 2024 23:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734825353
