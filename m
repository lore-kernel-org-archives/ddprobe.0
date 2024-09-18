Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C56B117C9F6
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726649753; cv=none; b=by3xDGPwkfFhw595kV9I14L1ylyWZWBzZoTwYHRmkZvv2l7mkGYCi1S9pNSJHrlplvy0nuK38z6Gm76mvBTix7JQplMbubcFvTbjaM7hbW6elDsDUo27N//HvdvGDuvx0/dpdlu+XPjiaMF4XSBJ0ClF6ol0DpyH9cYcfROTEXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726649753; c=relaxed/simple;
	bh=l+qFYtZ1nHYXQ3QDnDuRESjMidR6WQDzg6NPC6ZpWxI=;
	h=To:Subject:From:Message-Id:Date; b=ZL4S4FppeV0wlQGfiSC1d7OZJQMfnjeLiiuZtH+akTv8ac+IonZ5i+MaQphuvnHxetM3CANYtjf9xcV49VDGRam8jMlQQv9eKOAjmOQnYbz8bc4S09m1MV5qyB+apXfSJotOgAgk+scdRWprvnFaTe605kWYB1hLDEIevO/ynZY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KT8SO9pH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KT8SO9pH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69FCC4CECE
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726649753;
	bh=l+qFYtZ1nHYXQ3QDnDuRESjMidR6WQDzg6NPC6ZpWxI=;
	h=To:Subject:From:Date:From;
	b=KT8SO9pHQvM7n6kYaOECWcYfjFzRpyWAhzsSeSBa0oU8H54BiLtrg8mRMz8HSIQnX
	 tz3aV7ymaonXmORZvNnVQIzq3inrmxjgl6ANi2YtgTYaTiIXOG97kI3j+5SAJiidXt
	 qex6bnWJaXT4x5QyTtcc0u/yVSHXyB0DFnHLqaATo6heQI1D6o4EXnDCMY8Bx8FAAm
	 cKAODBRq9zLyyWmzemDptapstpBk5y72Y/1lg7v33IAT4CXEr7iNkXDOXjZup/qszs
	 dY1fS6lB+UJ/DgCTGYH7DWUUW+Hn21p+0cD4jSOLLm+A2qXj/+mWx1PTPCI5vn658Q
	 XzGJE6KiXdKLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9467ACCD191
	for <ddprobe@lists.linux.dev>; Wed, 18 Sep 2024 08:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172664975359.6558.7873409010793528875.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6e4593556a20f215ab548ff915866d197b0b6f69644ade6639bd8c9267935c3
Date: Wed, 18 Sep 2024 08:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726649753
