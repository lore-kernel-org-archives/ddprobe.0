Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 076B14CB5B
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756693794; cv=none; b=Mmv1Rj1/TKocVV52SoJaM6zKwGII7IXOcquug5xxiYdBsUvlsf0cpf4pMmsnsOjg24jmKKYgEcXhKvAL01m64nP+5aExQR59GR9UA5GJpH/K0lSDDQafRkqkMwlPJs3toKFKEF3aC5CyAeiMUqWwVWmqz6bISz9goZqDy7fwk7E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756693794; c=relaxed/simple;
	bh=CoNvRC+Pi2FyFap2wx7Tp8z2OrpQ/WcyT2xHOKnkWdI=;
	h=To:Subject:From:Message-Id:Date; b=NSSTnWLBvYaSdYQ0JFSUN7wBVS1baAa4HS1HUp984Kt/FJ/uh1DlYRiWxT6Bpg8JyX+Wlq/kcTTOwXOameEbPEtQ0WjZ2bSD4a5joii9zhyja/TygOSLck5i01F8f7qKkcvXXUWn1OG0ljNYO2LV7xVt5rybDgeX5BS627hLx94=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NDvXimXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NDvXimXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11A6C4CEED
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756693793;
	bh=CoNvRC+Pi2FyFap2wx7Tp8z2OrpQ/WcyT2xHOKnkWdI=;
	h=To:Subject:From:Date:From;
	b=NDvXimXD8IfJMdWU1MIowYiTcYTKM26SCJKz8FETVJQISGOs6t1cfG0De5tPmPIIy
	 lmL0woiz4vVEe2bztkRThchpKIrsBB0YmLD2WrOuw59f2vi+6CpmMgDgEGhFp509PH
	 tkvJnOVVzqIjLiSMlz3TCe3PobRDq79JHBrHccPGGspvMKqsddY4FZrCKGDQJqPqM6
	 Ap6sBzWpOqHHo4Gjj4SaF41miqGOXRCcFU8zOZ3UjJWFRm6Of5Nnh1QO3bS44r5bo+
	 Im3tlW0XTbhu8BtAR7gvG10MttECY/BwVbd2t2WwZ25o/dasTaa+loUK57Xnox58kx
	 L8DXAyjmFXzVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E290CA0FE8
	for <ddprobe@lists.linux.dev>; Mon,  1 Sep 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175669379357.1042.12373629794315959650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5028e3b04da3c1bd045f199a50c2f09fc7a78379e656855e6bd2399a034f467
Date: Mon, 01 Sep 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756693793
