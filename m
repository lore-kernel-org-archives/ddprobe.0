Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 344273F1ABF
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783354114; cv=none; b=UpFghmfGxypbvGlz34DFcrjJWHdar04ReUlbfCbaykGWQa8n2z0DbILkNupBJid9qJHyi0QWcA30ViVbVpa9xj+6Q0OUB0cNDJqbkyVTIim13q3G8TurXUoPM4UtGm9MZZmHufwi+5M2xAK1x0Mo04+y8dDV2Y80MNUnjlOb9Ko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783354114; c=relaxed/simple;
	bh=puc4HxFlYViIrRpY6wd2TBv8sLVVczOZgbyuE6F5fuw=;
	h=To:Subject:From:Message-Id:Date; b=LawltNV0+ty8qxcnNfjAA3y423Un7eEAWu5G5tKHf218KNXvJywqwaWEzClNT6KLi59rW2CP9H4RDiZiUbHxtyqvdFVanm49iSIiyugWt7CFom52Fi+WJLFDEMVKuOY+r9ToaZdW3HFzoQFfAq2WYIkVKeBUtD0gY1Sf3ZZt4yQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lSNb1BMP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lSNb1BMP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC53C2BCC6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783354113;
	bh=puc4HxFlYViIrRpY6wd2TBv8sLVVczOZgbyuE6F5fuw=;
	h=To:Subject:From:Date:From;
	b=lSNb1BMPeB+vH9KrOcEuRr0wdEjhKkmKSSF0Unvcz0mklwcMNhu1aEMjNvRoBKUNc
	 XhwRr34c+Ted9qwYMY9Donhlburbu2eyqSbjPJ6b8ZTTB3fPjkVIdwoohsbsXbUCu2
	 Xtu8RYeDqlWxb9cH/C3bV7AnPWJw8EhcfiCOHKxMCMjc6KsQk4n5fCs9y/G7PEb/Ji
	 q8Yy1w3bCMO7F5qaT6+xW46FxbsDCazpYZK+PkpZOSOwUjyPOx5uW85VL8iWZhWXBh
	 POJvPVP3SH830aa8mmoPnzEudzsuTDyt3DA0tj9lSYgOPugamksD/eLH2mul+vom/Z
	 p3vjTGPUJF2dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9198C43458
	for <ddprobe@lists.linux.dev>; Mon,  6 Jul 2026 16:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178335411368.32369.15583408325870755629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fead13af9f367bb3d68a5fab1d2d329e7678bd808a6556e5f129490d4f9d502a
Date: Mon, 06 Jul 2026 16:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783354113
