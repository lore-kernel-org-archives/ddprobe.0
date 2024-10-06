Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18C9413C908
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728219954; cv=none; b=XJHhbfwz8KGFWxfxbw49q6smYHOn+WgQDz8XUn+Z2HGefiyoGsaefl2SBG9z7IJpWtFUwDOBPGHaB8c0qY8Pp90Q4rGAC8CSSR+sRehgkiR6W5B8ZiLjrPZ9uRiTItplFvz28TdK8cpChTaIeyfeghtPsX14w9ov4C7QjQ6qh6U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728219954; c=relaxed/simple;
	bh=tkS8V6/SwdrqDA7i5RVWLJ4spkQ3JOU2i2Ht0/QoA1g=;
	h=To:Subject:From:Message-Id:Date; b=oH/0hsTK7LPu48n5vEZlwgrQOSzRMjTL9ylDXhh3oEYLXyuhhT+FqjvICu5euE+mifNJtdSLDkypGauVhM0V4nXtJL5p4omKEKjGwlr3PLzfx0FEhWrlHPyPw/3vFGx9ix1p+bL3xfjMvg61e02VI69GvEtEHoQgu5YVrhKuTGo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b6MrUnL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b6MrUnL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE422C4CEC5
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728219953;
	bh=tkS8V6/SwdrqDA7i5RVWLJ4spkQ3JOU2i2Ht0/QoA1g=;
	h=To:Subject:From:Date:From;
	b=b6MrUnL6gixKWZVxUhSygGd4enpIKdy1ec3iOvR6y4KhXA0NDn+BctL0ssWX/oiv+
	 +3JdBscSYuSRzQRBryYXkZVNGKXqnmBEbLKInvvAhEU1fXtGf5v/z/gU6jyOy9My3U
	 XMR0CLPSksdGQ/qMEpkdHISLwQC9fWzYwobHWUIxBs5/8+80iClTX5y2k0QLgnF0pr
	 elJl9+MnUW52LYJwliY30wxideQeTPGk3S6i3oqzjHpw46NZwy4xWqVxHHOaFY+ss7
	 sPEaAMvZq0+Sgqlsxj+XgKudCQGkQhYyj4QILwrdkty3Nbo28OfNZYOB/OXLigslym
	 8q5I3ovx4sYGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F45CFB43F
	for <ddprobe@lists.linux.dev>; Sun,  6 Oct 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172821995359.30589.13559893631688379906.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46fc4004f581d345174b6a690304a7d2dbb31dc58df6822e2dcfdbba25fa97ca
Date: Sun, 06 Oct 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728219953
