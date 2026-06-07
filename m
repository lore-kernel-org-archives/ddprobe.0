Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B1172DECB2
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780814674; cv=none; b=uJISZbOaGLujJtvdJyN8nEEpDqTIU5ny07gwjgyNMKazhMa32IT6tS6HpOl1iEhXFX1q0VCUQ5qHbnzekxWh7M4777CYYFmjqpMuKSFBlareOTyAzOu7yT1jK3lMOt7PyalI981ctyin+I4fqAU1I1lh2BJ0nr7bsJznGNeFGYQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780814674; c=relaxed/simple;
	bh=wEL8ZB/1BD/ojHkSXdNv6lNSIFIafkuZglpvm/xtbQI=;
	h=To:Subject:From:Message-Id:Date; b=bxudN8sUAaCX2C71ZwPZCXAudKvadZ6v5dDHmLz4FYF8I+KJHbr4Jryga9T8oPE6Rb23/X92+HEr7/5sw7nruxorNDfdCMHa4K+oNvLnHVLcIzqEPjw1Qn0ghxd7UPhccf7B9pXDqSyBrRcKhYDtN0GQLKMwjLzB+3fCffGm3cE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tI5Tm/Mq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tI5Tm/Mq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFA83C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780814673;
	bh=wEL8ZB/1BD/ojHkSXdNv6lNSIFIafkuZglpvm/xtbQI=;
	h=To:Subject:From:Date:From;
	b=tI5Tm/MqrptievwPrrBiPtRiTxv2nj+PIbHh5U29ovkv8c8yeOO7Vf1S2bXNP2gp4
	 vpuKnTG3ZB+uqHhz34hgvDszf7dvd8SAdjziuXb5tEF099TsiVtW32u2BrpRvfY4vx
	 F6w+vTiRicfaOILRiXyCPBzQrx+hdV/JJ+EsnAT2xRKs5bpUjtRmJdPDryWzEinAWz
	 s6itYlyXjqz2wHfrt2PIn2WDyfytXfL/qGT54uW6QHE/E48K/Q9od31E2szxZk1CkB
	 tzm+l9ta+HpCBNzg+QWd+yah/jKmE6eHnoLteqkxwtO2tEqSbDoWgIab1EcxZoXyPu
	 jvhRY5UaVMYIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8728CD8C88
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 06:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178081467368.30556.13156983160750685526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc1b8bf57bd1c9f5838b50f6f28a3daf29ff86694e76cb6a407f216b526ab975
Date: Sun, 07 Jun 2026 06:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780814673
