Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17BCA13D88A
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 12:43:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716468203; cv=none; b=clquLq64fSM0HEst3gImyBxv/6Tonyo5f8SoOKfqix3DYo3iBZYArf/t5B8ajkmM792ARKwGuul0Yw6WFFMMdLML2zXUmdylm4CrRYzpI2++en3UTDeCwIJrC/wQuZJcs7dLo6EkaMgiLzIcEOj23DlZ7RuJuguGYpi4oAnb8X4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716468203; c=relaxed/simple;
	bh=0Vgke5ycHuGbaGWPgxPZnZUBX3d9AmmYWsvxTPnUlkE=;
	h=To:Subject:From:Message-Id:Date; b=XEMVFg4MuY74itt/AQdVDNZHIu2a3tMJZzVDB04akjWNrua3rNq2qHuoF5qnzmOcXi6lsdgx5u0L98zzMDmrcfdQqGHqZ0IiT4FLPnnRuxJNglm6dHE367nzowOoFAMLkCd0jC2MYpuQVfeKR3KFtnSEbeyP+8bCcO1Ibs9ZCA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SA2MWnNv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SA2MWnNv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA2C5C3277B
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 12:43:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716468202;
	bh=0Vgke5ycHuGbaGWPgxPZnZUBX3d9AmmYWsvxTPnUlkE=;
	h=To:Subject:From:Date:From;
	b=SA2MWnNvhI4AawTn2Bm+Cad33Njx4Boq3Tc6XszvsPHYpybSLfYP5DdE51gfwxcT3
	 v9b7vkFj8FZ4GDgbUV5FYi4riT6sL0quLtzWnR2wuD5BHNzsyHD4XOOEjudt1oAeMv
	 muI5imQN8r9+dXlGrGkBeATw7iATNmG79GwVFXgmhGGi8yvvZXBdz5HV8kFaSP92Tb
	 tTN1PGbH0OWgrvO0efqgrTI4odrNPgTgLUAFkf/r1m492Fbe6qyhMKbdG2EzxVKu20
	 ephzeYCEz9rpav/jf+TVfV1oiaDiOkuOeSLgwcHX9+ycspD4eSpk5qbLG/bff62M+4
	 HbrzLhHBwbSlg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C78E2C25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 12:43:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171646820280.30146.3677367054706315401.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cec5dc6ad88b85e40e327a64db57e9c5401a992b42d04b5b03485ef728ae7ba
Date: Thu, 23 May 2024 12:43:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716468202
