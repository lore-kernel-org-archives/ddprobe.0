Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C120F314A60
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770853493; cv=none; b=eaz2hcM7CKiC2s1jagq8PJH4zHJ3QzCZX7EIMeG4gQ0+qMRR5FBVX709tcvtcxZV++bDK5Q4geO9l4iCPQcMOn26J7xt4xURmKwLC8NQvlsQrUon+pKB1P/vXf3w71iXug7MWhZO9sFCV+F0KzXVkdm3wnOS+U9zSj2fPKBOyVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770853493; c=relaxed/simple;
	bh=Pg6uthakh3616Jn9beK5Is8vj9/krs8JJpolNMnppY4=;
	h=To:Subject:From:Message-Id:Date; b=Y66gNM+OkXJBjnSISwFgeWwbKsvVZ8JuKA+RLw3DPFuERhbCap+KRKgeFY/OjtslIDJjwIrtoyDmlJmIpeurhim4OeU065M12BGEx7XunrqJ2Dylz1kMd7MdPx9Dzp5pbfKS6eBqxE5OLIZo3UT/KfozY/vwxtQAq/k5MznjNLY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LgD3RTU+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LgD3RTU+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DCDC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770853493;
	bh=Pg6uthakh3616Jn9beK5Is8vj9/krs8JJpolNMnppY4=;
	h=To:Subject:From:Date:From;
	b=LgD3RTU+WhfzxvnkpSysdM6IsTzGkNHr11u12ADVvonzr0WCsxA62lcfx/cW1gYZD
	 opK1JuttiljLFdd8dUYLPLO6Xtsym8EwvIoo2pDpCegekr44dAKXO2cd1IaWDeryte
	 Ttg8/jlpti6xv8KiqXln6CLL5XYh8YL9TQNqri/z5Z7aTBrau5EAWz0LR1yem7s+8J
	 nCwIJnNVQ3lL3SSmz9+8n2ud07vyCS95fomsjGqrPRhqWrqPQcW9ARaB3obHwrzTRN
	 hC7MWCoH7DaMv2HeIYXyDVz7TMSo+HxvP9208RMoUnMTQ7pHcg5HZFzGRYonSa4pst
	 AVwyKzFuV2amw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E25ECD6F7
	for <ddprobe@lists.linux.dev>; Wed, 11 Feb 2026 23:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177085349359.28535.2688456639657338991.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2a54eac3e7b5e5cad15590b3bfe8a23a6ec37c2fe8ceb6d86061fb3554e7c42
Date: Wed, 11 Feb 2026 23:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770853493
