Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FC5F223DEA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777755454; cv=none; b=g11Dl9kBVP8IbOztdBVX6x8vhNBvZE2cfCvfEys3QCRa3UiUUNk1lcUunbWY4YNTFWk/cTdd2JHeGS+Y5df5y+REWtpUVQ8jBB7mXoNbQrndTO8UkKH8gP1YgXwTfhy82RWOmgUz+ZzSSqQLLlCRG2UYvqSgzvA0rk8pfyZHP7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777755454; c=relaxed/simple;
	bh=RnsljVM8oVP9ggPc/kRT+RoKWLwCey0n/pRxCcjgEBU=;
	h=To:Subject:From:Message-Id:Date; b=eRufhz52KHi4orTNbCDGMUDA82aRzfXsCGOD5MWrMV9FZrz5Vfo5FxJF9Wu85qEXtxLdGcIz6bO9XfdAgAZDR9pw/Cj5McaZ1ygirIcUR0xm9h7+YF6U3j5lvktDxZPzJMWG81G/j0gZgMaTnU6gjMcM9ofqjbKFMEHh0HN0V6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Nn21pNJw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Nn21pNJw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDBF7C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777755453;
	bh=RnsljVM8oVP9ggPc/kRT+RoKWLwCey0n/pRxCcjgEBU=;
	h=To:Subject:From:Date:From;
	b=Nn21pNJws+31e7WC1an3Wo1VI2QMlH+aEyNc37gFEVjKDzicr7p6TdBjILdapdA2V
	 w1RiTS1KRwUvcxyOPYmQEJ4n9KC4gQD8lAaP1dNu+z7+rrOm2afmpSPXg/G2MKe3XS
	 JSS6g8vzNaErs3C1kbRx1iNR6XjxcDWbE4K2NhIRS2vUE613V1ARjt+89lapUVfSo5
	 NglrsIoxprUJkHX6AAfCJDFJw6l687Hr8UfCvGpoLQRMRgXbAYrqrNTAwULlwkHlNY
	 5GynnEM+C3njieB+AQHz829DhOVxCrq5ydWphx1La+Emq8DYryXRvGaKvRq2tGFR/T
	 9Bx8b77RAlgAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC639CD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177775545368.6423.8841286298978463734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8c051723401553c496116a1c0cad4d531c528069a0fcd6668cf021965f3b7b06
Date: Sat, 02 May 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777755453
