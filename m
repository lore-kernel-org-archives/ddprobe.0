Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FEF925A63C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737182754; cv=none; b=dCP045bkuonOsd57UZYdLoKHXloMqtWF0SUpw/z73EAUvXgGbeKUQXEorqoJ3WE/9zifyfVSVZ90W+/t6TuBcYuMCh2m/4iwetfmx7Q7Rua29MYcY88/QL7IHPX5KiKGqFEhzf44IsPa9MEJ8CoyX3BVTT7UMZKf/PPvo8cIMW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737182754; c=relaxed/simple;
	bh=fgpeAxon2ogaqxqzvLsnhcXIGUAotnS403mqVofPr/o=;
	h=To:Subject:From:Message-Id:Date; b=SaZ/+gAY868ZzNN9Oi1rqiAoOvX2UAFa5WNjCAoC4M476DPIbeEzfTJNCcXtLgXE5EiqBdamCzX1HdCGNr+lq78oB+xxmzKcW+arn+MB1+tbclD6D3Rz9d0vkoiF0sV9rPtsmCatSkGZJKgndcz/SdDzc76MokBlfHkd8mm6niY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i8tBt0oE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i8tBt0oE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD278C4CED1
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737182753;
	bh=fgpeAxon2ogaqxqzvLsnhcXIGUAotnS403mqVofPr/o=;
	h=To:Subject:From:Date:From;
	b=i8tBt0oECZT/LI5HevbQ/pS9wRVpaO5PnlkUZH+679SW7PGp2POKLFuy2VFWiDhW8
	 Ln+3U1BHGe+3r8a8vctMKFLPzQjMeNAGQsuyYcSs6yGWfE8PiE+Bcv3gITM1Evh2kt
	 fN/79trLiapP+P9kDK8mLkUnbt764a0zRWHrTywXP1txAHVC5+Ga3ElY3zrmeKrBw2
	 djTSnxHn8ekBo8F/cI3tIttTPu/p2Tj02WgQK7G30zSpvl/Ef3H1OqvBSxGjbIlQ3b
	 1aoilQVzfFMOtRakrxV8vZCONGh9qM0NLtwOOFaj3A6zXVdc51n7GWk+s1QHYD7Wjo
	 iedHIz0bS3+JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DA83C02185
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173718275360.25863.6585152611480275783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53397582908bd4ff6fae187e18b725c9bcb7f974e3f8db616135d6d4525bac1c
Date: Sat, 18 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737182753
