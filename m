Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F1B625A623
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737776154; cv=none; b=oNWMPZ65RkbywYMK826dXCmOd0LfMA9WUZKK9C89Nvm+qoxcYZsjMnPVrRZ8KyBt9y1Aq3CRJQG8mk9GeDjXyGX2IYbYvr1PjekVNaenp68opVTxKPo/+XZdgP8kWCiigbzwtKvKFjKIuWT+A0bom/Lr8qRFQ+xrNXlevg0UBaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737776154; c=relaxed/simple;
	bh=EJr2xjESGlYGr52GdRCL1dvrXncb/+gYg5tQqSi6C5s=;
	h=To:Subject:From:Message-Id:Date; b=uW9jusBjlnK+QiB9ozhtY/rnW6OYJ4mD1INxKdc0HHH26vzxXH8arNqLZuSA1G0P3EVtz+K9dTeEfmHBzduRMdftvz0dy8A3pVYFoKWr6FF0Pqux2Iq/S0jV+EgZFx8K7UkfI8qE23UZVrsfeBXUDFEzhNbuvUrweY31X2VZqh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WojsWeF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WojsWeF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1F68C4CED6
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737776153;
	bh=EJr2xjESGlYGr52GdRCL1dvrXncb/+gYg5tQqSi6C5s=;
	h=To:Subject:From:Date:From;
	b=WojsWeF8fWKGDMYQDv4AhjFMAG/rS1DcJF/a9FvrQSt2yOOwjTB6p0yJcFB/+h2yY
	 PRy1G0b9vp337OlASmpHBjzJUSCr9g17MsdiL1yrqS09/k1LJJ27TQ2LZ0fivlsyGa
	 wQ/jQsWMPnUrn/d8Or91jmD4eQ46FViZr796bqeqC9pX94sSS+/fHiL57xIHIxQRqv
	 UDxOPdpPT4xnzJKGD1yARcZBqAeWaaEQQfXeTkGvIXevPT5Y1KjGUQc7F2DK0Mj92J
	 eizPCimclkPA0ECYMKoy4RxAZxwIYMqUsZzxuVR9Ow6vhFCjmhP8I5YnuV8zantBPK
	 hBNeuOs6jRHZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96C87C02182
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 03:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777615359.6256.10701175585270259141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 925f3ab5e400d6e19c6efa09da166cba28baba01531f750eb4011040f517253f
Date: Sat, 25 Jan 2025 03:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737776153
