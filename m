Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205BE330319
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760983194; cv=none; b=IneC/EhU7t+O0dYWZVU/5TCiOFIMUGDHYCkDwJl6QvzTOzttp+qXR5ncx0qAMkT0HO47x3QrckgvsdEr5VS8T3E4P6KU6Tbq/yxgockuyxlwSVUDtWyhZyy3B3S+ZKSecPS8BoPrBlnq1QCEkwgZAyRvPRYj4HOKM7wHNP3wbvY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760983194; c=relaxed/simple;
	bh=QsqJtJ1U87MSKWN0INwPvGrOYAtve3mRTptKJwIkL2Y=;
	h=To:Subject:From:Message-Id:Date; b=YnQ4iwHlrHzDYiJ4o58IfusGDlrOtRAD/9u48802sMhI52YfrJEt4lh9W3nvNpskvnDek5L5BBh7Jr7/+XV8xuACotDsC+TYpHqX7U6kgjgMNNuAxR3CIlCqmlmyKYNB5Vr8tXRJhewVWYUwJo2ru13h+XbKeFSGf2gM2scfmqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eN7DCFJ0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eN7DCFJ0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EE85C4CEF9
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760983193;
	bh=QsqJtJ1U87MSKWN0INwPvGrOYAtve3mRTptKJwIkL2Y=;
	h=To:Subject:From:Date:From;
	b=eN7DCFJ0qQvi9MlJo2W5DUoRCrlhOLh3cwuiRx/vjXbJSiTKZg3l5p8tscsrYlEeY
	 EDBZbA+ucCdacmCUZq2OOijlcpSQmTtGWHCILbF5KyHY3spPGdH3Xz9/rSLW+Vzf7V
	 zyDwZHOMTJt0dPe5Q7lyeAIsFkEjAYTp/380jCwD0IEeqfYYtGyOWe2qqYeyO/wqLr
	 snPraOlbS5J8q8pynFUS2bgz1KRDl4WkC8IijfslKDfFvo+7VunUXhZayqO78xsWNI
	 Yx2vURteJBR6i9Ku2qa0YfJXPmG+H/8H+KJJ+UtX+qokNrEX+gqCZhNWG2r4o/Yf27
	 3CmkaWtKn/ZhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9436CCCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176098319359.25630.17843911729540182499.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c72ee9f5e8a31048ac73883b21e608e116dab051bf2ffe03d21b9c4ef72185e9
Date: Mon, 20 Oct 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760983193
