Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303678F49
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731111954; cv=none; b=gqrPPtxInoXPW8WBW/be9LSTtcj+OFoe/Ez75WjZZVgmvk+fSsJm2tlseCTCv1DGJGdKYi3gAK4dK6gwfnn3BH0AKhrYwt9eN1Nmbk22LPvz+6uZfu4UEr9ewLsLI8l8Dzuu6vxOQGVpwe0SLGZuJCbY6FyOm9DJLbOtser6Kwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731111954; c=relaxed/simple;
	bh=C52JS7GO4qh/ffnCe7I0rlPnR5WMIo0mGGYAatg4vsY=;
	h=To:Subject:From:Message-Id:Date; b=hKfetyVas7TFqe/wsnLzpcwh9iICUgSu977NbZqTg65c1S8lTJDbUjcyz8W9cbszanpuuWODYQPk4OoxmDhiE5ELB/gYtOshyH32jNH6g2HE7S7g8NJ67diSpaf643DgLgzjqM2a5Jj7Iy1MtMtvPwA4w/E45UA9szU1FHP11FE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JtgkYuUG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JtgkYuUG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B520EC4CED2
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731111953;
	bh=C52JS7GO4qh/ffnCe7I0rlPnR5WMIo0mGGYAatg4vsY=;
	h=To:Subject:From:Date:From;
	b=JtgkYuUGpHoZaW/H1Q1sT5NpzqqKkeXr4xfZ7vXc1owz175em6giO36Lo0RqgULjT
	 svHdHSjqEhoA8ADcCC81buelIfvTK9aWOYHE/W4KT9bxxb2TCkHHkSkbBaU0H6a20/
	 D9AUmBafeVNA9D4Jkey3m4PUl7PL7cp2FXprZiJHXigK+PZccAYOHfFKKu0aRfKzsy
	 EF2XHyJLhDoDizLozGLdtWv7fhc2Vv62XM+eCd0A6vg0nYk09TKsPH7oSo9rJH+gqU
	 EbADfLFm80eMT2KnCOH7VAGQGTK19srElY2vevkQT2CLdni4m12MowU3UxV1H7Eyk3
	 c4qkXsd8NEQAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AC6FD64076
	for <ddprobe@lists.linux.dev>; Sat,  9 Nov 2024 00:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173111195362.21287.9182603681693429017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eca470ea227ea3d3d54c7c4dc58a76ba70fddb21c1ac090823d00c03a851e177
Date: Sat, 09 Nov 2024 00:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731111953
