Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14EEF30C622
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766409234; cv=none; b=M+oSkaHPxR9ZkwXmVwpN4XISgcaPYnpdVgancspccei7bIDZ2kjLdsSU1HUoc7BAJOc6tlHgU40AjbQkdPd7iWt1oIDuLBA0PphaZW/Xf4Q+6/TKJHkE8QPVnqHzmbHEbNaE2Hu4ZdNl3KZ1VBnVvCKTKkVdfcPKt1xLcf8Uw+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766409234; c=relaxed/simple;
	bh=+L+PeledOIqWs1om8DhlorVNKKbmt6s681CRq0MvHkg=;
	h=To:Subject:From:Message-Id:Date; b=ANKbcs/wsipTUOvdXcpO6n+IFX33Z7XAe+Nij2if+SPLNTdI3UhdwFzLrdmEEcc1BWDwB7HSvZVKzTnw3JV8NH2uqvGZj09Xyh2Z+81y1n46UKnhR9ghV6l0QICMmgm8QVG6nH+seF9Dc541gxvZhcD0StIZRhb2j/pj3JA7gMA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A/1zcPIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A/1zcPIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB8FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766409233;
	bh=+L+PeledOIqWs1om8DhlorVNKKbmt6s681CRq0MvHkg=;
	h=To:Subject:From:Date:From;
	b=A/1zcPIG+0HQvA6eL0UO3GaaFPbHSnYyUZ8rYjxQw1PUCwLwMzIVwXvXY64eTFy9/
	 aEmb/dNlIW2UxH48KtSvRIpg3/ONEtwu7JcOxNxrRKCUsoJhJoDXq2I5KKp6wPOA11
	 dZnmkU5dvaA0RNqntlgHhTEKlVKm2PzlWxM4t5ZtjCD1JsoJf/hw49Q7sAhpXbt1CX
	 UnXY+/R8FgZoNPFNCgeR3trbdTZlK/AOKNvULvqLqRxUzJK3ZOr9mrhEbUNZgWSLpA
	 DsLgtB+d9/3uQPuTuMLxO47rxXFwDetNWCqUf0E33iqYtsQbBGT0BqsC8pejZ2Q8sA
	 fosIR9PNat4ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAB6E674AF
	for <ddprobe@lists.linux.dev>; Mon, 22 Dec 2025 13:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176640923358.15283.9385716468784694839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebda7ac7c7d11dd98c909d43dbb484565b6e04e8cb988c883c089d09e2f5a164
Date: Mon, 22 Dec 2025 13:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766409233
