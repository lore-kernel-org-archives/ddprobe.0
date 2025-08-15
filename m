Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 222B723B63C
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755244794; cv=none; b=Lx/GCossFChs7tI9Gpy7M/OtOfs4BIYo6xcDWKwcZJAVcDCjNRYx0EajulCAp/IlGSSDKnNaodSp/wo+Dsb7qHMHKwenPKpuJZB5DysyIXWziJ/OkwU67SqhJXn5RAdqotLxojoAIL17ef/2Q29YApFcqNzYH1Les7oFz0ywfwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755244794; c=relaxed/simple;
	bh=Nuv+5hD4O3oz4O8OiuzKyYrJSroge4oUxiqKjBYBaHs=;
	h=To:Subject:From:Message-Id:Date; b=kE1dYSB1v+7uFPVwG4pjwNoRJHiva7e9LLLTkcg52OxXIb80/Hbu3IcIQoEKc9mBzbYr7leECOMT+ItZapzubOg+1kLnY8BOP6Zqe8QApWqw4NUznp/tn5QD9fH6CfSgADaNlHA41DDbsJSCApiBDgn3Omxqm3AbQsqwdfO/dGw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=epn2hlF8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="epn2hlF8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A109AC4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755244793;
	bh=Nuv+5hD4O3oz4O8OiuzKyYrJSroge4oUxiqKjBYBaHs=;
	h=To:Subject:From:Date:From;
	b=epn2hlF8O4zSkqAYJe4frQBMjMYHxBWJ2KjZHzpoAklj7qudDSNHUEErm0Hax3a0L
	 jkJQz6fiTD5VSLpAyY+mwOYg1SSVDQ3s3dCcqUOzEnBd6wrXXjQoOp2BY2SF/E7rOl
	 YumhgIq/vFAeTKW+vFcKXJzF7iklnE/HTBe6Z7tOAWpYfoBwDSRf1SQqovMNiKLiyU
	 bPnuvrbYAxPUtIBdFA6rUCdJnE3s3OoZ63wc7TUhD3hMnaOMhnXvVtZcmpdFS/85Vc
	 ass0aBqRweBjdfrchwWnjBEdJlmdhTFs72SmfR670Nikz4rpsonOg4bLg9giJrj+3R
	 zr4IdBoRfhpgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082FCA0ED1
	for <ddprobe@lists.linux.dev>; Fri, 15 Aug 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175524479358.24702.1259489254030899379.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 031599fe5b636dd3a16530509a8f81e215445d766a7ab332e3ef5e81ba78e31e
Date: Fri, 15 Aug 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755244793
