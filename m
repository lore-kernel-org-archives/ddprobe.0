Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55A84441D
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715046143; cv=none; b=J57J7PS5MHl36QZB4YKApzHGXJfKTLj4F+OCJAjn/mjVMUYjuxkjoYIs5TOVn95Bg41CnZVbcT2H2IqbIZrK4WLSzN3lcm5IywR3WEVV0WfQJu47J+yVrCVBUxfiHsfzfIIdCOUAMDZo3BWuV/LVNP6US7d+w15Y5Jo+aXOewuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715046143; c=relaxed/simple;
	bh=tP/QvQoXSGYslLvRGO2Fld13TlrrvzN7Q+5tkgRwhoc=;
	h=To:Subject:From:Message-Id:Date; b=GZHx0DxGixyj0vW9pnwoxdSkRD0KfMnqdso+W6ppA/9K+GTnGCiqqkWJ8CYPhPwlUezLwFJOvddPQI30txLZzoMJtH9dPtAHZzQNjngt3A/1tFVvg9yrxRLTxaleH1qsXvtA/hVaTqML9mZ44kiEqLAE8CWSK2u61v0BSWtRJB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BC4ZkXCw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BC4ZkXCw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2E2C3277B
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715046142;
	bh=tP/QvQoXSGYslLvRGO2Fld13TlrrvzN7Q+5tkgRwhoc=;
	h=To:Subject:From:Date:From;
	b=BC4ZkXCwP7VmyPZG10c/U4ifIhBRmro8GGEmBNWxBj9age7J/CbzYQj5++EOA9Q2R
	 80t5SC1JMa/tJFV1t1GgqRjT/zdUR1Km1DzDmtH60UCv+zwt+Z5yUzUdNCSbMfe1SD
	 jAVQnL4ahS/2hHy5LDn/C+kdPq50dmbamDUUSVuYLL0JuOy2JIkULszeS3sDo2SmbL
	 eufwYVRt3ahjBH0ZNdakUPw2D4bg/ouMEhMEyZPGcBpJ08wLizUuQtmuNxa7evKNnD
	 847RQFZVrz3AkAP8NVlTJXBmb6CfR77tKWO3kzefDTdrfx3MRt7zym/NeKJhQja1s8
	 lEjXFEFPmiynA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF587C25B10
	for <ddprobe@lists.linux.dev>; Tue,  7 May 2024 01:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171504614276.4871.9734594114496078394.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 521e0a16fab8f8a505e1c535c01cc60998ecfb75be22f47461d047ea9192a2b1
Date: Tue, 07 May 2024 01:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715046142
