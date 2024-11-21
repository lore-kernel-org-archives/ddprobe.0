Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CE0717BD3
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732172154; cv=none; b=k4MkR7DFsEtC7mMvFunC80rkv/XI5dmS/k1k5rR7cGooSxccVj58mB6KIf7hCr0k26olV86vGbqzYdelAqTgqIl/G3ulFqNtSeHBp5SWiXSDnOX/uMbYPYaE0rtBYXU03DSt2XHeNtaOAjOePm2wxC9zXHU/nv99RN/3ggjg99Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732172154; c=relaxed/simple;
	bh=oTSCAjSHevFF0tTM4r/GAwtHkvcEMLmjh+f/avkycR4=;
	h=To:Subject:From:Message-Id:Date; b=Jrlq2pKTOsxICFJa7WUVcPdCEAgYSYtATsMrfEr/jIPULcU9N6HoXYxou6vQTWaXoycoGT9W8FbP1LyENnahGMNDWxRkS+B2hbRc4zY/5nvwCKvdDjzyynzARpVBZri4VAyso5xyjEbBhqvNNfTERxE1MibDiIe6LmenuXq7XmA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMU404Wp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMU404Wp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E41C4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732172153;
	bh=oTSCAjSHevFF0tTM4r/GAwtHkvcEMLmjh+f/avkycR4=;
	h=To:Subject:From:Date:From;
	b=RMU404WpV1NeMxPmDnQtE9A0ZPGCv29qUOAn6kWMmvy/WiW/U1CcZd39CC4ytXKq7
	 GNVVWB21AJW3ZBEmw2lYlRxI1RrUtjBvxA2SzJDbXf797C7lE4iTbjlyCgP4OseQw3
	 BLjcLsF7K15+NBWnFli65HHiJSbitNdaMA9TE0uNIRhdzv9FXEZZT5uPNuOnPgdVzC
	 Ux2Ug9POosdMVr1idF8V6TMIDn31JcsxNH1q3sx7tRkrMNmdj5RTtFdQVLmyb1uW7Y
	 4Em/+xttEQu3JCiHmZoMJgbiwiOBLB121PbLIgrVoRjD11Jd35MJTIDctHE+K4Vvgv
	 bz8Y70XjveyFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9568AD75BCA
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173217215360.11192.1563333705971119690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cf90b9aa3e6ed3e89601a0fbc7baaafe8935b76da0ff8184aed767620f023c1c
Date: Thu, 21 Nov 2024 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732172153
