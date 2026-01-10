Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19BB6195811
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768059234; cv=none; b=LQAEA/2g4S3vD7ve6DaE9bfmarxAQpK5HWXWrRlJIRV8SECnYe6lCRXFSQ4F6xJV4XOhwWT9FSs4Dde+xGufZj+YLp/6hPHpa/zu3ibYxAZvShARNN0vVdE/MJnxgJTxesbvGOAtWfFbKC6s1pQZezw7YHMR+VdF0pp+swb8nDc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768059234; c=relaxed/simple;
	bh=9mo0mPAr/k57D95SGMTfOBEU5EzyKGvmEDw4I4qZLYw=;
	h=To:Subject:From:Message-Id:Date; b=Fk4/Lh3PRJmdR2wDBSwN9lI6y7SXqleYcTSQJb0mYxTNqPgveIs1ybFJ5E+bBw7MCp1jb34PfkRNrRqF+lueI0BUmWoAbYrn5TEjA4UD6w+AzIFZdDgpbZAhGcfI5ymoRaeCuZ0QY8RM+8etCNf8/pUcogEMYRgxCGdOm48jeT4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EigcyDvk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EigcyDvk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8419C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768059233;
	bh=9mo0mPAr/k57D95SGMTfOBEU5EzyKGvmEDw4I4qZLYw=;
	h=To:Subject:From:Date:From;
	b=EigcyDvkCog+3O9YqoBvuqPR6ET1Ndq4+Hgxc89155OMviIqgGLVCoqpBa9yXM1lZ
	 JKYEhomhB+RqYsA1uYtWEVGU2rOL+MCHFV7KEnLJvskV2PXRlAxhsR6ggrd+DOykHc
	 hVY6v3aynYFZ+X1sLe8T8COEpOCappgSoj9kaxlmSmwIoJZ5kih29JqI82RPdKQob2
	 RGYgamQ30fvJiAglf2GepU9lSLepuc3Su303qbVOyVJkz+w6b2dQdp4aRRgaAw2rMZ
	 wu2T5xf/e0S9Kwws9OaH/HxV2npYVsVFrqM1yiiZXirfas4JfenOkovNtjI2Sldllb
	 VgTMweD0ejNGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95984D277EE
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 15:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176805923358.17365.15268921862894710507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cdb85342c926d4073e569bb9b8c4cd11b2256d9d76ba1b1de83b925c1befb4ae
Date: Sat, 10 Jan 2026 15:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768059233
