Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1910019CD05
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764424374; cv=none; b=M84pRPho/FuKGTIPLgq8j7EmyMGFRzTxHwlsu0Mr9aAi4EvEN4ZTXLjwEJujlpjPhunEqqjPNnwmVEzPUvP1bGRg2I9aAJklGhi8JoK2cGCnmEiaglhN94ZOlJ9dQhELUhGkc514sOH8lX+7cfnvtLbf4Hjvd3TjdHnb/OVKqJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764424374; c=relaxed/simple;
	bh=OkiMrwFexjtNW6OczU2wzCFb8r8PmN+IeaofADarSmg=;
	h=To:Subject:From:Message-Id:Date; b=Ik8H6+868ps5QXRb//+Vgdpr1Tj2vquOeV/LRVOGvYsTg+ZcstN61bWwiTXaDIFl2yC0YSta/nBvXCl4iFYKpyQRAI0Qozqu/QzdW8SpeQKeN0C3FiHRXvTJCWtNJ+RdXt6wi20539UJ8Sq9DFGGjzT23hMnmU4j8AMj9497Utk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XK6bnfH/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XK6bnfH/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B30C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764424373;
	bh=OkiMrwFexjtNW6OczU2wzCFb8r8PmN+IeaofADarSmg=;
	h=To:Subject:From:Date:From;
	b=XK6bnfH/L5Ei004qN8oAxt/gXP03HdPjQb1TlQbHPWtWdiovpna1cHao/S+4x3q/q
	 G26g2gJ5lzoRWuZjTvdFpwqjLliSBKZCFqXmoNQP0mA0Krnmwm240GKyxkLHKWleyn
	 AXTNOFYCfrqpCw6T5b1kLDkCnqK6UFUe0K4AkpCmjTi+MpgilnTV8sTi6B+e9rJ0BU
	 S8kL68GtFMOWxyOQWf+ExVsmjvC1d2WVoSGUaPVyca6y8iP0Xs5ecB+Fh2sDmJLqsJ
	 WR5VNv8maGJR82ALsf+5ih4mAnb3lk+1OqxuYdey9lwmpQZYdAOO2c6xIP0flQAhR5
	 GnoOtz7zKV9Bw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900F3CFD2F6
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 13:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176442437358.28487.2610486158460198542.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be350d8936742cb6e1d0f8e3d62f322a3c845d3a7663b3f295f23b4d77bff749
Date: Sat, 29 Nov 2025 13:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764424373
