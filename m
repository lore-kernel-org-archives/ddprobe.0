Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E703EBF05
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771459494; cv=none; b=GQjKYOyD7K7EtQLNc3JH/yaetoEZeLU8yFx1k6+qE0mxIwNS0e4xo0wMtoKSAtwv8xdquTP4e2hS3qF7oASdJp+V06SJ0MzkeS8o1YTS52Mca42UH/orCH+RdQruv6wZm5KCjhuXZq6pdTAtf7ef1H+4oFMVvWioRnANmHx8ZYw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771459494; c=relaxed/simple;
	bh=5qSSi7cQZlDE1tyrriTnQrsHGHzEMN931jSql1uKCFo=;
	h=To:Subject:From:Message-Id:Date; b=cGxvPG54VC/W3d4uKpoUW5pGWKfSjaIbxCkpQvsJzL8PjV2qQ2kDko0swLYWBCc7phchFxhoc8CKiA/mx93CYRR+eHrO7fOF7eTqRxWQNEHiMH+5Gt27rArcpgVrqZ+meLFeYP0UCxbjhu9bgjadaw43Mjty9uP9Y5fydwwahcI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WXAzUM32; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WXAzUM32"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA707C116D0
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771459493;
	bh=5qSSi7cQZlDE1tyrriTnQrsHGHzEMN931jSql1uKCFo=;
	h=To:Subject:From:Date:From;
	b=WXAzUM32L/3BKyKOapVRRQ9ToYyJawZ665//5dG+ND4hNwwtmLwrC6DtHFV3f0Lay
	 FdQMMmj6Ki1ACr5uyjcc2GWp9UpGaNsyVZZu9cnQFK2/R30x9oEiJIAAYk3NFkZf0k
	 hDz2XS8taqc1dI//SqsU4LHW6MMg9bTvHlrH5HDRkOFjtAKJgc424ASBufPotFb/4k
	 Z68Vkvli68rMEHxf6JdFun5ilOfv3RMggs0wb3N6ELxm42ONtwjGNwqRyXSbapYzbv
	 lNd4n7lSQXBRYIbP4T7KIaHIxl+a5rKnTyep/YOUhOvSZTLRuLvSUr81wHEyIcGsaT
	 3y1dXZYrzvgCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1ACBE9A04D
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 00:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177145949363.19994.14867727811481650932.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9e1183a22b53d5665bec5631a30266c1fa530d12505a6b163da3bd6f6b04bf0
Date: Thu, 19 Feb 2026 00:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771459493
