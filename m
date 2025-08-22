Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22AEB21B9DE
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755842394; cv=none; b=ly+8M4ghFK4LQYZ00idCrAV+mOqZazv/e62Dm8tMfUVtLgFQbpm6PQ/KuVMSx9FLx3VKWq/zWZAk0sFc8vgFnu6QeJPXPcgXGvkCsAFryop+i9rbVSixiN8cMOD2cCGqgQHpsTPRX51zs0HCJITQIAzr2X3hVhrFmAPQ2C3hOG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755842394; c=relaxed/simple;
	bh=uTlbpod3LWjbQfrEUkqPowPnOlWNFw+TRASDXZIS3BE=;
	h=To:Subject:From:Message-Id:Date; b=eB4wIwGJr5xmopRPxeRZ4M2UFuSvRd12yBoaxGXM+dVPLzOwBj7plxLtVtRyYEKS8r8bCD9YBfeOEosHHCSEA4plKyKfqDmVKYMQe6BJFBaZlQHh6mh9Kfcts/BPjQfmaL/mFcR49Q6Q+kyyUBD2tL3h593g0MAF71tltZUL/ho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7R7ckYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7R7ckYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F672C113D0
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755842393;
	bh=uTlbpod3LWjbQfrEUkqPowPnOlWNFw+TRASDXZIS3BE=;
	h=To:Subject:From:Date:From;
	b=n7R7ckYrtqXDg61zkSDsplSgbTOT6lmh5hpCXAugwmo8sCas2kydAgbIQNxqEJBfq
	 1FsFJo6JhidV8z40l5Ap/3mJFMcE2Z0YypkuvRaOnfm2mjavH1ZXed17PCgOJlr2wd
	 3muA2W4yeP5pvIhY8pK5CLY3uwmOmYwbQrFyKEakdqq8oARtb21mFa8w9sSjE0h7Xe
	 whVaaiYdkOLCZRiBVcjyNzMz5AEEJUiOGdyGjBDOqcWmfk7lOo4wCKTLiMkI9vxGpD
	 YuIdGTYodcg6+WNHpfD91v0CdLq7XVVtB1IeYuVK8+7VVggXK0LKcdHJNd4Dsx6llC
	 fSEA0wih4/u+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAADCA0EED
	for <ddprobe@lists.linux.dev>; Fri, 22 Aug 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175584239357.17825.4392081440500832003.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e4a581a1e267177b67edd9c5169135b8c53e30d597950bdeaf7f4cf4bd8710eb
Date: Fri, 22 Aug 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755842393
