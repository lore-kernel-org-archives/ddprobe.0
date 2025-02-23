Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FEAB6FC3
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 12:18:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740313134; cv=none; b=mZ5wQZypeMICoLaS3V/DOpEp6k31La61+2vs6J5vbErjkFC3d/+XkT6irie1LcxEx+lLQGbski5Xbh8pCZO9yRweW76vQmaPgrCpGpU0IpuvUl/R8yfdMElL4pZ25dR1uXJ7kFXfc0OpaCL3tWStNB0D5DYpiu7k2/YFqLtygXY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740313134; c=relaxed/simple;
	bh=p7lnMgIVarFFLuDZvhpik3rWYyMoxf0Zco1eP/CkNh8=;
	h=To:Subject:From:Message-Id:Date; b=Y/TwNDqqR4X233l8erN4Ij2PyGvCEtkM8p9rRLkfVgKOTO2nfIcB2SfAYROuWxNfU4/5tMz4S7OyhYFoEqtK+UL6AoZIdF6EPYnAFHRzAJSi9MtH9OuBOLqYVYA1D8W192QMQy/PKyX7zXcvp3CgdgVbSep9PP0SO4Dn5Sp4DPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gt6+vQLE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gt6+vQLE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABC5BC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 12:18:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740313133;
	bh=p7lnMgIVarFFLuDZvhpik3rWYyMoxf0Zco1eP/CkNh8=;
	h=To:Subject:From:Date:From;
	b=Gt6+vQLEthinBbtMGaNKVh/luFjvHBCVy7/rTq6bs70rCX94CeiKCF9K3nuTbak0K
	 xNVDWwXjSxaeGl8R9OMAeW9IA8Tnus4K2eCGpYB+OQnp4iQimqdosSHOboC7XMnkmo
	 0dkjig8XaT5YVYrkn/uy+8DTT/PZg7/M6yfei0gJOH2Q50JlyPDUJr5AaMIxX3Z9/P
	 FxqTRbUcL9TF2vbin4R7brI3osfoo41l1NUcygtDkfSl4BVkGvxpmmi3FTzTOchH+w
	 +34lC0gUlGmOZYB16w9bOw2aD/ivGqa1gXM9RWAM884KQcSGtAw5BwXPijkajg2UIp
	 nVrh5tnnuKXNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 978FEC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 12:18:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174031313361.1252.5860293336570876531.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf7c6035cfd15244fc7bd113bd038d868b68e6785a7b5c010d7c05e041ab157e
Date: Sun, 23 Feb 2025 12:18:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740313133
