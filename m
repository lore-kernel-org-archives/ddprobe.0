Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4543028F0
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:15:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720250123; cv=none; b=iGDBrXrsDC7blWT5Q0Ip9afla/VumS0AlWt5H3V4qR8cKNE3q0JOpZelheI0xxju+kb7tjcQrSTvN23rIOgR4bu0tM56N0Hmf3OUxqmElr9wOckfo5aA5aThsfJmKk0mNWcD/YT2z/xXK14m9OHTbV9WY96avau5opOtr0Zh/ZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720250123; c=relaxed/simple;
	bh=1c/cNKD11ONOItkCaIJYg5iV8wJrBDjByNDgXhXmy1Y=;
	h=To:Subject:From:Message-Id:Date; b=khLdmrdweNllodsV/sc5wD/oPkCLXhvZDTPVKODXPo8LnhMTMOzq6ODhGHbiEebX7nTDgpaLYE+jMV/Ezwh/CS+dp9DuALhJDoEByKzh6d1A5Th734dvTjhHEOnp2VPapoOV8yPC4CaT2ylbZ8tnybMrjo4ypxRrpS4ke2ONq+Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L6rdAzZz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L6rdAzZz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5664C2BD10
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:15:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720250122;
	bh=1c/cNKD11ONOItkCaIJYg5iV8wJrBDjByNDgXhXmy1Y=;
	h=To:Subject:From:Date:From;
	b=L6rdAzZzcY/jO5ISbw1mOSf+ieMW6A2ZPJz8ZgnmmfDQcu44pmHm8EzohUq/DoPPX
	 LTXhTMTj3AAlh4SIu0+rAdGfw8gDubMhZE7TWQ3vZU+Hf0es6H2420mclxlw5YGPpQ
	 qQ1xGp95B2ne2Mwq8Togyflm2Kg76YMdeWi9dvYmNMBjCyV16wDyJEPBj1YjBvd/NZ
	 MaksbYz8+097qng/wnuvKXyl61LT//FIvOfSczcMg38lwOm703XUlMm2XP0wyGZs21
	 3phMWahEQt6hiB9+2W9NayHHBxHd1yzA4BxDtI+2TKyy2kl86AZXJEsCRdXQONUD++
	 NYuFwZuIXokFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B8CC2BD09
	for <ddprobe@lists.linux.dev>; Sat,  6 Jul 2024 07:15:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172025012277.5846.13363626964737882513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cf46f5468e5c287d5d03ef49379ab0d0af9d8f2b742e2c8edbda670e31c3a3e
Date: Sat, 06 Jul 2024 07:15:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720250122
