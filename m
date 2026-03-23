Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13AB237E319
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774265694; cv=none; b=ii79pOK7tYM49VoOU8qj90BEYaoS7cwmamSZXTUkNmsradAw8QgT1MwKGvgmt3JZOCxqNptl0xL6clm5dWmRyaraaVIYoKm8htcvZRaUQt61SPaJ4EGeR+ewWz80gPVQXFevhPFXCmNtKfdOiA8dFORvQzUI5fBoj//l+4bOgjw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774265694; c=relaxed/simple;
	bh=x5MQpRGRV7xMJXI7wQq4O8FvNZdd07pWdot3Gvx92UY=;
	h=To:Subject:From:Message-Id:Date; b=LtcRteJeBVrNOpE/eBdWGCR3/QX1fkVhZhPlueGuA9uiNsvUS2R4sCxuy9AsR81lSylM7hYSvc47iNQnBOluWy/rVhw3Y89OLgWGHdh89733SCdiR2kKgEMfnSoZ+2LWkpiyYlY0F+HRprVKaJJYoJyBroJ/JgrIzxXBY594p/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TAm4XrvV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TAm4XrvV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4DD0C2BC87
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774265693;
	bh=x5MQpRGRV7xMJXI7wQq4O8FvNZdd07pWdot3Gvx92UY=;
	h=To:Subject:From:Date:From;
	b=TAm4XrvVpYSfh9M+7bBTrake4HCRyyDjLVD/gaNQNe9+eFeEu72lF3M3cSy56Hy2B
	 Mh5H+p2EWw2RGSAwWfH2K1EHMFwnr56iJtk1wf/7A7P/6kEJZWPPJ/uuKWxqg2c1mf
	 IEp5DGM7LuDRFTS6YIrYxn0xMxG2ggJTuKgTdw1wvxCi/6SRBYTbLWGBQtKNYrPK7t
	 KURyCULu+1EVuhQWAMKpj/JGVtdV7sgD4iBSGLPFz7ZF9DAmzI7f7jO5hxqoLmxjZT
	 9CSj6ZhH2AhK8p8XN4VkjGwuEDS0UcvzV6J3glyohBa/lc3u3zY00GfhNyr5Oy1IwG
	 /sZCducfVSPVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A28EC01CC
	for <ddprobe@lists.linux.dev>; Mon, 23 Mar 2026 11:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177426569358.2681.6498699296056728632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25dd77fe9180cbe34b5a67e3c49bc51c3331382d9863f8fa534e97ee516a4433
Date: Mon, 23 Mar 2026 11:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774265693
