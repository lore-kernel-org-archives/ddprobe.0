Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B5233032A
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765972434; cv=none; b=N3IBZBXYwSs7dqpsDrWduCOFOecmaytIynP66iD+Fevsn/GIkvWQoHnog0dlhti/YKcgVff/SLv7k3giqsDRI84jDyq4zI8uN0goRlIXuP2KEra+aNU7qFJvaqoucoLEoUK139xNy5ArUNCx+quRCogzKg4SdATXG2oDcS2MPYU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765972434; c=relaxed/simple;
	bh=5iV9ELaMrymxEsnIeWiDT+Vvi+Aan00KUk82HKHTp4c=;
	h=To:Subject:From:Message-Id:Date; b=maYggDAbkR9jGOksLe1C0E96X0hKCpEkewualn9fYOnmWDFx/9vEBFFvRCRsuJUzID/skfiISacGjunbLaBXnT0u5e3i4bAcqQTUXUs92F0+d65mZTRtTxg16JI4bnwKvM91zbkNH72u9JYhLjTKYYI4WAWd5UVlwh1QRPH30ms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYXNK+kG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYXNK+kG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A655DC116B1
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765972433;
	bh=5iV9ELaMrymxEsnIeWiDT+Vvi+Aan00KUk82HKHTp4c=;
	h=To:Subject:From:Date:From;
	b=kYXNK+kGZ+CrQ6ZvaPPTP0Xwm97A17ECUcWbClnOPWvNJUgu4x3fS2jbRQGtMSFua
	 nxCG5z7Q3vV+PGk4rlgXz3sIokvboEtKByLqNZXFHR3IQB/oLQn4SiV4DvC2cgUlfh
	 p7YbHGlRCyJfFLPEwak5aR2ZrwSuFlVEj4kfGm2QqvNEwns44XB48V6yGKa9oJlZC3
	 bSPKiS38Rs1r44AinpdEaUgHgCkpnqeMjZmEapjps4JI9HTpRAq2BE/RANmLHPzZHa
	 q9cyDaq5HPaU31b26VX3zgXzT6YTcilnt38czStjefsCowP0vrv49nneCidgRMi03i
	 fRSRBu/4RQ8TQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946EED6554F
	for <ddprobe@lists.linux.dev>; Wed, 17 Dec 2025 11:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176597243359.25479.17225615899426529038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8801b9e5e5edf1504a449112bc84741e26eb6e1ea647eb9ef3c80c695a166ebd
Date: Wed, 17 Dec 2025 11:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765972433
