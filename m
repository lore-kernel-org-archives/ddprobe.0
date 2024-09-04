Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FD101CF7D8
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725464754; cv=none; b=DNK/U+La57bnB6hjogQjgGIwDw54ddSNpxODlwDR1rOHkaXXvAbdDY5634SEHkjqWsYeoJNj3Xd/y198iT44U5VBb0iNsFw9LDr1ZJp88f1RzW82jpNteXf7YroOoXgh0NWRrbCs7Rl25Q5t6Yyd8hNowOdfRlkD+sbNX2DaKNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725464754; c=relaxed/simple;
	bh=n0DmZuc6JatJDUMyemQIeBTV9YzxJMO36igAR9VoTvw=;
	h=To:Subject:From:Message-Id:Date; b=deduTWMfQf14saPg0BcZijR3u8SgKkO5wjWIYSA2W6TBun8LeGcTENmwqtvIR5zvFMTi4rFeozEPSJYLB3idPXLlEC9V+r3UY65ucFytUSY4WDfcloypaksiyU8ct8Q6saVhaAJjWx47nvPSLdQbbrvYuseHXzqZHXgyj8kY1Oc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VVYJVabe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VVYJVabe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A75D9C4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725464753;
	bh=n0DmZuc6JatJDUMyemQIeBTV9YzxJMO36igAR9VoTvw=;
	h=To:Subject:From:Date:From;
	b=VVYJVabeEBJHz/KaOUXEhrwObSBlg3jZ/QNNXdZsJCOPJWpmwlrpw6uEozxYqEPrm
	 6BrD2qjXqX9j9d0PfLas13e25MkwpeVDyEevuJPxn8Q6MjaPDYJkwsM+J8i5dw0Cef
	 Sv4y/UhZwgM5YEM83ZQ2Eu1gco5WuI3PtThFeaA0wxxhG12I6Btw2CendDqsnZ/0vw
	 GzQWxlppOtsu40K01Wi2Z2DXObxnzkmVqmGj1ZxCYNrlfOmRePLVHNs4hcuKOmhR/s
	 AmPZfsGIw4cZIsvAqOXzz/LaHgakV25OO9NN5EXZtnE67Qxe4hhPUEp3C933BmlY58
	 0BFN1awZzx8Gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956DECD4853
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 15:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546475360.8906.3782578232502336678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 579562cc0993ef91c0df0274ca043f95dd64ce150d0f8dfede6736c2bdcef85c
Date: Wed, 04 Sep 2024 15:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725464753
