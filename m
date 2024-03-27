Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04FCB22F00
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711522097; cv=none; b=qXfRnIPpdgllkNDPzn+4VtW8nnHg9vnK9zR4zS9JwJA8sczeh6cKM15MRlocakZbs4sOkXHPcezzKykq/vTIjLnQQf3A+2ZVjLkXTJZQ/seFb2+683HDZBjyEyrdhKm1n+BBn4642URFG7nTglUIj72q7DA7HluKenxq6AaA2M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711522097; c=relaxed/simple;
	bh=nfHh+KrXKE258O0oY0ZhK6u652H4nIO8zbBGHqS6Phs=;
	h=To:Subject:From:Message-Id:Date; b=fvWaBr+BrnRZ0SlPUzrAt25CEuGQEomZPVCp52iCZ4eeM+fGgs4HH2e68yDMHFgeipC8RKsA7fCIQRbstqoI8I3YVpzZHXMpdrpGsGTWmacu342yy9BkfLStwRvlZ3EGv50UujsW9nnDAa6xe0jQ7Nkh/7ny3rMde2JI5uCQtGY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OVSVeiLg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OVSVeiLg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 87D3CC433C7
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711522096;
	bh=nfHh+KrXKE258O0oY0ZhK6u652H4nIO8zbBGHqS6Phs=;
	h=To:Subject:From:Date:From;
	b=OVSVeiLgZh07JCA10bZXl9+4eR2Leer5/g7kXmpG8bcos3OMdqQDkt+ZNcBhb+sso
	 IfEahVzBppAOAOijzLwZ/dBj7jdppgNOovEaK14j2c7pgM85I34A/EghHVRETI0UcL
	 iIjES4OWK2NBdyCA6ALRaWegO8nxWSVOXBTdaSKh3BUkzEIdYYh9u/PG2c+PsRJOrw
	 vc2HkyzxFt4NP2gKCSLoEdbXRl0rMLX1q7FGZQNpi9RhubWJXUfGLpF0vBkhGH7OyK
	 MfFDBJn0NMSsdyawK3SQ+fJ0u1NN+HRVlmW84O+teeiOKVnxohVCzENfYRlj8Fno1n
	 VKAIzsfVhcDpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 71B63C54E67
	for <ddprobe@lists.linux.dev>; Wed, 27 Mar 2024 06:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171152209643.7586.14829458327193684851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f6c3cafdbb6cfc29bb4036f492827826ec3aa1224846f1743c14342d501c138
Date: Wed, 27 Mar 2024 06:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711522096
