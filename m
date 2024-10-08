Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AC1F2B9BB
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728362154; cv=none; b=dFZrQr4HWjq97PB4KEBRU7BnivEo4dzL5ZH0StqKuIw5RhRNBRqgAIS4wcGna/CCC0rfsZHF1Eeftut7Pi2dH2QPObF56CuJCER1loKjoCriiU5dwcyJROfbCWvnCBuz+sJN3WSik3vN2Ba0wxy6hxSGKnVdCH3HNjnemLPsGkA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728362154; c=relaxed/simple;
	bh=E4oFE/AzFiOW330SanIkCEr93UWEObmB1wtYPXIwga8=;
	h=To:Subject:From:Message-Id:Date; b=SFBFAlSAYkVmAVoC8DOuMuH+v5wzdW+svXz7V1KcSI3LkTGVEUV2XEwQo7hE3pHD/JFyye9pBvdCpsLq0kZu75y53iWkTq/6eZbD82OXmLNj2EjGOaLiGOjDw19HBEydW0BV1/vy6K0+kW3ltl72GekPhyQbs4b+sFt91x4uEIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nMh5JZkv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nMh5JZkv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3367C4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728362153;
	bh=E4oFE/AzFiOW330SanIkCEr93UWEObmB1wtYPXIwga8=;
	h=To:Subject:From:Date:From;
	b=nMh5JZkvyB+6IGFeytwfYJCM8Q2h6iYNBV6InvQIDv7jwrw86b2VdTHWLwbxucmQx
	 YYm0QGstADPjcMGm4Tpprcm6WOBx/F82FwYwfXUm5TkBfstpm4Mf8aEw2V/FI/DzDD
	 +FECGjdJJv63L8H3sWgKAkEgU7ylE+v3ynAHX+YuNT94e3OEoCfoM+K1LWzNzG9gOT
	 APWjYWUDu7uerOKi/KaM/Ngrfcea4jBDhmCs/SCo/AFzpYb9dfW+36hm2n8KSDt1wo
	 TGcKlUErLeqKGx/eBBPwUK91piP4ZHrQLSaIC3vvti07AZQcvLBtyr6OaaeJRb7ol/
	 oD76Q7hMhx8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98284CED266
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 04:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172836215359.30001.16442362621258758002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c75859ecf1a2a104055fbb94b04e2092db59935db2431e5f0904243958310e7
Date: Tue, 08 Oct 2024 04:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728362153
