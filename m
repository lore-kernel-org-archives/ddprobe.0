Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D03B292918
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761205194; cv=none; b=aBTcLjm6fIQ70LcPNZppP5oUyDB1zZyZ7Tl6dIcu8/+yDskPVTUteOctzArtz4cH/Ybfqw93Qmy2nhaAQWJmtK86fZ4TxIxClnrnEugYm08nTy4iOrrQuFlzQPpyrGTrzWOzO4yc9E9/sQNQS5ffGYLsSvR7q4Hq4LP94oL+36Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761205194; c=relaxed/simple;
	bh=4AmMBeHEU72a1UZQBNr9DXO8e6oxDOHN6FM0OzYMDSU=;
	h=To:Subject:From:Message-Id:Date; b=SavfwbL6SsGVq9nIK537e6/KoaIkEbBUdE4UyjiMVf70I+LSsOZhqriUdu3594Cl3gOkVU1XMi5yndu0ejY/HgiTTUAbXpCSZiLUwltU0LeqFtmZAAWfAayZQ3XFiTI6gHEsAcIPowZUUbYnZ6Wn54xP+NiR5jycBmVdwaVJrKA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sjY9WoJ4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sjY9WoJ4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A04C9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761205193;
	bh=4AmMBeHEU72a1UZQBNr9DXO8e6oxDOHN6FM0OzYMDSU=;
	h=To:Subject:From:Date:From;
	b=sjY9WoJ4OzHW4xFws5lIS7IbXKK9fYLbIrMfcfeJOT46AU3LWseisVZRLMgJHY4Kt
	 tqmx/sYbmgavEUDoJ20nsPgin5Osu372tc2AdnNS2KUbzai6sZs1INt6tEM297IhYi
	 6UGhVDeEgCZh3QZajCl27otxqbNeYYjPOxSLbz1rcVGwyzHef3M+uFWg+xAtz/GIKW
	 nhOtPTjL0RQTfVvOKqzDM0SP7X+2ZlOsmcZctbhAu5OmDEnJgLafo2107mRhPf9g/g
	 U4cQhLbyemQ+okWtkQuVEe83hUu81HuCTOFL6vYkqEEEIYzXGbKyCOtMgTrWwIaEfh
	 C0MSrsFPxulhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91247CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120519358.28740.4188977748799443744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 768d30cc982630da3ffa424095e11ef1ac4f9c3306c9457f027cdd986e91b636
Date: Thu, 23 Oct 2025 07:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761205193
