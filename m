Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F19C22575D
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 14:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705587497; cv=none; b=VE0aZ+3zN6G1WB6j20+EU7ue8jLC5KPQue/CW81owy9yAzXdf8LnxSu1J/o4lKRywtpfS0Qn/kICSDK77r1pWRmHUuk/Olb4vqzbhT9eOIr4JQ8XJCGVSKb0qkYOgG74pwI8ZqMybzp3ymxEPVLzSxPfRMw6fCf/qyiuHq71QhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705587497; c=relaxed/simple;
	bh=Bnn6w+TxJO3UcAlRAY7fYUORA93s9gCPVcJMimd8ZfE=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=BkU4ooQDM2+C971Hk72JWSycXyQyvnQ+R2Go2HhWu2RTde7K6O4zOh0QFWxPip4TGVflfbcu5EXStgoqwcexdBTg/F1Pk7QkcMqe8RhEXTpgA9G4gcdullUMTtMgH+SBRMmrmWHkGzOhX9YUlwpGUMyBp6DlLOEfk60sbgmy2fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ny4IRUFn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ny4IRUFn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 72DCDC433C7
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 14:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705587496;
	bh=Bnn6w+TxJO3UcAlRAY7fYUORA93s9gCPVcJMimd8ZfE=;
	h=To:Subject:From:Date:From;
	b=Ny4IRUFnpZHqYcAgc3mZWB6mvczplL53nwK1IrSrqudPucVYuAXGV3jyw8lqCDxEf
	 +YlI6H861hFTlEO1GQcf8cshes7lPRnv7i67JWMkKvIEzR2nfzjY438Ijfij+6Geim
	 VsKlZ+bCRnUcjFx7LUmGarNW3JKPgjS17DGqse3e7Wc3sAAzZnFoZ5Vf4ujaKJLiJW
	 5RgsWu6FieEHgN4cjKA0JMXM4APz6YghymvJbBnU+3KJyKaVD8hLNDvPc9or2AdgPb
	 RpooWNWbhaj86UUppkYb5GUuTZ8DqKM7LuV1BD/GMR6droRNJ3z2Arc4wNG+BhD3gL
	 aFAcsiy6bozDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5A6B5C47422
	for <ddprobe@lists.linux.dev>; Thu, 18 Jan 2024 14:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170558749636.30134.8579021730466046366.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce80058e6240e38d610258d5e47e1a355143ecb4eef72783ec084f3ba03b31af
Date: Thu, 18 Jan 2024 14:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705587496
