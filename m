Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2079E2DAFB4
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768270434; cv=none; b=q3lqy9Z7rWkPVdNdmpD3yS/wLCH9/+MKYqfbflwQbyXpXQGl8oF72IRlu5p79wNb7qxLVvv2iDIunDp3zDg6PDTwuq53GGeinF0NweUgctrNbXtz5V7b58POBrYsqlbAUiCDl+i3YewXEOeyG6JtOWnHzoYkAnODMUuhfGBeLb8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768270434; c=relaxed/simple;
	bh=risBL5ItZMQxW3lFXSsh+CZjjTnPEbziGTg/Cd1DljE=;
	h=To:Subject:From:Message-Id:Date; b=krgzKNn9SRAC1Fylwm/j5oQIFn5KuO4jIYiEgaK1RmAnXrf+ZfZTXOmAmtLxv6zBB3lBtWKW583GQWZiCB0O/dIMF3CJLlzAj6c1U4aRTHOMIx8cDeaFL6sX2MyDe5b46lwxsHQI4AXyXTOBbJxsK6vpy5mwp4spwxl4fB9L2gY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ubbkZRKv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ubbkZRKv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B32C116D0
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768270433;
	bh=risBL5ItZMQxW3lFXSsh+CZjjTnPEbziGTg/Cd1DljE=;
	h=To:Subject:From:Date:From;
	b=ubbkZRKvVFs063j3YywUNDZjXiOsIljLOCYnRNzSTL+J+95pgdWjOgjAA8uBxnJ8m
	 +U6GFqp8YKmKqTCSEi3O8Hx9//g5z2jY6fw5sAvgu9NcfboASAfZfgLwb1Y++YA9UK
	 yyQfAOMQu8ZFz8Q1cRxTyOL44TsEGeUPjG9AmNbe0nnn+cbfO0GzZ/Plzelks1tBUc
	 ukP5cGcHTVWp+eFpbZGxBkdp+1MG3Y0I3dAkl0Ucu+2LwpMFc00GFIxew8oxHma3cW
	 Zjy4MmxsAb9QfYwg226A8ArRjMnnf4KWFjs8jJHCBafBjDtgxOXFemeQ2nWThQJwk8
	 NirM8jCqiU38Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D87CF45DB
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 02:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827043358.26313.17142775154608538620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c24f72f82ad9f1581e9f90d816cb7551f967c83f9084d65302ca10e6e4b62768
Date: Tue, 13 Jan 2026 02:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768270433
