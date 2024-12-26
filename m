Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4ADC377F10
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735199754; cv=none; b=Lf0tuVyAeo6NQX6AeY/rIZEaIn2hhXldEW+lkDzfRHmgn0jRcDQhrLN+ni5XMR/aVMIaWz4qhNFc7BWLXOHnOnh17Y9YgJ7/pJzGO6Xa36FAj1pP2UhtCuHpUZwozeFid/RBiLbwpXe3tIDYdxhSqnsWB9hP3Xk7qa2RXomqMTs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735199754; c=relaxed/simple;
	bh=YBh0CVl435USlnxUZV/VBgXdDSgdUZm5oESh8ubKmWo=;
	h=To:Subject:From:Message-Id:Date; b=ms8CvZiCHxkH6vaY+/8CS6ekhuE0+7DTnxeacZ0Qrj8tW+qIlUjw3PF36W0B1TmMD6Lqonyq3yik1OCABeRe+CeQzxRPKQwkhzQoEJ9m48H13/FzBNTMDZpAULfjLin91vnUXrJdUZfDpDochyGwdF0xPo9aa3mtFJa1++pHT7c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jUQFrT8G; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jUQFrT8G"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC57CC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735199753;
	bh=YBh0CVl435USlnxUZV/VBgXdDSgdUZm5oESh8ubKmWo=;
	h=To:Subject:From:Date:From;
	b=jUQFrT8G1JHNpNAIu6azVOKBcJubaY02T5QiAIM6rMtkyL/Ao+2EPd/gSvtJ0koV0
	 kW3FxqwMejRZLMhR60s9kSkawzI+9kOA3eddXQal3B7oDI/1LC8R9Qxk6fU9ePmy5m
	 eZTxTnrThDODCcYhUsTmnepBYwcv5KeF5/KQX45krxCfta9aqArkiCmaALUK0lIoSl
	 rfF9nceu9iS3LIqPnyCQbxgXOtflSXyJ/HkzksfWDE7nDj4myCg6+4lfEQ0k0pu9Te
	 OqqxEmRf1AxfHFXJCefr2DtxzzMb6+CR0dvGPgPY7bC57CBfEVI5+V8RRxtDekd115
	 GrzKw3DlJZS1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5BF3E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173519975366.7294.8042419735619141228.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a7d8ce2d079c055ce673d8f627b4feed1057fcfcf21be1164233c14b0615b4f
Date: Thu, 26 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735199753
