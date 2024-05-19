Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81DE64C8E
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716088343; cv=none; b=uNvaGOnrXwgsiXtE0p7Mlm4r9N7dy+2eOQwx/MfkaPw3LtUl+dxlaFUqsl43eaMpBzUCkS+bidE6XfIo/iCiyGEXOudLMiVLC/10qNsU4wuW2o1Y/1+eiCmdmBgW6EHEjoSmw8TlrwgRovCs2ZRPim5vfSiJ45EpP8sFadcAeTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716088343; c=relaxed/simple;
	bh=chD6k5qVM9/AfECxI+rxewuKSn3sD8dyYKZMFOSu7YA=;
	h=To:Subject:From:Message-Id:Date; b=uI1EkxBkORnqvLL88R/HHkMaC8+5Txa5omNyveXYfk0XLH5db4LIDVf+311y0cuiVceBTJB9nd63U/GoT7YbmFJcw8M6QP0y4d8UN++7Zt8urpCITAbAegr9/YGajgHeDT6Et6W9gPf29EFSoM6NcUct1xu79qgYH/PNFN9MyaU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cVACRbzS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cVACRbzS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB31EC2BD11
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716088343;
	bh=chD6k5qVM9/AfECxI+rxewuKSn3sD8dyYKZMFOSu7YA=;
	h=To:Subject:From:Date:From;
	b=cVACRbzSRy/doT4SoErBxByFswV1v7rPKGdJORv2zLTjR6AohvnN+H1sTwsC5JNK2
	 ID44c1S2PIbBdch1ZCjnDloWXCwu75zrq2iHCcmMzP9WO7Wx7uZFpS8F/H38GhzXpG
	 N1ik9IGvl5k6srRAcm1AOMAaYL5rMO+lug6pSlAs5kKSuOCSKXZ/NbiAo0rVu/XG7M
	 TvrkpUz2m6VcaAVgck8de4iQ9yPCXEBJH1G1/6x+kTFVCHo8Tz60M2y1lzUQJ2o35m
	 T5v4VlOm8l+LGuaDY/ZnM0cEPUpRgKHm9gbSmjKt5D9G2AF/zcOQVy19c6lTapEa2n
	 2w8TaYruQM/5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D2D96C25B74
	for <ddprobe@lists.linux.dev>; Sun, 19 May 2024 03:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171608834280.14255.17373215316546506740.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d06205ee6951a7de4510ccd799ade1e95dbb159676e926f243bebd0ec084239
Date: Sun, 19 May 2024 03:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716088342
