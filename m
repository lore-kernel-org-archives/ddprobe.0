Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EFC642877E2
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753222794; cv=none; b=VRQXPqhJWpZ0HivN2GKNHXko5gz3PXYUyBefS/8u7weRtSBHw8ZlCpSSStMeueBUAMI9GVn5A0Fi5p0qzV6U+lTtaJmHctuurSpWEPCrvMVqJNG7G10mDI0hsOal3YAWcKlNZb6waBE2fQLGMoSBLxg61gny7m4cCawMMPDFDUc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753222794; c=relaxed/simple;
	bh=7JjWEwcZIYaxJXJjT68RuRbD1bFnAoZ8NTw1a4OZr10=;
	h=To:Subject:From:Message-Id:Date; b=g6G55c2gipse+jJhbS64ivEHNv+viprLI0d2Nr7Fd4VJvFtFgBlWyYpNuiuzGkBooUGepxoL+quQatvjaguGnmje7dvTGzPqBMOR050ruyzdskmakaiNM2wPS3iQu8pkqYJDIIlQlV9t+lDbeIKKH5hjxO1tSN6T0G4MGLrJia8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pA852K17; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pA852K17"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5DF6C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753222793;
	bh=7JjWEwcZIYaxJXJjT68RuRbD1bFnAoZ8NTw1a4OZr10=;
	h=To:Subject:From:Date:From;
	b=pA852K17tfifmxhQOTbk2QW/FhJzM6h1RRqVlfXa2zr3xBScygxfVa+dOfQ72+2fV
	 k9cIx58GAL4RymT7j3ljLpCjNN4/jGaNVTc6mZBdsU0q/7rt7u4nrSWS5L/+WhNMHE
	 RKHO8rvtYf5EYfwZhwqi8bVa2zx8A8EQn4gIg57nyzcXERt0RnY04zlPawkIKyp1oZ
	 QWeaj1xY+Xaz8sFNMSq3BYU0KKVVaKneSzvmZtAPZ1U1Odrm7YMmrAr4We0oxoBK+G
	 joTplknmFGO5SQ2V6iqzmTvLQPYjYfRANHzLwV2rACidiMoLkzfff7X1TZ08n0CYRd
	 2LrRi/q6ViDOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9332EC83F1A
	for <ddprobe@lists.linux.dev>; Tue, 22 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175322279358.26751.7320154116881321267.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b648281f9fc515541cc86307dab82dd08b50a1f3c6d4ae3daf2a7054df2e9995
Date: Tue, 22 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753222793
