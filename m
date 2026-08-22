Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CAC45353A87
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787432434; cv=none; b=bf8lkrNIsMcjNsMkzaRl8Cu9a+DiESWUti3zMSItLX61eMwUg8/H+FElt/8zEys6H1BX7LEV0y9TRljtx2mXflIFkKJMqnqo3VliDFBF4gvp+HcPXBpDMQWiT/+aImzBcmmARk1VIjv0GTJQrBeNgmF9fdW46Q5vIxXIwNpgzQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787432434; c=relaxed/simple;
	bh=eoY5+n3yodqn5UzKv/FVVaqdA3KZNuoosanmptwBq04=;
	h=To:Subject:From:Message-Id:Date; b=rQCvJNNukNWSkI4lth7tltaEXNt4Jkrl5S6H46NmItbJCyQmDlRl3QXn/xPXjVCRyHB48BHQsm7vmPrRPdKGHHcegXRxipEyAmuCMyMeb9WFVQ02n84/yLMUDwcBKwdXMtfoaKcP3Ka5LbK5rcDL5Q2TPwDLUrTXl2gdZPTicpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4rZskjW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4rZskjW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBCBCC2BCF6
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787432433;
	bh=eoY5+n3yodqn5UzKv/FVVaqdA3KZNuoosanmptwBq04=;
	h=To:Subject:From:Date:From;
	b=r4rZskjWDi5tjiSv/WtIIMdZbA/kD29spWqAr4WZntAtJ5ZXh/zhdeqSQA1c3KsO5
	 k4CafzJIKCsMr2e6tuw+M3+cedmrUH/iaqtkKN3w/Ha6cc2WlxMgf/b7/oYmh1ODxc
	 8w8ex75ovk02uPFwe6TNmDJ0a747MbmPBdmJtavVH2XzqyNnuriVswgmvHx44mbgar
	 w3FEQNPjuH3uNsoZF19aPTI/lSXepgDCkxn6bT9TVeEbqYktJNioix/BkvOJfWAbWu
	 6jpiLp3eVGwSTTfu/b2Cgo/DveQVz62BzR49QI/ZKU/6t/2oziMiP2FmYrrlqVS46Q
	 S3gO2GIDLtk+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA857C5B572
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178743243368.22194.2648323546031301547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240fece180e72c252b58b7ce40e58f4a256c5581a8e579ca1255e70e82381567
Date: Sat, 22 Aug 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787432433
