Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 296F51E5207
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764105174; cv=none; b=bPNf5TCvaQkvB/TznPZfZRlq5/+l9Ebh4nuYmx7AVDCkgqRVZFEyTfKnxkNkGqwlH39sq7Ro0N+puSdal0f5gnopJt8vt0fB4ZCehJoPNeqz4v30ivVcrq4CuTmxIpOQYeRLXNQL8uHkfKRYgeX14FMYtwDZawMotdSPp/EcNmk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764105174; c=relaxed/simple;
	bh=53nn+iYpjG5WQiVJu+RGdG3s2KBFXCS7ntg5yhFIThY=;
	h=To:Subject:From:Message-Id:Date; b=OvCdoMAQZp8gAlitkIth3kz6q83Fs5fBGRedaNmserls8dIYTZDYZfXwh8jK9DKn+XozQtVfrojtv1izJAazx7tplcGcYEtUmVErO20Pp0TgAo2NY+h5qsBIHLxuRigRH7M1nnxdDl5qX4vuNCEeyHU19kuNUjz2838JHW/iNtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CvGdOC3m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CvGdOC3m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB4CBC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764105173;
	bh=53nn+iYpjG5WQiVJu+RGdG3s2KBFXCS7ntg5yhFIThY=;
	h=To:Subject:From:Date:From;
	b=CvGdOC3mCVzvCmSGpO6ZUW8MoCb/nFEM/hf89Z/l5Ee5DH/jSgCTtxWHREMHRfNer
	 72ESDawnBVJIVUrlCn7+tkZj/sW1147ITDCSfeVhBS7ahweLCxHitQ4mPd/KsIePBH
	 vIe0htGQAoyJ7L+gE2p8kc4Vjj54E9KtItg0pbXhsJLwIEG7Kt2mfDaZ+pEyQxHt7+
	 PQ0mPbwGonzOqa4UWXbyGY43neP4YGED9V371U0d0qqZdMMojZRtRBgyahmdJFZqdQ
	 T1JUs9JJWVW12X1J+uEEaKku8x8IHGHIrCLseMuHgjVbG/HKxrfaymPtywx2aTEB68
	 KwnalB0fCUPVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97D06D0EE1C
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 21:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176410517359.21395.9220135958970574515.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 474105482b89c54dc2d90eecd20c872f8af3afe05c43abb6e9acfd2072c1b0ff
Date: Tue, 25 Nov 2025 21:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764105173
