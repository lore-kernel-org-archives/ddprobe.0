Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B1AE4C7F
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751432394; cv=none; b=BvtOlw+EIu07K6m4Ve3kVdZRB3z6EJXwuFchKw9cvzgi6UYHv0/HGlPtuLPYFvWm23PFCIVKf/QnlZhcaNbBp2abn9pOYwGLbQU4JKC5W1Bvp3sNlM9DYEpHGciwJFKX8tYpXRwOtOkGG+UCEnCZm2n/VmKTfyxRLQ7a3f1eXxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751432394; c=relaxed/simple;
	bh=02lePKY8dHLTNUpGePWWXMxHcC9OtGMbM4uHRTt14uU=;
	h=To:Subject:From:Message-Id:Date; b=JqZB1UkZMAqiA8b/O5PxQdLzldrTB96DSUiLxeviWzI/msOU1uJV31OKGc14WgNROwA+opTFe8h2ZvxxEJD/ujmtAHVTEieE2aSkBFu2hpV1pA2jBPaLpO8SpXYplxS7XSqdsrtq+6u1qbXFllzq73+CtIuXXelR2zbi7JNSVEA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nzHs4JrE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nzHs4JrE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF2F0C4CEEE
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751432393;
	bh=02lePKY8dHLTNUpGePWWXMxHcC9OtGMbM4uHRTt14uU=;
	h=To:Subject:From:Date:From;
	b=nzHs4JrE8AClFvDmOcIPsJzSGdRCnTRwfHuYOs4AQ9AeaCY7ftqBlsWU9qA3VBKj8
	 /ARj9s7JY5z6Oa+oBndNPOoE/grTK7X0TF3sZmx40MsB7oMIxFDujJbFAMtqUU/xSB
	 WbhCVVOY3zOu/xCCTOqPmy6Lf8inq5nD0L8JoMrNqeWF2DNR9TvGQSLqGY6ZjATYHl
	 81Yp4EfYoD6hUjpaDD8yTUH9AYi08ggR+2SKNibLUCgYPiPOFnevXl6Euqza5QSYZc
	 8mEW6aQFH4un4VGBCBbuntHbwgL56NmbKgoScZgUhNclR9k/SNZuJedX2wMYYrR/2M
	 4uowYLg7vQEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D217C83013
	for <ddprobe@lists.linux.dev>; Wed,  2 Jul 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175143239363.8643.17073442042314951609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4cbd258b69273f9e79dd1f5850f2c2efa7cb4aae71468b78cb4bfc1c763b932f
Date: Wed, 02 Jul 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751432393
