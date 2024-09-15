Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38E841FB4
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726371954; cv=none; b=ZYjumPX6Igsezf/ndv3MAsa9MrBdVzH62djq/DCxxG4JRIigFvk+SsfJbD65KbQVZd97kWakoJrZ0yd8aa1cB6emmlcb8eTWZbi3sOjizX+GKhrJkURo9UU97ZY+pALprQw0hkHQr+CS2RSlgUB0STcYVjZQPdSX59EDSyNZaHY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726371954; c=relaxed/simple;
	bh=O6+4QVIcFJXO7r9UFe/OXSpmBRx1P74P3UFp/YynTpg=;
	h=To:Subject:From:Message-Id:Date; b=UppaJq6JhKPOYVyYL6Ui9Df/xmo0i/ZOa4ODko7DImBv5Yc6kfsmJgcrjj70E9cm4XC1D2+YFzPuLnRXfPk7C8p9wuKGG74efy1rrnQMJEpqKgLjeLfHTaVlgJb37QDFgp6+y3pU/RVo7HZ+knSj8f7uvStaZpBrSJOatN4AnO4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mcavCueY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mcavCueY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE0C8C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726371953;
	bh=O6+4QVIcFJXO7r9UFe/OXSpmBRx1P74P3UFp/YynTpg=;
	h=To:Subject:From:Date:From;
	b=mcavCueYCqOgahboERHA37c30xt/Jil49+r8Empq4Jf3CGn4+bhKVXWWCKaMvTV1+
	 JLuW8BQZN1mzgSoyPbCpJutZYwLVMEAoJk7N3b/5DJIC2djn6S3fkg1V5WcsfqccMM
	 CYDdgMgeae+x001e5mSZhiKYGJEkQ52p+6qdxS6Hj3JKepnDrrbAakklubXUB29OSn
	 JGlYYfn9GV+pWqYVF7Y6J4BGDMdd+WexrY7Y/cSUUCMdYp3n06hvENwXhR+y8jI/Bc
	 o+WCIN7xF9g+9yw3wHk3XMiDt4RigVERqtPdoJ6AhpSNb+n7fcSIN6C9TSeAezqMF9
	 U8ytisR2Xyt/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A901BC35FE5
	for <ddprobe@lists.linux.dev>; Sun, 15 Sep 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172637195364.4152.2501534103149462742.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26d43fb93c6666c23e5c23c16d549453a862f1e10bd0e5d024b1ef676a6264ca
Date: Sun, 15 Sep 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726371953
