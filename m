Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D2D41AB911
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:05:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720087523; cv=none; b=dbglafxe2dXr+ySOHCbNPwGIopVT+Kq4fyWlLTwCj6GjfhEOcZbyuop54QLlBcHFBt6fNdPeCZh8Elp7BybdX9OzmZGbTb8REyi10k39cv7u4H/fqZ7hDex7X/zx7cBv3VdMnRM17pkDhUGDEbuKUmwNpd124qupOqZ2suh4aAI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720087523; c=relaxed/simple;
	bh=tE3x7+YMahrigAOfT7pF1skPEuBXV/8xUmmlrxEGF/8=;
	h=To:Subject:From:Message-Id:Date; b=ei+RZ6ZiAyOukWnoUR99S9i0vyylGYXsbB9umOQoU/KbkUJrSy3roTM7HhJj0QHVGGh23NOi/KNDm28CNVPlJIlCnBQxbdOCkkmP2zWcEhOy/aAzc4nxBrrn7CIdeIYm+T8sCy/70e++Ui78hG4VgsEW8ucPFZHglzTVDQC4Br8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XoR3odd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XoR3odd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB192C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:05:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720087522;
	bh=tE3x7+YMahrigAOfT7pF1skPEuBXV/8xUmmlrxEGF/8=;
	h=To:Subject:From:Date:From;
	b=XoR3odd6XbyJghIQHVcthiu3E7s6zzVze2oilbGXT5suCSF19Yofyx+j3N6+pEIw+
	 BFtDhfs/lu7AEeP0sWqPf7N4ESbC+BpOmt8n99uBSqPn+IFUvAbNPpVPsctqnAa1sj
	 8IsRKBZ7oHLfBEcPCmEZZWwIS4JWrQRHdM5RVUoV1ajjcdc110xV4wyf2wo71i0IiN
	 iurfxjJ7dJCCY3IkwRJNagp7Qe5ZKNKj39jiuNxxUc1ZWEK4r2KTQ1m+JSF3vRPtmv
	 rq3jT8tFa8beIy3YxdcpnzTMBwteXxFWgFGaVLZ3Wq3aruiwl2Rysty5q/wTpwfOd7
	 8gsqyCtZNvLfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5A76C31D97
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 10:05:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172008752280.27325.6529590757088263265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 642945bec653fea80ff931c4c8fce3eb09f61e075dcc9eb26efda5cd99868ab6
Date: Thu, 04 Jul 2024 10:05:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720087522
