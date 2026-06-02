Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E8138E5DC
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:14:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780424074; cv=none; b=nmYwmveeFk9SgTRKuKnNI1zqigS01K2hW+tMHV0a7GatFLkYNGKNIorVcgUsrJMMZ8UyBfKAgh0odn0gYIZTmCspSAQTnRpaOf52DJWS3wPXBwdV3I/P70B6PCZ0YqgYLDWVE6KnIT61nM+loHnQwQO14r/LjcndU8U+plTpe5g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780424074; c=relaxed/simple;
	bh=9tnqY2wVUgyygqG0+HZ5ZVqngE3xc82/bx/qa9Jqa80=;
	h=To:Subject:From:Message-Id:Date; b=LJYz3Ln2e7oZo15/XBjo5yaKWc2Efu1UpWiIWPQPX0DRPPzep9/diH5L2Qk2+UAvk2AKrM/iIRbNaeNKV4nfSdUrYqWJGeskchlQC2e/Cqau4stODqjhhP5N7kul1LNFsoQKD6vzrRvUL85F8Ro0RQHNuPCaWxkTUb7WxYDSjxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXBqTjsD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXBqTjsD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C78BAC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780424073;
	bh=9tnqY2wVUgyygqG0+HZ5ZVqngE3xc82/bx/qa9Jqa80=;
	h=To:Subject:From:Date:From;
	b=UXBqTjsDmqybz0czKcozSJuEY0JS6uBAloJk6QAIVA4kgWUbvz6rMCgM1OhwJ4I/S
	 khWiWAxQP29zNPG7l5oxeMP26O+wRmSdS0iTk19BpaqlI5RmVa9ZGrjC/ypwt/XIx6
	 uUJCdIACI6NQPpv/rNEvT9VeQxatykBCBQBdAIkVkGRjj16XRNmOViWiHx+VQqDROe
	 HUx15qDnyURX7hBx9o2KM/kKoVAtnlKUBXe9wUMTVJd92VXrK1yZ9esuVsCxrFILf1
	 7DCp09cNldlx5lUGv3dBm8MTJpqxwd+GAWc+nrMy0wWRTK2LdyKi4yw7wB+AaVxHVU
	 4ljM0inXFhlLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2BCCD6E5D
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 18:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178042407368.25332.11071712470654822346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b686d6606c38bfb1400f1ae815ec1b9f6b96a40ae7e99fd443d96d398f59f40b
Date: Tue, 02 Jun 2026 18:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780424073
