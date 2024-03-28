Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 016C812F5A4
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711659497; cv=none; b=hnATdhjvX4uD/g3q/AtzERo6v+owDZEvvMU6XU0TIL0bSRCn5VgQXCzJQQtQqvNX3Jz7hqWhGMCEg/AMa5WuFelZx7xnvFEMwajKSMN+KVWp1znGXf8Ctd5ViL2X8y/jGhbNcDPWTbwco8Iy83pJaZZvs17zkcIM4VLTDjIbhtA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711659497; c=relaxed/simple;
	bh=GTNmJqSRYC5ngI0AZlvu2qfwEmUDbw6TPxQPULKrD+A=;
	h=To:Subject:From:Message-Id:Date; b=dqbwHP2IuKB55e6n2R6sjrQjIojZZFlEWLJrHPE5KE6VFMlvZPOPA7M0ghLPRtg2cyj4QoMtgdfetzzZa+m/WVJTB69dq9nN0l39uwygH5ny2mc65H83BBIfy3X9dHXhumC9yFKW+0RbEHGZ/BECdGjZxmaunYlV3ZWeOLmhzpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cSh/+eM6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cSh/+eM6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AE00C433F1
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711659496;
	bh=GTNmJqSRYC5ngI0AZlvu2qfwEmUDbw6TPxQPULKrD+A=;
	h=To:Subject:From:Date:From;
	b=cSh/+eM6Ums4CjdsA0LC7HK8mopPd71yXmUFKxU2x00riBpyRBV0rsRyTjLcA3h4O
	 vkLkdTp8i259DpHf3POhMLsr3mo/adezJ1P8tUGKSYvG0j8Db4cbiNKSQe0dZqCL2F
	 +4rmtXkx3ld5NcAKdlWq1U4jYP3a+bpWcSzjf02tpa83hPeL9+yK+74QNY0SJnV/Vz
	 zRRIAZLZujfcUmEMzRS7kv71GaknnNuzQvhdSzWeFk6sSUgHKC9oGLtNUulk8bsntZ
	 IjfagIQ69AFe/izbSWQdYviEPp6kxFjq1psHPmEfIVLObKy/xPotldxroELhEtQ4G5
	 Whk3JfJAVgQrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 67687CD11DF
	for <ddprobe@lists.linux.dev>; Thu, 28 Mar 2024 20:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171165949639.12085.9311517386015033722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab6a300a3e1f7bbf9fa0865cf09639c761536880af5ce6dc67d2198f8894da3b
Date: Thu, 28 Mar 2024 20:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711659496
