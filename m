Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C10523D7E3
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772900094; cv=none; b=ptlLFz0+ZAgfINwkzwZtCV+9YnXrKS4Nm4vwi5L58J9dAcy0QxSTgcCottRBydxmeuilvECsDEpuh+2jBT7rGmBZHCeV9sM1MVI3CviHslPI9RdbbvBAwTRQThGGZMYIGF/wpFNxNwxg0iebN3ljeAspZqv9BzH6j6wkxADgjSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772900094; c=relaxed/simple;
	bh=I07N9ker9dR7ff0KF7BA+6EzDK/Q0s01tsiDOwI81OM=;
	h=To:Subject:From:Message-Id:Date; b=l5/ZAaIQiazS1TkwyXZbVNWN0ZS8a/2hyF56Nbd6h/hdK/1FEDv5VvuLbLqYh/OJlGh+5FXW3aVYru/0XmPZiU2FUGD8dvDc+8CYKbyKWtCVvmN+hWXUO1Yjq1EJepMk2wzjRWFPOzI3WU+N1jngsMuhVTiA3lGFI+p1Ch/3Kno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CGdrBnsB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CGdrBnsB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1901C19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772900093;
	bh=I07N9ker9dR7ff0KF7BA+6EzDK/Q0s01tsiDOwI81OM=;
	h=To:Subject:From:Date:From;
	b=CGdrBnsBaCrUaqyhESIS5VIQ/DoYUvHnA1W1Bees89VLToJzirkj2T8XWUryc/PSv
	 kpfPmL3/lfRkqIuj5WuKxIfFDtibrEKoI4AtXVXkRd4t4g46w7ml/uEgekdeY184Ge
	 lhdUohLmRrKcLyjTdL56w0BaFC6EUG/O4Z9TaG9AdLM5zvgF2cHTXOFyUHhkYSh6s1
	 EB/I69MY7PeMmvlM0yPimQfgE+4A/gnVPW5NjsQF4KfM+CB3gkFXZp1GSw5XwWU2Pj
	 NlW7ni7dlctLobGFfgpkF5gfsfke1qmrmE7L2MuLTbZO8dY3vuZY+yt4jE8EmG+bL2
	 nWuPRh+ctdTpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5328F55100
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 16:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177290009361.4995.13069408803296076928.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 964a95f06f12991de9ba6979632685bdd6aba8e46a89d6ac1f22deff2f8a295b
Date: Sat, 07 Mar 2026 16:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772900093
