Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3D245C0B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767246234; cv=none; b=OXHNPHNe52j/+w75Eg0F3j0wlLdfosdGcWdrmJXaPZe3pYgbvNVwqTiMpnWMHOkWt32eTZvsu/U1p/1TPz19TQrOQNM9e+HovTaMLWdWloCbZddVvcuXhO+yxpIpFjAmUHfkEOas4hj62oCQV4TGsXmHaTUik7+Vz2SP2CoCb3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767246234; c=relaxed/simple;
	bh=qu9ke/WiobAIEmiGCU3scBk+KP9H2idodUi64vT/TbI=;
	h=To:Subject:From:Message-Id:Date; b=dJ9LEQqbRrSq6fwc+1tN9v7o10qVoJ3gvAZQ86pWSj1EUa2c4mSXM21zQf+uT3KeLAW1cleH1mUpIwKbJzvqIyznhKlLgxIy0AUNKzUp43roBChQAfygN0pS9G4AjPYJWjhOEkgOJm2jmoItRQaZaUn6VsSKPADvQ+MHIr8T0Ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nQl4gwNa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nQl4gwNa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A687DC19421
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767246233;
	bh=qu9ke/WiobAIEmiGCU3scBk+KP9H2idodUi64vT/TbI=;
	h=To:Subject:From:Date:From;
	b=nQl4gwNaHzfz98PaWh2rHt5MSCszZ76txqDH1KwbzmbuAeJReN4js7YItZ9qOmWkJ
	 82Z/b9/ZYpWPP4UVG+okIRklHlHfoJ5qLlK8REr0UdhLZzhQWiP0knofzyO85aZQbu
	 253JESx/mmlknGDM1LlLbpq3NFEGuv/TWHYpgv5Zlj6Z7svKbq2cZwSGt+JGDS0LbG
	 MkZyum9Te6lxsohl6cTgSxzAxWd4+3Kgk8vcMOwK9M8ST7CewBXLUsgFsFgMtjp9Gg
	 FX1WktvcpkiNaLlPGc1RZmK0wPFFzm2WwUTSdGQE1CQlknrE5azn2WPOa8o7Fadb6E
	 hQBn/dxCQRWaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924CEE9410C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176724623357.17454.14662576660035612051.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdf8d09d6b922415d59b0e935cb20d827dbc518b81bb0aa75da30420dec8cc0
Date: Thu, 01 Jan 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767246233
