Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECFFF4F8B2
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 21:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710968897; cv=none; b=P1jA4YIK7Xdskfq8EC1rJ2aFcb1yndxBdAsCG2eQwDjHMuI38ElwvXQVeb5Uq9jR4eIwqFrAO8NXvNmUtTgi7i5du54bcyA1NCJm3M+DfpVjB3gTck0O1zzmpLWAH65rlFdx1AH7lLVGieSR08F/fLa4d9bsWABMBWWMvz9aKNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710968897; c=relaxed/simple;
	bh=LYTP4GLB12CZtWZyMUr0RLUsj29jvdZ6XJ0PeA4mZxc=;
	h=To:Subject:From:Message-Id:Date; b=g4QpRF6+Z+pLea2q91aO8+LrM64GwP6ZkDP9w9BuWYf4+xgHt13S4wdV13jiBtWtdFgPIM9UViZczTZGmaPt29mkgWad9Us+t6V17jqfT/R5Z9V9vw+MF8igUgmKS7AHo+yapWe7uiqIT6Q63AJvR5cUGwLYT8hLTuh+043rzB0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dwIlRALp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dwIlRALp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 76348C433C7
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 21:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710968896;
	bh=LYTP4GLB12CZtWZyMUr0RLUsj29jvdZ6XJ0PeA4mZxc=;
	h=To:Subject:From:Date:From;
	b=dwIlRALp0ICxlxlP+a6SJHTiSriCyEtk5XlvAMKzLLN/EOQoFn/kMSGs5BXRCqhaz
	 7Fx+3ZGGPu68k+Mi88+a2Me2g5NgshSEcFhHEE5tcZdM4Kxq7HV2CM+XeoWVgutWo7
	 Sx+ejeTktWk66/3H1yNffMVRvQY9bKCdo9q9O/I8b/jF5StU8Rr5nmxUYumF0ejce4
	 W1b4AHTGAXft5rfNJZThF0Uy+fuHfmEPk4NPIgDtIOVGGwpUfxGhYVASCIAWgHBz1I
	 RH1/sGhBgFebAv1uPF7ezpnA24tfkQcQYN2EV86d8KAbM192yuXtj+fAernVNtu/oH
	 sYENnnSn9TH8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F3CCC54E67
	for <ddprobe@lists.linux.dev>; Wed, 20 Mar 2024 21:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171096889638.16760.10488101121126259789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c789761c361d75426c419d288ba591cdda3e4bb36952a500df11f5c0544e9937
Date: Wed, 20 Mar 2024 21:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710968896
