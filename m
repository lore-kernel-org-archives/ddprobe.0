Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1235C37E2FB
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773770694; cv=none; b=LgQgm++07LysiUOyOD9rnqMu7w3O1kls1AK8fhU6JwXnbdu79VeAzSNkmAhCxnICTC75R3t6XoIdyHU0ibEUKgw/RE3zfJ1kKStH8dWTAsUVxyVkHklat76K8YtKiVbuW9H6iXz+SfMnymXPOgm1RQ360n5KrwI5ZaPIw25hnig=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773770694; c=relaxed/simple;
	bh=mgU154IyqTKRfswZ3yGPRkrHSoChvRHXywC0GxztHoU=;
	h=To:Subject:From:Message-Id:Date; b=KntNN3cEJE6Z882pd29WTG8n05RFHdrylX+3mYKpXZ6gRLj6JfXhR8fcfK0WHrHklkNyFlTb23VXDjzHrORhQGHAdA36NuocsMF3pfg37tqBbX+MAwUlSIxtLB9miKDqBfv0XN1FRZf8NkdDlcwYOWGaqErUcNnWY7zd9xllaEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F2eGfHAm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F2eGfHAm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A29C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773770693;
	bh=mgU154IyqTKRfswZ3yGPRkrHSoChvRHXywC0GxztHoU=;
	h=To:Subject:From:Date:From;
	b=F2eGfHAmREBIApQE/tVQ7hh3n5nIC9CvQRDAj5+Rd57SG+qQToa70kN1WgtOwNLdR
	 gAsgtLMNe93aeCpGkJzHqZF1wh/47fXCeaJDGJBk/Es54SKic+ZLZcAlB6KfaEqwn0
	 0k15zGoicGU1Oi29mhkm4U6UO4BsQwJcT7v39yGJNXLotkp+Cph/L4CYVXOi7obVOr
	 HUM9QYfM5muiwSfPINY3H3pltbqq8KIsS/6kipHgt5b4vK/O8Zh4BdDqiDV0yIlBYv
	 BEPS/GlfUNEfpwBej4dNu6/ltsaxHwE/0JulimzxDqisDqGY2UsdOStbrwyNS69xAu
	 fS8nkKKV5G3DA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9082EFED9EF
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 18:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177377069358.24659.7011031208231278126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c27e8efe9ae3ee5ee45edd3d1fa93fa4f75ecc232c4e48c9791b6486c4d40b5
Date: Tue, 17 Mar 2026 18:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773770693
