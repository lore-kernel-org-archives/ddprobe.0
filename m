Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 290A33FC5B5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788418834; cv=none; b=KZhg90t00BDEyv1nQnIBQnMG8VYATp6B44pTQwCJK0q52HQC12+1eII3HMQMP/f2i6e1E0n4jch4w/Zj7xMFUCDfGkXttiiOmbHAqDBciYzKVxuX3RBLnaoIoDle5xfKh5EFUqXPp4nE7sPmfNxKXQqDExkQ3gGyZCKRZFTS79E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788418834; c=relaxed/simple;
	bh=yX/PmaASsJdqU7rBD36++xFtkJx2tmAbkSHxYSDf8jk=;
	h=To:Subject:From:Message-Id:Date; b=ZRvVfl+hngx8o0eBnw7m3yt4zxzCXnx50xOf9latlw5ZkhJp9nzpuQ1rfMvzne4obO0mDSQlj0b11ydVRs60v1O/eir7pb7X1ua29OIJw9HqMIs9Z4CIZ+K2bMsLfdgU8wG+V83ofJ/bVFlKhc6VjjPhl//ZPvX6GrkMDP1sCRw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9RpLdYK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9RpLdYK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC225C2BCF5
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788418833;
	bh=yX/PmaASsJdqU7rBD36++xFtkJx2tmAbkSHxYSDf8jk=;
	h=To:Subject:From:Date:From;
	b=u9RpLdYKVb5baAaQSMQ6brd7tJfcZtyIeAxC4ehbfop9H3rzFxf2aa9S08K0Rodc5
	 yIi/wXOo00xPXT+ZHf+ApoaIOaVovsOlEkeHWkV8qPgIUUAukrqgpdAln71ElT7gFi
	 QZ+AfVeWJjNagagj7bI1Oq/KehVbdaRbOHTQ4LwMYWgKfsdUSA3tSMOamv76Mv48ZQ
	 wOCykwDaHydfH/Eq76SA6ZZgSw1SuSRBTNaI7ISkFzE+YmVtA5LDoGf2zKn/jIk3ot
	 /6DJVpcxIrSZHkx/wvn6uOGiP7f4Q2wQ1MOSOkym3blCGhovg+37UpEiHIBHQMnAjP
	 TA60HiOAnnv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAEC3C624A4
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178841883369.32565.10001574723778180862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a068b54b22678202b634607c22a05af8edb5fd352e409b25fa242cc2c3a73c3
Date: Thu, 03 Sep 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788418833
