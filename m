Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CB532F747F
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768551834; cv=none; b=hQjn4wIq7jv6BF29vORip7kFVWrKXJ4Bonfmtz8KXyxg+LIgaQySQlU9SVh2jqd+YRJhtqn2wz/CfzbHsduIGbO8zLRCA23YlPzq6fRevNNXt8uPSw/+uNGj6qW66uPrGyPSwzbt8d8pG9lE/WX7LBdA0snQHY8qhwREffP7ezQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768551834; c=relaxed/simple;
	bh=yUgSxJpkseD+T4spzq7uhBsmpEH7HegiGOlIjscpuEA=;
	h=To:Subject:From:Message-Id:Date; b=GaS2032VBIA6F5BLPmZV2rlkUEtBKZTNDWC+8ZTrVMCh0nVX5fPdPKerCFVL5QxRoB/WiYHUXyAktoN0xtsAgM/Ldie8fE4goOlM/RVfC4KaQGXalVkHzDajp7AzvriXByMfkSS/jAtXYeyygUb7eFhatMwaUInGXuJRzzOjzX8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E4W+f7e/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E4W+f7e/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E9A3C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768551833;
	bh=yUgSxJpkseD+T4spzq7uhBsmpEH7HegiGOlIjscpuEA=;
	h=To:Subject:From:Date:From;
	b=E4W+f7e/NjdfZ3pbHrraxwurKW7BqFUSBO9Ovg4RI/HwyEDeIRV4XtQaz/TruT9al
	 kxK0dnkm3RWYOo2RgDQ3d5k3tflZ/HQD7sZYX0sNutnpuSCA2/UggOR5I5X5npGvTG
	 XEYNKjAm1V5dP3dD7LWSLCcMuItjo4d1osCszN90p5197h296I3wIFhgQyPBSy4iRS
	 QEQFAVKQwR3tBYq2e2Q3eezSFZJbcHGK0fzAi3+IzE3eK9o+VXXhAJCsXZO66ZicuS
	 eZkbYP0MYjrVJgXOSkg0wSLibyNt/6jByB+XF7P16a2TbM85V5MBB0STq0yJNKOuFN
	 OzVALdf0keS9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FDC4D4A609
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 08:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176855183358.6975.11638845092051508583.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1a8f18975a84ece5b3bccbe64cfcea769b0e8c521f28513a0fb7b33e5ef93c7
Date: Fri, 16 Jan 2026 08:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768551833
