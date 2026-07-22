Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4351A3546FE
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784730514; cv=none; b=AYM9RNM4bTQGMqk3at2v4/VPIqbAMm185hhvX1ocK2ukvRNiSMmx6Bz0gxU2jg2aiFWb+Az4biaGF4EDNf9iH144SGyazJiGdPuvEazkumj4C/WcVpuWsT5+36MQy84nHbknBul8TCCtOTSr2S55zdwsjAbIa8GtY7ftTmziIYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784730514; c=relaxed/simple;
	bh=0+7kptVFA8fPZD4fUD6uhR6w0DmackBq520FrC5mTvQ=;
	h=To:Subject:From:Message-Id:Date; b=RDU+JwVA3nFc3LEUb44tRgsu/cXYAWpgDlcNIkWAE84Jh6Q+maUCDG6AA78YzxUMVL4JrD5Lzthak8VOoq9gQCuuD2t6Q/Y2WORRL1PTqnNG1lvEr7TbriI0lJyZNaF7WM+JJawScS/3b5E9ruTQu8z+gPSaYrWxao2IaHPmkrc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkIcwUJe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkIcwUJe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB9CC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:28:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784730513;
	bh=0+7kptVFA8fPZD4fUD6uhR6w0DmackBq520FrC5mTvQ=;
	h=To:Subject:From:Date:From;
	b=OkIcwUJelSgBD3NH47hRr3pLWdHfRpWrPVMmnzWIRO3MB96sGlRT2PEO6usDU5jqR
	 IYMS0ibvuwyc+3DYwzfVIjIQgrf1Bf+FO//UfHa5ottu2j4Dio69f3fvL0uj02NtJ3
	 z7PmoEWsGmapQDWCbBnWP9Gy43vzRn2TsvpWPO1erVz9KEIO16g2ofSTgGh4mj9Iw7
	 pxzDLDQpTtJz5apTw+BXNiKoWgssqWveaHYceQaNEw+MLq3yJCFo2PUEN+2uAwJRg+
	 LAnRJEHF9j4SG+YkOjXGc6m1M2i0Sc8tIsLgjZqc3W6FVCh1t2lk9YVj7LyanP4HUD
	 wl1wTFvFrrv+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B629FC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 14:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178473051373.12706.2078201916758254803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 83b9695f9c9d3c11ea1ace683de2cc66d106bf4064e2cd465bce688ca1b082e2
Date: Wed, 22 Jul 2026 14:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784730513
