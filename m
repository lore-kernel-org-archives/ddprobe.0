Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 669F03770B
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:34:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780673674; cv=none; b=RtBobuy7JJnjvFz8Cjl2WmszeBMRGabKFiybF64DjL1g9i75zu3fdNiTnbnIo0vln+NdJ/y6lkPwkPHwVdbYYQSvAZWs+yto/c++go/66e5hHVwc0eLmiudtAf6yuBNY+z/ot0sSKhaBu+tIQ4tYHqprl6ae8Ax1H2c/xXcI/58=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780673674; c=relaxed/simple;
	bh=au0DV7/zcieurYoPpi8sSMGYKr+Y4guWLKR2FQk0mHI=;
	h=To:Subject:From:Message-Id:Date; b=YGzXs+fdGn1b5/KbzzAFUuQmBCS5kNsne6qE+L7UAu7nOK0nWBr1iNFuaUtCTHH/k4+eKW2DGtfQ0V8L8BzInuSp9Dlph9AT7knWaHN+n+YAxljf3S6HgaH0mbCQ0U47/h0qimvxXIhBLj6NiAqMT6rgdASSuqWFah/x/htF52E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pkAysinc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pkAysinc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08A6C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780673673;
	bh=au0DV7/zcieurYoPpi8sSMGYKr+Y4guWLKR2FQk0mHI=;
	h=To:Subject:From:Date:From;
	b=pkAysinck/fxSmqL4t/aYLyEyIuDpdtqlKL+9J9HX3RmC3QMLBTP2Vh7AEaAH3Pts
	 65VBRzkI8KKtFjrM20miRGcmf8TEo5omw6J0NiuO7WUz9ZaAHbkZdhAoF/ulX6HzgB
	 8NkVz8uPRs79+lmmYNnOzoQ8a6g2jvDdt5E8ahXOyfFQIOMZR+gE0Qgag63HQiYjxc
	 laFVCDczpwMJXnZ1g1rSR7wBCK0gXCTghDUTbcGQHnoAQDg2PJmHLlgXJqKPzgAZdz
	 UEVydo5KBp9zoRNh1+94t9hZw7fFgJmQvNHFISX0KwJ19Na9ERtVPxbEdX9+KXoFEN
	 gxseqxfyngrPg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADBDACD6E7C
	for <ddprobe@lists.linux.dev>; Fri,  5 Jun 2026 15:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178067367370.3505.13087184785287696749.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2add07445e6ad222113f2fda93079956f13e128c3d8ae8856ed9ceffaa07022c
Date: Fri, 05 Jun 2026 15:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780673673
