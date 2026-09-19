Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8CF8C318ED6
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789836634; cv=none; b=s0v44jcc2WIgzWSZ+JpCyNl8AQfvaqODfW4fX9NY9gxPnoRRni9G+vqApnpYF2Fb6TiSOTk8Dng53YAIi928I8nm80OPrZ4GEHAvcvLXk3+39nkTRnqLRVs/mu4Rmi80pn9TYGzwNaavjrZYL9x5RQu5oLlZvKyuN4GdV6w7MRs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789836634; c=relaxed/simple;
	bh=up0w1U/EaFoMu2DskVMi5xtak0jMRLhJ/epqNhm121U=;
	h=To:Subject:From:Message-Id:Date; b=n0wfa5mtsqUvNd9m7GyncXwGJ7WIHGZ93mYNmit45ImjVqizdLfppyNuJT/iIn8/93NAY4gQzhgtRsnXdJQfdd49ujWOfpH2bSvFjDCieJrkZkqmmmzSx52XNmPa/30WNUNZOnNGpd4Ju2pRYfQlEwbc8rowaEqr4FbsUL0oWBI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0TnF178; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0TnF178"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D48D8C2BCF5
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789836633;
	bh=up0w1U/EaFoMu2DskVMi5xtak0jMRLhJ/epqNhm121U=;
	h=To:Subject:From:Date:From;
	b=P0TnF178OuiEnpbwPyRfDDrQave7zqo392Gn48mvtRCebLK6DObICsre1Fc44XaRJ
	 YvmDy68juZy2og6ewHCmHi28lvqkL1A3z6+3MPaGDTz1vr6PEsB0+calWB6+3nlGSl
	 iwSYfozcAiR9lAAIDEJQpzv0vUv4BtjXPuLEJjhJNPL8vez6FPEmWrGVLgO1fmx1WT
	 pchdh5+A0qKGi0uhtC1ruEnbgpyWZ+5KMNvqPwTfV/SpVMhBFzEfqsivX8eB2alQlp
	 ViRdm1p22+IVqQEyFYt7PDXD8xN9B8lzc15inFLAlhk0yv0tFWOMKpsJnGKtQcRljV
	 xUAiBwyb0qpVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9C98C982D8
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178983663368.26276.16826320770036529629.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e039302167052c0a0add13644c6813b2b30e4b7ee2123c12b6ccbe3ae13c432a
Date: Sat, 19 Sep 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789836633
