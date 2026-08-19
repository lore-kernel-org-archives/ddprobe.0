Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6B6E938BF6A
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787122834; cv=none; b=kM12Ex/xYPrXsXrWK8piyzyZVDvMrH3EtGEj0kimf7nvOBPIPSSVeSEzgHUr6knp5UK8WZ9y6UMQx0rmxG/wAZ16Kkw+Jd71OAy0VDR0znhCyZVTvqf5mPlMQjryFQ4hcp1WTyf3OYYDY0lPiPeKSv1s3JO1qm1L+NKPr2ZhZSM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787122834; c=relaxed/simple;
	bh=TArfQtrtXfOjHJiJiQyXCt9gIjmCL3WWPpxCp0YZo9U=;
	h=To:Subject:From:Message-Id:Date; b=KTcR8zDOLEfrCFx+9DjnaKLGBUqegqwSxjgpr6nDwKwbK9PhQHSlkzYYA9EEbldDfh0Fyto6AjYTd+hZwAddCh8pXlRFO5BhEbT5g/A+tGTLZX1TCA2kDSraEAtjvJeyvSl9W74L5hi9ZjjC/tWoseGlk0gYCzSW1ptMSveb9pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QzI0Ydq9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QzI0Ydq9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0FE7C19425
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787122833;
	bh=TArfQtrtXfOjHJiJiQyXCt9gIjmCL3WWPpxCp0YZo9U=;
	h=To:Subject:From:Date:From;
	b=QzI0Ydq9nrwF5rIJg/2UMcR5mOFGkLuQC5TV6ovDFtPz6nP6BDtN0yi/0kX8gzAH5
	 ns0QL5xs1BVponypKv4jom9yYsLN1VxC9QT0tUvrQQWiVrlIOwUuBVrAerm6sQ5m92
	 Ww/uSVCP3xSZkQH/1rXWnfa5qAztWwUAbOtx1PMeGy9nwS1368en2UaB+JEyMMhIY1
	 tOgzJZPcaxcYy85F7n4vwjGen8Q6EKqaYI79gBIfkVjG74DbFotdzvR8Fc1e3O/wRM
	 oovvx4Fj+aWZ/1OdPRXGLRIjQ9SejYqNwU4ABmCX74Ob6ORJCvjElIzxJ8ekPDypHL
	 4uTAsd8Okyy7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7FFC5B572
	for <ddprobe@lists.linux.dev>; Wed, 19 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178712283369.28983.4323973144613989319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d265cb6887f7ad9077f95179ac8ef2c3d24eda0b653b405b09f48ac07ce7a69b
Date: Wed, 19 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787122833
