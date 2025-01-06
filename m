Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DE3B1DF984
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736182554; cv=none; b=naYBbfHQA0AAveR2C1GDwg/r+Gd/YbKuciI/SlWUeArAlkFFC/zi0aHMhihCPcZVQb96V8aKDPKje1LbrjpUk4elCjhcGDBXrCN2a3I4qYjiuUa+82IUc37jYrWvzAYsKyQ9YzZY8CaoekR2ucv49zPb6lHEgviJ1VAnxpQlLPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736182554; c=relaxed/simple;
	bh=Mw1QPfRsEZogAf9DPeeDDcNZgxF1ZzARbCcdbeOOrn0=;
	h=To:Subject:From:Message-Id:Date; b=qVshjDFV+KiI5EsCPwVXhnjGBoWGsnh/7EGzjSwfP0R7E3LJB6qfz6s9aTDzVnjGRXMyGaKJ/AQuwrzr1PP1Oaaw+RhaouTDliF8zYj8qrQkhCCXShqXlK9yloqK0iOc6Vkcfvo2cZ3maIEeEQ+8rOyKxi7RSAHze1eybsSUs3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D4Et+58B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D4Et+58B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9745C4CED6
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736182553;
	bh=Mw1QPfRsEZogAf9DPeeDDcNZgxF1ZzARbCcdbeOOrn0=;
	h=To:Subject:From:Date:From;
	b=D4Et+58B0T/k9w35JT1qFUwFv934SDiQZstJmaWVMyIzT0Ae73OX5eVOjshDYCQyJ
	 rIyqdAdeL763zwCGq8YftewAtBEQhF6UP+m09Xcvj+VWNi2dqHiIvgDjDJsOoGGpwR
	 pYElKU1mMzod6/x+gg+QlC7nJk4taPgjRfslP4ujCDELQd3i6gK99oc8gnre3EnCnp
	 mLwMhhfLhNRKTWqNA0iVSY+STlnhVpdArlY3GLhmxgE5UTbP48fGeyFz6R6qSPyvcZ
	 2HRm0Ua03hJtepUKLt+wIpgQ/LURVWX2ZkQdiyCKB3rLbY0htTUa7Vc2q6ox67/nWL
	 nKibHUEW9s0/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 989F2E77198
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173618255361.16961.15949733527739621710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b85add4f553393ca74ab22e7ffc37fea95b07c41fd3682b5253eb01eeb80bfa4
Date: Mon, 06 Jan 2025 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736182553
