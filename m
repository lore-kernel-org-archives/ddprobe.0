Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F29397E64
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783663114; cv=none; b=F2uwXAbmLKmPNWHqvV3TCMnT01JLt8hVeULufHd8wErQ+HOwbwyo5mXHFNgrT38hwgl8X26dzO8T3jg+A1W4vmhHeb8i2YFW+ihwjBOMUR4J5qZ2AWgmVATJL/UHKT1tYIO15y4Z4asbl4WVLuPcPlVGj7kpAVfghmLiKyuJK2o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783663114; c=relaxed/simple;
	bh=gFsDmVAUiMspYo/Ry0m136x9OiTXB/tdOUtfQi/UGz0=;
	h=To:Subject:From:Message-Id:Date; b=rLg2oGnNggVC/uHuE6M8jXPIh5X+SbGk6jcBtAtYOIgrDLZF6iW0yzL7mowLJTxeee8zjHZwgE1aFHlNWSBJwXy3ByR+b/Lou/NdaerkU76yi9qyQAgLm1gUKamQqi88K4pFGSLAOmXKMy+A6gNMHso5n9FNOacx40VQSpiOmp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ctah5rmI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ctah5rmI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB410C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783663113;
	bh=gFsDmVAUiMspYo/Ry0m136x9OiTXB/tdOUtfQi/UGz0=;
	h=To:Subject:From:Date:From;
	b=Ctah5rmI3ACZUdGaKZXPL2u+M5LOmpD2XytW6fCE8Xy14TpkReposbS2Plt8Br3bP
	 50efqflQea+l9rpKRLdCjkYXBeIKvS/J7jops8tXNGTyUJPFepAiwnvv2ck5D29uZ7
	 6tU/yK5gCoNDWSgVKZJmtHszu2NQP+7J5jMvDcPPzC/5bDfQn/aeX1XrZdZRRRLn2v
	 Re5m6l2hQbgitHeOy7nvQegD0TcADftvHF9JRQms00KdoQdbflUgUr3/2FbcQ+LYcx
	 YF7+91fAZvQsqqXQ+pPPCARim1O1zf/GcO51P1htom8WfpPpI2M8v90EWMBrR4C/Xr
	 /dkjOPbRvni2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8E2AC43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 05:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178366311368.3341.268195688071919490.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3142159a2dd5a3d83f0148247719288e01e96ef4bbcc4cfa4a2f587a4e06ca7
Date: Fri, 10 Jul 2026 05:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783663113
