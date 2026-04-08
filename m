Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7044828D830
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775609734; cv=none; b=fE8dPkfRRE0FJiezADPraJ9/B4ZpSrl/fN0YsGW5WlzSthQPitvIoAHuBuZv6HY7f2MpsW8HhHbHtbr17MP5IgrXLul1506y9uw0go0w6jXGFFjaA1azfXra6e4H374N25yUUKe0hzDm25PQuFt9U4rXfG/Te4lJxt16J1JmYMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775609734; c=relaxed/simple;
	bh=xjjK+svCbJGGV9K3Hl0BMGX2sTv24R5sIaY+8BC+ucc=;
	h=To:Subject:From:Message-Id:Date; b=Zr/DlqFNZGAR5OseFpd+5jcFInPsOPoszNJ4GbMVvK+oo+2ANOeg0X4aqvv+H4L5uOnrAsKaVhTOsiJSOwENgZtlLafagikb2aW3UPxjaxXnBsyjv+pVA/erQXVDAz8ILBhhjVFNL3hhwq2WR8RRmzu7gC3A617Dq//Jo2/O76o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZeGocAfS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZeGocAfS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCECFC116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775609733;
	bh=xjjK+svCbJGGV9K3Hl0BMGX2sTv24R5sIaY+8BC+ucc=;
	h=To:Subject:From:Date:From;
	b=ZeGocAfSDUTzWamj2uQxlx5SQLwisLum8hPDCytaKScz3mAAkGEfTjvabFJTychlD
	 Ku6UBwqWayAMYeEUgcU138munJHTOVVsKjYwSS5ovokVJlLBMzDINj9xIM2Bj9xNQT
	 lBYJpVf2AncJLA+KTMbuKJzkV5XKKmrua4fpL/R2F6cKh0uf9o0J5uaveKmEYmmLZs
	 L6eEzRwWokennuEPpnSOMNvhc/H5fqhTOnzjCmJCxpCFVxWGcsnCF9+TjlNNTdTAi1
	 TAFxd1v2cYaShlo1xvSF027qT1S4D71Tpf0Z1QQKSKEnK1FEnz2VnL7/Ml6SHcNBN7
	 VbTIuEJ4m4VcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED1EDB7D0
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560973369.19734.5439827973332667985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7744afe5b539624a96c4db304a791af207970f787f66ae1d4f5ec0db1fb08373
Date: Wed, 08 Apr 2026 00:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775609733
