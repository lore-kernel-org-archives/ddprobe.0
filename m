Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DC329B765
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744735195; cv=none; b=MsnSMcqlfteBUSFFvSadS6u9kpsPQwGVVUw4/ZQrjLcTaZUZkLRELbhUvUTc6HGHW6r7qhu3M72wpn/qlyKXpIKFTFzM9Jqs8CzbB9wBcPsAfUBLEIvt97dZcAoSQuCeB9q5Hk0PIXLhKm/jOc6R4FEIm7BiF2GQzGUXupEi48A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744735195; c=relaxed/simple;
	bh=AVEiOlhKqI+5P9Lzlnl36S01H9L8Cp9TYM5lMfCIrU8=;
	h=To:Subject:From:Message-Id:Date; b=S1/T3nzvVziS4ZvRr8CIoDgFj+2KXnAj28UjXO7zRzXnninoYoHRtYB5E6GAHvI5R6F+nwVnLwaiFS+oWP6kpuTijf9TyVSdu2jut67LVZJed5SPHD1LTKpsVY53aK4izRkZ8apK4Hn4oWCDD3gMavJn49i//xYU6z+pqK9wqho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p/vnunCH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p/vnunCH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB916C4CEED
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744735193;
	bh=AVEiOlhKqI+5P9Lzlnl36S01H9L8Cp9TYM5lMfCIrU8=;
	h=To:Subject:From:Date:From;
	b=p/vnunCHpEPZ5+fYC7RibDkh5hVKbW+miTEg8oD2QE8uKkFhCSNAzFnjrBTSaVCLv
	 vIQbUMWcYx2zfl7vnOZ2YhEqW47vI/Qru7XjjEzMds6OF22sAoDkVTDArb6wrLZiI7
	 7AVCtBuNmuMfD5I6qr1MvurJRo15wcEVeWuyUfyjRhcItpK1GWqp7h6H2czGtXDQjQ
	 p2WeOcWPxfJN7SfIillmxrpYlQhPQli1nplWiL/NVpPdXMtJWk5jQFEH/Wcy+N8F/f
	 ItWx4JoaMSO9N/wFXNKJP0vCsO8f+YJx9qE78zXexb+n1dzOCo+oKJOFvVp76McLah
	 QdOlmMbmLAaQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9939FC369AB
	for <ddprobe@lists.linux.dev>; Tue, 15 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174473519361.11552.4787427066048141381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 38edc0202db575add5879444f213b6d5a6f6f16bcf7978565b3f5ce6a423e7a8
Date: Tue, 15 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744735193
