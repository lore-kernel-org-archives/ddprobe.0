Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 039314C85
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 15:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710344897; cv=none; b=uPJN0x6iyNwjs/zjghYxajsBF4DlPYqdqNxNArCLIxuW8NKHVxh7PcN2HMasKzOdLTY8ORyY4Z9DXUfctr1jRcChIc/jWj4+ZeHRc3VW8ovWq8u4h75SUrtL2nNsJX/YaTwLsFsaozFxYKLdsGNIj6rPRXQj1PHHIvYmQgNMpvU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710344897; c=relaxed/simple;
	bh=9L5JQ72X7yDN7SADewHEg2RDET3cf/hManFAAQLQ3+A=;
	h=To:Subject:From:Message-Id:Date; b=sAIlfwDfPbLbDOu8vU3YLCNUta6iwl0iI9AcltDV4PPaZ2HHzdZy59X7rNtgOrsjDeohdwFnEIWIerZ4UMes3lHOnbi/8dAhNULH3kNIi5DstkbfuJ5BfyKpB/iMC4hDly3390EqK34gFomVIbBbMiU+bpI850Buxqw2mZgL3uo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TncUSC7U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TncUSC7U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7FCA9C433F1
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 15:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710344896;
	bh=9L5JQ72X7yDN7SADewHEg2RDET3cf/hManFAAQLQ3+A=;
	h=To:Subject:From:Date:From;
	b=TncUSC7US6Kf0WDdpQz0y9aXZ5PE6ViuhU+Db8kIkosrXHtxazSwF5ggQMW5Rc/Dr
	 Xm4xzvNHr9BBim2b0zjACHlKNwzAANWJt9ByD9PXOqGUaXN2B8jQ9y/WG7e5XrlLUF
	 TVGQPP9WkUxzgUbw0KiLZwHd51Or1G0C0FAnRju2PVc31lXzgOD6IavXkmRMlLsp2c
	 jsqH5ZRVQgTEs1/pZMqYCR7Kyg1br6P9588nZ94ScFQypzTWFuFkKQ33bcU9Rxtw9Z
	 DYU5rzSm8mcenKojUGaQ4hkU2qwjkJmEMrynBeLUbebRszBE6Qhuq5KrcrEQxJATrw
	 eHH6/5/8E1yKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E26DC54791
	for <ddprobe@lists.linux.dev>; Wed, 13 Mar 2024 15:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171034489637.19556.5209508225896736736.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 794a219d7ea68d16c3fb0988e8022cfe8e41d051a87b17e0b3163187ad23d551
Date: Wed, 13 Mar 2024 15:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710344896
