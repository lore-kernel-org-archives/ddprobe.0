Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FCE31B87EB
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750818595; cv=none; b=EaGXoAjQCZzybXaaB6Gyv9YEakCmPrq1Lz1zanqiHBIco5RWFiwcufi4PlF9Vad8LYi2EkzKL8gdOSuyQgHOqQyBdyjfI7N8l7ZUt1FEN3f8xobxMTkYiOq/WaFClFVZy50CM9YXORYwkkp7U0RSE5a/iugvFeAcfg+oUlSPqFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750818595; c=relaxed/simple;
	bh=RCy3MxS6VoQ7G+KtPg6Z47DWeKEt64/lpWkuzVLXR7Q=;
	h=To:Subject:From:Message-Id:Date; b=LXujfF61rn7xa4x3CUXBDCUYI3x/x5a7xfvKk4XH7v6SYP3dkoka8XBGzoLKtR+8CqOeaEr6mhbfFnLxy8HZac/N9nRN/ywk4Jdx8gROcnBGjbrJTEtMIHHexIVp7uECV7LEz7Fxp7SegmuCgPMmUQugyLB/hZ44XHbtaXVIFOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l9ZCsjBG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l9ZCsjBG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D9DC4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750818593;
	bh=RCy3MxS6VoQ7G+KtPg6Z47DWeKEt64/lpWkuzVLXR7Q=;
	h=To:Subject:From:Date:From;
	b=l9ZCsjBGDdMJ+5WL4X82/nqio88nnuL6ibiuA+XF6K7PBdMbTn+RIvCP3ddfMvQIg
	 8NO7uImXhA6x7Se/pyVdyV3nFIQ3JIGlVEnvTyGlXsNq5dLHwHadA8DMSkcxe/AkDO
	 eeG+g3z8/jIhMtka2cE4kbJbcDhjUlDTpGTp+1zMsqn3kWXpBUMAhd5IPW6AU0D9Ye
	 kzZtWfRAl0fbd96nlbYpS6Wbe/WfKITtU3MUcmVhhbCKSYquabNrPpHljAW3BuhvWX
	 s8WQ+9JDX1UszzgZ+dNx6KJshtkGXJHnZ1ALyWhtL8iQFC3WhahwDXsFL6jfgJ/VmQ
	 R1zCLeuOy7lMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3A5C7EE2A
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175081859357.23479.10993116885758935503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 358e7ee5efb808be5f841ef0e91ffd3124ea6a9e0b5059736f5dd35480a0d232
Date: Wed, 25 Jun 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750818593
