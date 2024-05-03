Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64CE163CF
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714766543; cv=none; b=bo+h++SU5b6w3SCmXNmNqAYrQSOpg3tzH5u/LOhRphVyJ9XKFNYKrHCwFtGnHBOGctdtiiSfcNjbqqMKVWrLl6kQ6qLFJfMrUrHB9u0ylsqhNGwypoOEH+Ll9DSB3/aVCOqpcthJl21QdKHrB845P2FmrXf8RDSqW9H0PCGX3o4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714766543; c=relaxed/simple;
	bh=FzyrsBbh9V8+irKqTdqt5dFevkAUz5TtM/azKiBmlFc=;
	h=To:Subject:From:Message-Id:Date; b=GgDzXKq03g5RrBmtoAvGSONncnsTQpwVeUFVNL6e9e6A5kvEVI5v+EtgPoQuXkEpFGZCt4iySWnh5UULj13VLPtDFxmsaov0Vj1LcZ4xmAelQhMShOYjBLNnCGTLKgXOeAN2sLHP4vyIg7dzOdoiR1m21rj82T2I3iegGIbgV/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FC96HYk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FC96HYk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC5ADC116B1
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714766542;
	bh=FzyrsBbh9V8+irKqTdqt5dFevkAUz5TtM/azKiBmlFc=;
	h=To:Subject:From:Date:From;
	b=FC96HYk6qwxG7eBx48Bll7qmOtx1ur3EeIuzY9oXnihzXWUVuwXmZXR0jpHCNFTxZ
	 ITZREXs/efFoPqOVEFtJyiBiXmgqCZikyvugfLEvXBtNQ/5wqx1SjwnTm4wvJmdiPM
	 vOiaLWX5Y1KJMkW3f9ERibG9vPImVYELh0xxSvxXhgqhmiRl8rOgENNl4rm5sMCi5h
	 rPC8AIADUNq37vrbS9UKiNL87pe33OnGFDJBO2eDxEqYp3WXAa+73glBWEENDWXS8D
	 tEowNi8oqn2s6hnlusvpJThVHJ2NWm5VbH4aCSHHWrSOpLB//0XyXHd2eJqcMvNLVq
	 cyqSpYYIvx0bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7CA9C4345F
	for <ddprobe@lists.linux.dev>; Fri,  3 May 2024 20:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171476654280.13348.16773586366412081733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9d7788e0c017db9421d6d93056b631f772f48f53eec7cfe4e03880df5c3cad6
Date: Fri, 03 May 2024 20:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714766542
