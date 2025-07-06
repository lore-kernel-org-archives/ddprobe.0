Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF9D3207
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751809794; cv=none; b=gsvYLIdLaX5cfFwpopCTJsDTZy27NKvI7PVgvDQIEwlcmOgQvUc3z9L1LV7UlGZSZj+Sei5Fx3GK469r4vNu1u0XYxbX2UEYcPn23jgdzSD3bi8EoUErahXpHP3vpXLAdRC3sH4DX5CARbg+c56L7vAeNf7kH3t7qcxFBsPoN6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751809794; c=relaxed/simple;
	bh=wbrXtz7bW5AjuE4E4Sq9vc44w1VMWX2EH5O2UQUVEzQ=;
	h=To:Subject:From:Message-Id:Date; b=ISm89llCKNT1yY8MpxjgnWCCb4LSSjSWUAaglzaipV5eDLyXXz1Q2ZgJI9xx3DHNy3Q1lcs80QmU2HL6hyhZvAZXBaLet/iIi2JnqOP0sGgvF7c9oQw/Enf5EamFjbggL2z0mQsG37G4JNfpu98y37ff4ukTvvhnbGf4OjUMbXA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1ShsnIR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1ShsnIR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A09F6C4CEED
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751809793;
	bh=wbrXtz7bW5AjuE4E4Sq9vc44w1VMWX2EH5O2UQUVEzQ=;
	h=To:Subject:From:Date:From;
	b=J1ShsnIRH0gud4SM4iVVzs/aPT6KWgwLCNwzjLXSNYrdTRLQMPAhfrZr2MK120VH2
	 qyI1ObGtu+runkrucpC4rZghrk/qXqgKqesTfjeyaQMc82+7fiJyiJAYqCTNoXnJaM
	 8suh5M3oi9VPxpCYj4bSPGZPdCsAgm1Bl7ukIOFqJSuvUYOKJSddAHBFMXmIxPRHZS
	 RFl2XgD8Y3JhiVhF89zsOnZlo6FxR1RVELUIes0gJCuCb+E5plfpP0r4gOQrdmvc5z
	 Np2jZ9wHILL+RsWW0T60FvxFVcNnjsmziT6dQrD3zYot9MwgR+qsCXlYNl5oMojgZe
	 t5p9sIl0PNNkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1F1C83F03
	for <ddprobe@lists.linux.dev>; Sun,  6 Jul 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175180979357.1510.7074597915405165949.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36344c16e274964f7fcb6ef4d993903b04214cc1ded6d37b99db30e6c8a88bde
Date: Sun, 06 Jul 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751809793
