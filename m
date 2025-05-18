Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EB8A7261D
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747594794; cv=none; b=mvbDlIt9B/hyVU2oNn5mCw30GqrLYEys1XISqTG4WW3qzw542NmtmmLM19wdKWcWubpqze5mYPZvgALLYzMKq8xUvqMtANwFTwn3wWu3RNGccT2KR5xUuHrfbJ0CAA3Y9JFNy1/38gHBB6KTSer50AcdFFUqxQZXi9/GUe7kEAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747594794; c=relaxed/simple;
	bh=xV18h0yLx5yd4Zf6JqYCLQYHqth80TUmklsFVXmdJlE=;
	h=To:Subject:From:Message-Id:Date; b=ukmD+y2NWH8+/vCBB4lMP/P0n10WBobhDfxNXdBXQ2ai5gr3/W4DTvMah8eZf/62YIzjRhoAra3TObugfzN8FAfjG8xdHXOZmZbS9STYpj7ivpWzpRBNV3U/rLMValA6C09V6aKc1ZH/OcSpQ46o6aSwZCakeHgkxaSHlp6/Tas=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IXDXCegs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IXDXCegs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA48FC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747594793;
	bh=xV18h0yLx5yd4Zf6JqYCLQYHqth80TUmklsFVXmdJlE=;
	h=To:Subject:From:Date:From;
	b=IXDXCegsCbtiyu3MJbgyGu+90Q9ptStWGp1YvSyhikGVWE6uRbcX3SOzW1rRGoLYn
	 8obqdl64/197V8Ezh03oz7UmKM+SaO3aCvKMnocm3pNHsWelcUo2OCP8M9XILp8sRW
	 LdrxePfSpUK0Jb5gHAxiAq1uQPEM55cNyHlyqUFizGw+XfKOMvqX0roi+kHXiyjiSU
	 iQ64fCIzvNoAu57+QdjjiKPV6zJwOB51/fglZekhMVG+gMr6q4cXY1kIxBFOUnk01u
	 lLx0vesMzENUZ1Ed7g55BWzVO8HkjXU1HF1/Rn0iGBcBY4L8SE4Co+0EH7VLqvWsua
	 5F0h41OVkPl5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94A59C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174759479358.14431.11595180169040906214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bbf25e2603f0ee6d53b0c2b5445ca966b3e08b1b9a63ffa518687730b9b8e852
Date: Sun, 18 May 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747594793
