Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F16716DEB5
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733724354; cv=none; b=jFi2pAiaDH4RA8c5mwL/I4GsKa+bJpQGnPHImgIepC4kPsl8EHoWwze08zBZpnZOvpXkLNGt3eGLEtNX9GNsquVxz/R9VRrGD2qKK0GWNR1gPK1lBoeVJ0fYt7TrBefMWMU29L1lt9DK3NYgmIAnT8rCP/mt1nuwyOGWHyHSk44=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733724354; c=relaxed/simple;
	bh=35Va6NaT/NYmiQh3sphEE5kw68htZ08einiYbLNC92Q=;
	h=To:Subject:From:Message-Id:Date; b=TUMc1/GSmMnCQK0rz68ihcqPunNdx7AkecPNBAuTqlB9G2q+4sAa5Fp4xDZW3scwogoaeWXz9ggQ/RQzLO66gHBlHpKzllWjQL3tr+YgdUmgrwmpXwe5wY3nc43ax+D7vxgx1jx0BR+rLwqBD8ecIFWw/1GXwJFCXLa25Ldrudo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Fhx2fVD7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Fhx2fVD7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3481C4CED1
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733724353;
	bh=35Va6NaT/NYmiQh3sphEE5kw68htZ08einiYbLNC92Q=;
	h=To:Subject:From:Date:From;
	b=Fhx2fVD7Gpbq3IZeMjEfFl5VvzR9h3ngQxDi78aeKQZ9wwxnKR7guNhJF7WAd/xwn
	 ah950ULXOww1epFJO1PYU0aDqz9LnPPybhntgQZ6HKStgiBG/t8rR8luQ434+Pl++b
	 CG71q/z3KiyXHye+wnIUPiackBFMl1RmaIDNTCpOlvAMsABF8kw5b8fDM7hVIWUqMn
	 kGSD3HYpm3xce8xQRzi80Vvh4AXmQZjqDVAmpVTrh4uRG6ialw5IaglS43R+eDH4so
	 ghAWoV6K++JZN8z8Gdkao1B6ot7tnp3qhFHuN9WpOucg2u2M1C1REXeF94XtZnjI0V
	 KCe+8mCedUI4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DF86E77173
	for <ddprobe@lists.linux.dev>; Mon,  9 Dec 2024 06:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173372435363.24535.13281048649685249123.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cea792a6faadc754637a1ddccc346f16ec191e7999dfb140fd17895b0968a626
Date: Mon, 09 Dec 2024 06:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733724353
