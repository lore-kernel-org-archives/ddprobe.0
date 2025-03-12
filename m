Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA4A15539A
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741786135; cv=none; b=YyTxQFfqym5Jej1fFHfqz6LsB8oXRCh+OiNYOMUxQKQECyOkR6y3+rD6ZwJK692Ag5Iojhg6PlxT6x37p4XuC0X9GcX1XQ+vQvlDKoJn/Q800GvRod0ugrbfRNvNbFbbrk1GCpV9Tt4SXEYdrWCyjczw9UhlJQd1dn7Qf7hGteg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741786135; c=relaxed/simple;
	bh=ZatMEWJXkdXFp4EdtR1A3KXi78y25NzCfDzsImydqH4=;
	h=To:Subject:From:Message-Id:Date; b=rvkJC35IqI+AR6HtAsFY5e3Ntd2rx9DzdlAH3ynx0vZ2b/pOkEweG+aZ/1C9bJy1yAsQwb+VQpsvDlWqOQBMN7fuWao6j5AVyR0kOjP4uIoMCP/t6HAActj66sA6S4VAEEDlULPSNx06KYAmzPlms+g47joRghRPabYBKDAka/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qi1zoH5T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qi1zoH5T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4515C4CEE3
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741786133;
	bh=ZatMEWJXkdXFp4EdtR1A3KXi78y25NzCfDzsImydqH4=;
	h=To:Subject:From:Date:From;
	b=Qi1zoH5TrXLW9kLvCX+hqyrwJjB85kPWmSciWkJyP5ncpO7pMohgVN66/ClOIeHDV
	 UgnksLhf+Xe/oGtdub0ykRAPeZ7cBFSh1SdVJvQqgA7KlfVSghkpas514nb+Bhkyf+
	 G8u/hYntb4R+nrs7C6OIy4A6OONxlnjkInykgiLHl1AgH9ZoAaNAdP91+ock3q/SGN
	 GuZxV2xrqOdOHs7GmGwAeyHlvi4lcfkFC/apFP+i3XqzBaFvylsIWolFywkBgeOUD+
	 z44nKBbjtTe2nvR+TfxhELj3yn7Gop2OSWYrFEwxwNfdEzi7oaWlnYlDy7IFkobr2M
	 vpMVuoRlHTz6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C1DC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 13:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174178613358.9608.14823509535631901698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3ec49de3694107e7cee3f57002c5ecbf1df10ea711cd2ebff18602b7cf0f225
Date: Wed, 12 Mar 2025 13:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741786133
