Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 360AA1EB5FD
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765689774; cv=none; b=k4YjtjXdNSCw4AMPIsg9wlyHXwW9IaRV+MZufLOhmWWIcCJ7gahxtrFBMC0Oi3TV/vxQ+Hj1iFp2RkIJq1nHLGa1IapUb1/kDIrYCQtOXsgvq+JCZEmU4cWCk2bZnXQBrqI1+K9qzBiudJaR+6YcfA4mXcC5z00i0TQmWU2HO+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765689774; c=relaxed/simple;
	bh=k/T/D23SWfxCJ9B9t+EZjdU5EuzE26+/bKf5EowyYdU=;
	h=To:Subject:From:Message-Id:Date; b=tg1Etu6qJjLN9gssaQcaQLGboH2aYizUad9E3M/TBPyPsKhmkxjL/nAE6yCDSP8rfXee4/pXgSO2kxi2nWN1VX+9o7P1aWB8khIpmJRox/uoXl38ViwHa5d34leKMGehMvVKH8W9uydWp9chfGdoP9hj4BnJDYxun7BD6jcablU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Muzb1vS3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Muzb1vS3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A997AC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765689773;
	bh=k/T/D23SWfxCJ9B9t+EZjdU5EuzE26+/bKf5EowyYdU=;
	h=To:Subject:From:Date:From;
	b=Muzb1vS3DRxSROehsWnL4L6tAs7etIvWls2UCtcf9M91L0B8lZHpjXBGBpikteKfz
	 X3/2DFuGb8w2wWxrfwqjQm8ochg8WuQcMuuSMHRVb7/peOwkJ1ccBhKcu0EQgQWIM1
	 GUtm5H1DexOOw0ekB2spmMf1q6eI1hnyLF3XLQokhDO4k+YJLBu8P6VKa1f7ugHlac
	 TI27roJX0ozdO/jClQmMDwYbdVRm0CB6k/VvW76wnrrjh0xaXUUTYljQLtKoxLyxA0
	 vMXim8Zp/gqwG8E1EJPsKFJhZFZTldP7x3y7+rVwCWhpXkPuIMNRFGr7oBehA8peeN
	 i01b8vE4VbxQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 933E1CFD314
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 05:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176568977358.11745.7059719127019940060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6424eb41fadd3fe815d088fe0f99ea5bc40347dd5bd6f5b4b6eddc61b5fd2d7
Date: Sun, 14 Dec 2025 05:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765689773
