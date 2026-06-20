Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 529124C6D
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:46:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781995594; cv=none; b=dNrDT4icIQpVNVa6uDCLwtzUgr/ZSu+7zsfG69LwG2aPL5KlFc+UKWFM7ro39wZNQ/B4TYbnBaRK7Ymgf/MnhJdUqsED1zLLm55/2ZGW0NkoQWeYoYEo9bpZwmtxfSRcLa1VMZY/cVKVKr7wlYiJuQ4iHyhM3WuZt02otIdQR5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781995594; c=relaxed/simple;
	bh=0dghOSi3UGiMueOKKmwDP/VTSb2tWs1JEBS62T535s4=;
	h=To:Subject:From:Message-Id:Date; b=jzISfC9gpFIkqyQAZwRWJgX/mop6Llvh3uSa6uqYcMY1W+cbmjhdmjQJnRtDr9eGifSpZwxpIErljIOkqLp9rZJEJEq4Y8+sJU0V0afbJG0zoNKWUVyXRwfm5ncLvm5WlefsAvi9/rUZRdgfDLBFtDdM3C51GEfQ4qWZ47i2dzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WMOmBFYw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WMOmBFYw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E2D26C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781995593;
	bh=0dghOSi3UGiMueOKKmwDP/VTSb2tWs1JEBS62T535s4=;
	h=To:Subject:From:Date:From;
	b=WMOmBFYwMUYf/X29qMRs1dUccFWXOnSa4uHTFoxIVFBkA9eruAMVX5S3IS07ZyzXl
	 tggNvJMKevI8tdUCqjQ3dtXcqXS2/0eMdDEiZ2/QC7d7HHYCLQRQSr4uB3eRGphTNM
	 U2uJ/lgHZP0YDDXuLLZgZBZOjfsVYlZxy5832qv0tNVFHeUcpgwe1rD69Q9EZGUY99
	 4OwezJxOVoYc2yZq5Z+2Z19Rh+xRT1Ggqw5fKCr8D+Ydlxx5Py/yClsPUp2+jyCI95
	 Uu7DJMfopJNOTYbTvdkhV9MflszNaiEVLxhT9VpuGI6nAivPnRvg1YXUQeZUtp/aBm
	 S3dBhJ6Ouhong==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3D38CD4F26
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 22:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178199559370.28579.8196175544363351761.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d49d5dac235f75548ee0e4266f2c76b2178d17e95fb32093e98bb1b27bfbe66c
Date: Sat, 20 Jun 2026 22:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781995593
