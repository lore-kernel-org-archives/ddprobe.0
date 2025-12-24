Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8155C324B1F
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:53:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766552035; cv=none; b=iTRuVVioVQAvR0HoQWR2nWyNv17Bv0PkB/qv0xYLbYMYJNRJlIxKDCd1E6DOOt3etQ8yiAwi4vP96LVqWLVOoyroOd6KDg/Dhh3bXXhtFR2XL4PG3T90NBmJiUiI4iA+SoZPgh2y9ElIPOgz3HvDHFJBNORqryEgkMDbnal9nFw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766552035; c=relaxed/simple;
	bh=N7sQ14rxSObHtm7td8Nu1xVbKJQx6WR6CVs2sxGIyr0=;
	h=To:Subject:From:Message-Id:Date; b=N52mQpkNkKXtPN8n8Xv+PHVcsAzN9gyQx3/YY6fwCCF0PIix0L2B9Yi+OCuhaOdLmDf4ifqiV93li5PsysBdQMhMUsKY9RqVYZXaXvbiiEPzi3tBhsBS4mxlDPtg02GWNaUV6uLPDeJkxTxap7ctz2f5WrewfhE87mJk7NbEgzQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ba1kA5z2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ba1kA5z2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F44EC116C6
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766552033;
	bh=N7sQ14rxSObHtm7td8Nu1xVbKJQx6WR6CVs2sxGIyr0=;
	h=To:Subject:From:Date:From;
	b=Ba1kA5z2JkOauw9Ac2PTu4OQRvHqyRJTK9veb5fqFaq235VqOah03RS5tT4ASmnGH
	 gJMLnv34SWnioJFDaZcpW32k7fbBhjSLAhu8xSRFRtZEZTyylEJ0LlqnL0q5lThoXQ
	 Q3dYON+eqA7/DV99U6hq2wM74rJLlmuxZdAnPi9mHVXcmAlwRHLPJTR3shFH565mfg
	 NPORBYVtk9/eMBWLXqy2MNe1MLJ0stRrmxqGnhf7oL58zigg2IV6M4Fc51EaWPLOPI
	 oBTzLsEWx8SD+fFhtROlmr1DsODy2Q3ZTjAIz9PrnzEa0MWWeCspzRY3yUwSuYu7bk
	 j3kzrNQxSzBVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F55CE7490D
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 04:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176655203357.30964.2234878345867745151.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9dc028aa1d8cf86c68b51289c6040a593881a6712ef9fa3af65ba4d15c8b16ea
Date: Wed, 24 Dec 2025 04:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766552033
