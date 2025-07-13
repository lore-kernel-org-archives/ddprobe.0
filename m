Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147924A00
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752370794; cv=none; b=rfPoUZiECH44sx3AWkJC8MZBWWoBu4Ci9fxqhu/HNqt9oIkjsn3eJGa6tG+YswpRm14Ni8cPOZKXrTgGfykOAvRpZwEcXzg1XoYlRw0XA/fbUIJith+8TA8BREm9RgOfBwonniGkFf6hRJPUFJSUJ+74nnsRe4S1nZxIm6D5PHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752370794; c=relaxed/simple;
	bh=UaB3SBDD+KrGb1/nNwWAGCv1NFWy7Ig8BsZuKZ2CNWA=;
	h=To:Subject:From:Message-Id:Date; b=SLqlRvnv+0nJOEVVzG+3WpvWM5+V8gxqyGpjZ0JR1lzt4kdJW1S/vx6wn3cLnpGYyxBxEvJnqqGADI3kW2mHwxpf1XDuGiOM2eQO2a1ZBdIH0oMbHMb7aqMiS+30d/QD64LNgXhqkH34TB01+tyHj7YsNiKayRbBCYpVVowjBKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gvY+Jx3o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gvY+Jx3o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8FB9C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752370793;
	bh=UaB3SBDD+KrGb1/nNwWAGCv1NFWy7Ig8BsZuKZ2CNWA=;
	h=To:Subject:From:Date:From;
	b=gvY+Jx3o02tvUpGRbSd5E+HBuRbKeiu1myz0By4rlcGv41M9SFBwXgEdfU7fDT4ui
	 oYXNUxfx82ysNElLB7sBkYz1fa70Dy75znaIKH/A57ZYRBSSBn/YWkSCIgRceA6Av0
	 DCBYT33IXu+Mej2KG0AtwrRcR5g9QjAIXXkuYSGmLBmAMzX9gJ4JCHWA6bRduvXm5I
	 Bcnp2aodF8IUQauYB1kJAxFXCxQG/hHAhuByUxI4lnO32K7VkLR0JPmRTfx/5GT+oc
	 t3rnxH0j46p27nXOZq0aGk9dnorvSREgXbCP1UdaxDtajFfpOzOscR1W/BYZeXaHAS
	 6Iff8GcMs/eww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DAC83F10
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175237079359.9734.14346214505138238503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ea79196141c47ed3ba5ae35b986f2bd1b30f64519af22cb690d5d3591e2dc01
Date: Sun, 13 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752370793
