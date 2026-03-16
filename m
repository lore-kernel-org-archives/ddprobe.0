Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1C863DEAFC
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773686693; cv=none; b=Cyn9raLRJOXq2pBwUsW7ZG2KL/NAaAP18y9xIgLhe8v3iv001tLmlU3Sb7kgkKbh77tST4gkr6tQff8yIfBYUM2OFoP2w79eOcae/EJb1o6sVXFL77SfAmKRYCJhlV3eXlF7UMaNEtOYYyi/qLWrt9+6/MNMXVWIEMkZZ4BWO0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773686693; c=relaxed/simple;
	bh=pWXr2dLJCJDvKovjgfYh8EiLvtOwfG3b7dY8ZxQfHDw=;
	h=To:Subject:From:Message-Id:Date; b=XGfMv7LM+cs/eUOKXTZooBmyzKUeXysKIpUw5kFyv+Qxb/y3jecngqQhSJDDF7feJzvrt2h6vCgrTArCmllHiWsGcO/RR8q4ZL61Lxsie2sjyknjDekaFkG0GqiGHbpXbguYC/7IX27wx1OKq0FjrzLUon/oCfeYqJy2Lxo7qjA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NQwWoDf5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NQwWoDf5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4970C19421
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773686693;
	bh=pWXr2dLJCJDvKovjgfYh8EiLvtOwfG3b7dY8ZxQfHDw=;
	h=To:Subject:From:Date:From;
	b=NQwWoDf5/a0b1xenq0KZqoHqICBmw4AJ3gLcNVSwJKwlQi5Qfr48OigdO3YQj1ZmG
	 40/YgSPG5KcxxxK8DWgqB1zuhv6Sw3qPpv5Igz7GtEmaWmn61s9c/+pXvlERGH7FvV
	 NjyqtYfs/g8jXU1YL/3ADcEANQyzeq8Ct3C+HICDt7sPNUlQ6Veir2H6tYknQK8ge+
	 MpqcdroOsENyH/3GLMpDoMCjJgW3t2mmdQuX3/9XKGONJmG/Y8DaIEE4Ac2VTvOuV/
	 qHD22qgQGRq4+aRaBgVSYRIq4IctHfTufX9wn87xmwAE8qFuNzYN1PtzuLskb6t2Bu
	 ZS1pDoSKUBKrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F39F53D87
	for <ddprobe@lists.linux.dev>; Mon, 16 Mar 2026 18:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177368669358.16222.4101422632012958078.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f1b2bada2cf1891e1367ac936af5d0fca69bc5ba882c4f0f984a39b24128aa0
Date: Mon, 16 Mar 2026 18:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773686693
