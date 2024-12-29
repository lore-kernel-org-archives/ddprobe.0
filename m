Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 577C676C61
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735475154; cv=none; b=KkeLq+Nm16VLULlsI9z2Yu7n2vqM6iM+Qhs28uZbd3m13oEgtyMSlr29JyxnfWkGun9ritCjsC6JxnIoFH19eG3FtJnybgFWmgTIyc9eW5Qzl/o+QVSfympxfsBVgJSmw6UNpUjp5pFcjt8OwIdNzo9EFTQ4ZskY7uBTbVu7leM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735475154; c=relaxed/simple;
	bh=pbBS9SZ+CaC6JILbvQw9KHDmT1ldMK/DqtdqZpGcN54=;
	h=To:Subject:From:Message-Id:Date; b=u4LGN21iJIm9drwWc7164MkMCwzeG+7fYDxNu8TmUsMtOueSukhxW8ENF8vSNjueFahN70KwhT+aEg3nto+PTouTKn1uNlGbPcMNDqW1wihmSpEVho/V50EKtqoA2uIlKNcu9TUTaQeTvGaKYklYAsitEjjt+ZdWmAQhgbtOKa8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DIAHhNen; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DIAHhNen"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDA2CC4CED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735475153;
	bh=pbBS9SZ+CaC6JILbvQw9KHDmT1ldMK/DqtdqZpGcN54=;
	h=To:Subject:From:Date:From;
	b=DIAHhNenGeyf5mwn438qW6WIhFaa72KolflKSPrF65ypC+ViEqbcXSa86dM8VfCq0
	 KNiJbjM2LTvwug5YMQp5Xbp8ptRUiCSrMQLWSENmfssy2HpbkQfXR00ToCTWUYwJqo
	 FP76RJ/2lp0Mo8pAwDAoTkVYZPBiPymMX1wzN68c+gYfCe4f9orihT+BITTsYTI849
	 XpkmgpVrsxgRnG55gnkBVzZrZap8IVBFzo3wjuxGfsnTPA0KEFiEoEltDBB7qHlscH
	 VI2X62FgUUNK3ZqX2NE93/0zVakGDOqTREGfIjn7DdkXyR06CeAFxp5dOmibRIyNeP
	 7Z+mCSWxA8yow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5211E7718B
	for <ddprobe@lists.linux.dev>; Sun, 29 Dec 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173547515361.9828.4877205119386257916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccbfbb7dd18b2afe80a34ef31c1c8156c61ae8cbe8eb3ab5a0e54685b93677d
Date: Sun, 29 Dec 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735475153
