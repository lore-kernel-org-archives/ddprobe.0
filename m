Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DCD14831C
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725041754; cv=none; b=Luuapmo4uEfUTu8bzOosoXhkHDsKXd2h4sOQ1iGOiy9SIVQ+4uNkA2RlHLtax0gf0TqW40/f8AA+xLvntVAmLCkaoys7rzp4WcQWWRGniwZgljTaK6Vkr0ZsBXx6whCHD8ShDDVCXa4BUrIaTS+rnPYxkHyiR2uONhz08Bfi3lM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725041754; c=relaxed/simple;
	bh=rBsrnIpoqC4zp0dJMp+ZsvK+f5U0cUEjWOQoGsfvvdQ=;
	h=To:Subject:From:Message-Id:Date; b=srbOGNuKcPrPslSJU+6r/NhVQT31+zEfantmbWDb7PWEhG4fvZkzB2mwwbguDkp6zzCQjAiVlNhXk7hWGQezTCqQxBw+7kKm52LmGhH/HpzSVkLpX3tBuB4+b5lcfHn1CPROICugei04PQ9IAcCi1Rgs5OItj1fZR+iYwZ+XtDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JuLQVhw2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JuLQVhw2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A964BC4CEC2
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725041753;
	bh=rBsrnIpoqC4zp0dJMp+ZsvK+f5U0cUEjWOQoGsfvvdQ=;
	h=To:Subject:From:Date:From;
	b=JuLQVhw2QLVjkjRbhfi3pckIK7PP2iuMdfRDyF05Q9xmgFn1tnVowdvNG2BzdXPn/
	 iKL9QMmdf+FHmIWfnDGK/Q8kqvf5/1WEbjh2CmsFXIf4Er2Rp6qUzWcFrYq+GhJeQW
	 F1PezTbiwILRoWVvppgPopHM7yUAkhEAi2++Fz0+Rm6tjJe6oy/3KU17HtnFJtEJWw
	 SSk6qkWlhbuIReInaynE+5X3iWPVJU4qY/DFjBfZY0rbIOvrQMOJeOxuUbowkHJdPx
	 ucb4gp53txRkVVESbZ0MuTHxtVfv2FamkWc5izl1mqZbMnQ4Rrx7afrXzQglrHiM9d
	 D+UZ7zX3uCkKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98C2DCA0EFD
	for <ddprobe@lists.linux.dev>; Fri, 30 Aug 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172504175361.24789.4291158348574189917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff6aec51825ba772d7534c155ba9e816940998a766e4f291828be271ccda7094
Date: Fri, 30 Aug 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725041753
