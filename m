Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2120C27703A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762744794; cv=none; b=d7DhuRlG7mae3QYt35FCzDCYewiZcrjhzcP7HEx0/rrj11ct5cb2ulquWXPgurIiaTHmSLRYLQ08vlXchwEuv8E0R1y3xhos7FSotY9LEajYHzA52DU5L6NaivpOPRa/79lBndnoQr/I1MofWsafJBSMfBpHOVI62RppU/2hKpo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762744794; c=relaxed/simple;
	bh=XLHaImwaGmGXn0ETedlBOL7rO7+yOCUeBATlcDCCpDQ=;
	h=To:Subject:From:Message-Id:Date; b=bkzkeyVJ3IksgiqwketcpilZ/iVZUHd8eywbGY11Ttd9H+jn90hVZPn2RCfsxCBpyOD13osUESgrz+v5MB/dmTtYngpantsuC01RA9ILSYsOGeIOwq94c3gYekt6EGYBlHu2yXU6eVLtiCn8VbyI9rKE9iAAUpCwXFkWqT2TgDU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ozeFXOT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ozeFXOT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0DCDC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762744793;
	bh=XLHaImwaGmGXn0ETedlBOL7rO7+yOCUeBATlcDCCpDQ=;
	h=To:Subject:From:Date:From;
	b=ozeFXOT1hUdU6MJf5xltJXzwp/2sI9rLwN6i3xfiQFEK6wcgDCzYt6lksaC/RzTpe
	 htr8AK2dD3Ifud+YlfVZ49wghDe8FpGMq3xPM+FW6joFACdOKAFRI470PFj+sfGkhv
	 /R0JVWA1eZLaTFDYC71T0MdovFKJy8zIvmDc/Z79VodB5m9hXmst3H0zRcracsI+/R
	 dElDr9xN9LWBrqDNDe+G/4px7WaFiQ1+1Jjh8y6ATUCd1DFG84xfve6hQgsOxzjSn1
	 vZxLZKIjINg1CgaoLqjNBMIQfk1dvEVwtH8WtOE8Q2AVxeZMM3MEfyXcRR8b9ljaqH
	 OFe9Fkjt2IQvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F4ECCFA1A
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176274479359.31961.15909749400396905913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2fa6c8ae03e944815545895ba7fb8cc194534be432d588cd304b8a8a8412e510
Date: Mon, 10 Nov 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762744793
