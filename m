Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2098A2DEA7B
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759777194; cv=none; b=UhAKgrApp7rUDEeAqNVgYtcWD41GrZ2vlJaTJkj3JJfM5SLxD1n/YcO1gWuzQMsYDzLHwoOrFZL4RHoxmhjEpJxn+OmNchd0aXfYeI7uJkZztxVrVM4h7kdYO5fCuMk3aVlr5YJD3+/1QIIjrRJ1othBS/ctG04QZcpW4Z7ZxQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759777194; c=relaxed/simple;
	bh=b+KWEkpxCqIdd+NRxzLcUU+b1X5k4Vry4aYubNDIJp4=;
	h=To:Subject:From:Message-Id:Date; b=PZom0wAgZIvEIwZQdoT639zhD8QxhhWrskSC2rOeeCjmpz5Y/69jbe29eJycND3Jv+qQkPow/LG9OcxJgDicakNNFDr/EUKZk6g9yd98IJpZ5JVQ5QfOUNN++Hp6MD612iLXhkvJkAzvm6ZuzLrqv/n8fyzffW8dbCShFG7h8Fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XCSOCuEe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XCSOCuEe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1A7C113D0
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759777193;
	bh=b+KWEkpxCqIdd+NRxzLcUU+b1X5k4Vry4aYubNDIJp4=;
	h=To:Subject:From:Date:From;
	b=XCSOCuEeQX8o7rUJSCzVaELkvuOH7a+9kN2IQkyI/nqv2mbYCNpqUdjMX7lBxiUFu
	 GdP4OwPobiIlYP09bhcrKrv6y5KQf67cBKDgljzwUIsnIl0UHPfxb1lQV/DmMvUHxo
	 SZryVldAub84vNhMILlTSBKjrTkdCbzcLeZbPL2l4Zf9rHOltJ03Ry+Y7PbPoaC/Qy
	 QgqHE+kSE6qJzWY4C+IMm/Nb6guLnXmnaoah+fM2NFzcnaFY0vMDtytBCLjxypaB1s
	 shvMeHltPVltM7aN+KGRQAUISpLBb29yaX8k9aZ91EPRiBOohPb/AuR5Jhm2930X7D
	 q4c7I8ueQ+Gnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900A1CCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175977719358.13130.4038524994516859753.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ccdb523375a0cc236a96880621d86f2e8f65c8ec1c9f9dedb3fe2c70115f92af
Date: Mon, 06 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759777193
