Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4023D241672
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740418734; cv=none; b=dl8RVbXOY0Z+b0YX5PBMG+BYgZawdU37K9j7sr6ZPCOylmpNgSgUT/4QRjaB/LNPB0rvcDTWl49XKCDbzYxqc5mM0v8qQS1N8ITmdJ7j17NG0DeVHb/bcN9Y3B+L8dyJTsYX9fA7WodThJLYnCXtG16lF1xGhjY4AAUFq3TO4/g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740418734; c=relaxed/simple;
	bh=64tDvoixzRspyo3M2diy5HWoJYuA/LVpTWBjlqd/cu0=;
	h=To:Subject:From:Message-Id:Date; b=m2Cr75/xdwSG7+68W2EBAsIcfoHH5Jiiajn6/lUzt+a9jEndv9PbeOsoMhur5IyAlRGjzd+x0M1I/hfjDwOKDHIu6y9W/5mz1hrvErRfpvJgTniw8yMsPys9MEf2oLWFCWfS+mVNKXNw6TSxMeKimMFEgGAIKiCUV+DtX40FTFs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m4ePJolm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m4ePJolm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2E9FC4CED6
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740418733;
	bh=64tDvoixzRspyo3M2diy5HWoJYuA/LVpTWBjlqd/cu0=;
	h=To:Subject:From:Date:From;
	b=m4ePJolmpwBvO41pRfNOWhcwliGXiX0nQlmfEND6wnTC6Z4SRCebtvt+211We1X+9
	 lbOyZyCD+TwEk7xJ827LGqD5RyLiqdDovldw0WLjFHcS78AVePiPFk7Rtt9U+c2uT+
	 zxOb3pL343BSSLwNowja+XTpT14559V9NbiiCeSUbfz4EuGalb29WSg5dxxVyni8Wu
	 onnAEhXRcJcATWspHk4iH2bcPp5ymeF0Xi2wM4wOMQR78anKGsrNzpEx5aEY2NQEn6
	 F9wBNAZHJaUJgpHhXZ+sEZOnMrk8U9TBPFL67qfFElSkQG5uJqj7HfYHvoJE0QSWYx
	 Q1P5VxzeO4rRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A299BC021BB
	for <ddprobe@lists.linux.dev>; Mon, 24 Feb 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174041873365.16627.13893429381257780285.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e6205d5a029d67ce10917612b34a63caa42e2c4427870ca1aea438a4d124268
Date: Mon, 24 Feb 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740418733
