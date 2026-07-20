Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E6E38550E
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:28:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784575714; cv=none; b=enjWmZfshpSQTZd2qytZ3xM8+R2TwHjQfxjap7a7tjxPdBCLkiUhaVgCz22o4rqh84TFLJR8cJgVQHaFq9qcQaoGoFKEAlYQ1B/96fVH3nGUNgK8ZR7Zt9wseMuwb5NIl/+zZThKbBNvdE/LA6Kuq0IY0B4CRW/mRlw158lJH/A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784575714; c=relaxed/simple;
	bh=CIsObKBedv54DdE7/075jjSMYjqtoiD/MJq6G5UwQWg=;
	h=To:Subject:From:Message-Id:Date; b=UK0va866yTuyHKDttPo5zsYI3wXm14vl+lOQna1uFRALH7wXG+EGt8n9/ifDU/SE7wRcO87KUgJWGkySaSJup1FOAGummGmfFa+Y0DhUdSb2o6yHx4+aUg5uz85Iixp6+y3bwRe48Cl5L8yY/2Btwi7STRXiS3Lw59vg62Ditxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MJEshhQf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MJEshhQf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 209E8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:28:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784575714;
	bh=CIsObKBedv54DdE7/075jjSMYjqtoiD/MJq6G5UwQWg=;
	h=To:Subject:From:Date:From;
	b=MJEshhQfTYtIsIgJ2wrsgF896Nx/nNAy3T6YxoQXs/WYWLzCZ9qZ7CgANLH6QY4uk
	 A+evwKe6TcKE0XgHggiJ+vsOqBjalUcLa41GNiGwKOpaDsi5Nz0sG4kuq9Bavikap1
	 NDewfjvPJJm5jCXP6U4SG9lmKjxwHvzObDA6BBAKdX0KOQ6YTVlMkuQ89mK5v328kF
	 2zqj9R5getSzNDNyKoXxtz53LfxBUZpvB9JCmLvcvRcAOR1DkatYo6R81/UFUAwZEb
	 15UC6hxrKHmgi7bb9Hsbum+vyy48afjrRKadIRLr65JmYhw5sQjRlElq26ZlIwdw1i
	 nQJhbngLUJe1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE4E7C4452D
	for <ddprobe@lists.linux.dev>; Mon, 20 Jul 2026 19:28:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178457571381.18252.14047287464866377000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f7755b35a6461dba51a039d7844b8c1e056cad7946fef265a224c14e844c53
Date: Mon, 20 Jul 2026 19:28:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784575713
