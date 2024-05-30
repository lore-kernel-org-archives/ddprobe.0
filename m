Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7D2831CA96
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717035263; cv=none; b=Br3TOr1N3ITtN/EV6t3gsFLxUagReec1mBi7Zqy/dc/8bauf3ByPEb1uqqY39auIqFUVXbyQqnfzkERgXj8OZc57JC1Cbc3Ueet8VP1oTRb+oQtFwIChBp3rJXqZ4bGuSZG75rZO5IaAV/IKZ8UeRtoFLClU4UtJrPtKYUntCnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717035263; c=relaxed/simple;
	bh=IIeCsc/lgW2bwLtw3rdRuZXyshsdSVqaY8NYM3nbMYU=;
	h=To:Subject:From:Message-Id:Date; b=Fe05qQ7fZ2JWJc0rsslulkz4XnVe/X2oGzlVOf8NV6EYU1UllBgq2bHTwrCgqVQ+X7A9I0Zp5UNrIT8+lxrhZo/7pjzStKkg8FfJH5nRXZ6UneBq1P8gPPyFyeRj15BPpFfGlLFyLIX6ci/sVqAfVCy2cmRGZjg4nkdkSlgX2xs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O//bPqx5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O//bPqx5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8BC8C116B1
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717035262;
	bh=IIeCsc/lgW2bwLtw3rdRuZXyshsdSVqaY8NYM3nbMYU=;
	h=To:Subject:From:Date:From;
	b=O//bPqx53xwLMd6vXd0k4u0HRsQIJkskN4pYDSJ45hRyTyRkRlktln5Xlx8DD9XTc
	 fScSHE9IeINV/vvzJE6Eq0atau6SgQmRjtmypm1ZbRDgq4QqyTgzG9deU+bVPPOC3I
	 2tstnee96YXcCdoZiRQnOMN6iAWXjePNq4aJAqt/b+UVa2fm+HXBcUJouBlh+p+Jb8
	 FJ8+3pMgbe/tZSLZNHFM3jYq+HQSFqsHPDbyMU8VAnsJp4tuw/2pmH7dxioPUaoyCB
	 gZ1DfvIuvscnCcPvvIyda3IodBcDMkERdAyp0Ff4yME5atiqMqb/w3aiLtf6g8ujw6
	 7fr8NCAd+oh7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3B01C25B75
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 02:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171703526276.19400.14037597871911696341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f95289c9c8524660eedbf47214432aacc83b438cffaec9cfb4b73323cf36e51c
Date: Thu, 30 May 2024 02:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717035262
