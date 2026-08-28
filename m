Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42BD838A70C
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787909434; cv=none; b=ZJMIuR/Zm9Ip0YTXMTLxDpMjUPRPa9CB99mFcoDyvbKWz9EacInE1HddfcapDsyou0ISOAZGC+T8JpSdHZjVe+LZk39SoffJPMCVKk5ubl8YOhotfWCMRo9SkfPishyBitSbFUHUSpK42mxvyqLQBuonWNlUTbdzn0yarrtRyKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787909434; c=relaxed/simple;
	bh=utPkhN6ml/caJDN8UhRFc1w/3WENDXmr+dGuuJG8CvU=;
	h=To:Subject:From:Message-Id:Date; b=JaunGH3YyuoCxDhMBM7tUc6/8tTt5M5RGIVM3eDgKJly9VqdQph+Hzh5MGj4m47wdXIbxnCB4Mr1HdFLBMbfV+dGmbHR2oBrwCh5Ov8B/IObl0K0cmb/6RGdCZA1c3kVlduPLTk7KHPClr152AxcPABVozar9rW9deax5zJQ0GA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MTSjvIC/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MTSjvIC/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D66BAC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787909433;
	bh=utPkhN6ml/caJDN8UhRFc1w/3WENDXmr+dGuuJG8CvU=;
	h=To:Subject:From:Date:From;
	b=MTSjvIC/H0rtcAijW4RPIntMFe+JtXHdWNMEYnq93Isef9bMnzIadto0j2AKgg6a2
	 a/2hIphA6sikFeUwjMYxb7H2G8F9poJSfaH+WusXcjnI9Ymzs9DheMyyanG5bcGtlt
	 yF3pP/jubce2az9fZmFjdfyN+CFKDyHNfJVpuUOfV+5n139yVf8Rn0fQhXKqPXN4hY
	 AtMqFJFO38OcYJPAt/Y4+ZWveqhXal3YiaQhnF4WDY3jS/HyAvLUBGKXrl0iPrxAU3
	 YDcwmp+cYhJTBZLQVjyPbPsz6uVnSi1fH3wuELFyl83Ug4ifDe+ih2LjG/znLlUchq
	 Yuq8XH44pHx5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B48A3C61DB9
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 09:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178790943373.23334.4849339009492794867.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7d32021f68c79f31e95c0b163145f7b1e9c8a774ec3a5782af6855ec806c3106
Date: Fri, 28 Aug 2026 09:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787909433
