Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A054315A
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748150994; cv=none; b=cKbsZ6bG3iKSxqf6qCovkCZ0jHac5ayCEraYqTy9pDMJ3JlavBKnCjivMES1Nnx6WrpVwtt3QpDBXDrXCTwsViPGKw2xWK19BCkVe4qwsR0yO6cSfcEwtLB0uWjJYeTtRzSSNaM5cL24G698CpcHU33XAcxxLRc5BHvUSgchfN4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748150994; c=relaxed/simple;
	bh=5CcmScgEU3L7gEple8GWLfVUQO71Fyhhmga98Pyofjg=;
	h=To:Subject:From:Message-Id:Date; b=lK3JCKdmuHrMXW+FXtQO6/rvXaodkmwSPMbriiZ9Wgvt+CjcJtiu+nzgAJZfzwxSaelR44Aiq5zHfgfAWZRKmqmRYoSQOItDqlb+/kd2gyy965eractwuZda9EemSe6/0rHgreT4zp988xRtVfAtDGPGyHfH9Aa+P13B6O5H0ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0HC8p+Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0HC8p+Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9891CC4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748150993;
	bh=5CcmScgEU3L7gEple8GWLfVUQO71Fyhhmga98Pyofjg=;
	h=To:Subject:From:Date:From;
	b=r0HC8p+QCTaw1awM5R1xtaJO1X3JUGfr/F+mNrkzfza+DmJt8GENm6ybC8zoFHCfk
	 PtOMzixZYHJmY/kuTyKerLh8giWiQdIdYuFyhxGefbeUkIKz68jY+dHkeicu/Q+Q62
	 d5JzCWXpaTcUI1S8FqyOVYGVTCixK+v6W0AvAMkQgqYhWNGFK+MhnTClyuKVS550Si
	 NLxnVV04/Ahl8Icz15kH1AqYcvHoQ+SGWD09qHlqJzvHAbv/pp1Z3MElkhIQPh3FBj
	 zZC/9DWqlyzgXwVj4bloRFvuMn8zBIf3LtdVevcg0oBRxK0fK8U2XJgM/GRM2gVbah
	 7HsMWUtqDBilQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4A6C54E90
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 05:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174815099357.14313.10797504409464415863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef568ba9205b2bbd35627af79f8f204cf6a98e181acd4081e1c5c37314350cb8
Date: Sun, 25 May 2025 05:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748150993
