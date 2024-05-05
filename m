Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3300637B
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:32:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714869143; cv=none; b=UZMh7eNZ06PhxbHLuvjDb4w9G1CN+FGbYF45Be3qo8F1cFA5BzhLsOC4NRhuLu6zobPukhOFWGpvsqrizNa3FGbZnmd9kmU69JgYpARbqwIW2aF9yKKEZyeHbxZY20QRL3P4stxg/emkX4S9rceLw4A5ieUxJn5HOUwmaVRA6+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714869143; c=relaxed/simple;
	bh=vxz+rD6/j8SFeoKkjFFJCVXFjOC13FWij//cLZScMyg=;
	h=To:Subject:From:Message-Id:Date; b=CEbjovIIL+BSJoeCkjMamJjA8w115DE8B5Y3yYBGkHkTnHORLJdXBASiAdtSV6weZq7hyhps3mamG9B/vkNw1YXYYbiG6XZt/sUYfkvYlQrkOLb1rBAp7z+/s/Zcz21jcSmGI5w4Q9ED56sHVyNgT8NAHlwJ+bIUUJwC5QUu8xU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dTiD8gd6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dTiD8gd6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3014C072AA
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714869142;
	bh=vxz+rD6/j8SFeoKkjFFJCVXFjOC13FWij//cLZScMyg=;
	h=To:Subject:From:Date:From;
	b=dTiD8gd6uxI68i9n22nYLASOy7r3W7Aroj32O+4L90jXJFKGjWp4e/JqmlsHW46lZ
	 QXFR4YcUsDh/fBfkNXKyofpzwIUplWT5+QRSxz5MzYNUerozmDjUsXESLtiyOoRlcD
	 iyzIM4HFmWHWLQGmGiDGfa7MRaXH8Ujp35Y3uHWnkz4+2Y1lTekzs6Xu+Nryuw3uHu
	 EeKgJqbgT83ksC2p5IUvGDce5yMoXLKW9oExyBKT3TW1Fwhpwyv2ny9l6pi28vSg3q
	 Ou//Ot10W2qHR/omsvghJjiFpJXbkXLr+EQsY4SfdigKJ9I/r5RvidGem4INDTIjK+
	 vJw9f3mfQjAZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF0F4C10F1A
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 00:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486914277.399.8238049477544447212.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79a5704bcfb97820cbe96b6368040124e8f711623ccb0df1c8c7a88efdb0cd46
Date: Sun, 05 May 2024 00:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714869142
