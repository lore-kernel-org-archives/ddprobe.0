Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 617001CCB55
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727807154; cv=none; b=GnWpW/j4NkxkOnOII16vBxN5wd31mUtFaXInMMUfx1H+AmXKfughPn+P+tMmwOyEC3Q0MS66PY1Ks+mo1lfib1nugfM1aU5hT+hsqeyRvgz2u7qfchHblencrCEecN5+qxJc8FtI+1rZDy1XgypZPNRSoc7Cvx47wuqddzFNL40=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727807154; c=relaxed/simple;
	bh=r6xZeJqf1a9R2fOF2r8ILoPpsjON55forMsvFXFDlFo=;
	h=To:Subject:From:Message-Id:Date; b=dGFgush/PwvzGX6fvSmwXgAaspaGwu18+aYFXQjE4cr2hUIclzu0chL+Hz3FFnmTm3YXIDBkWSuWXELOp35DcM5NrZXhhf+4but4AH3cxSZWyjQXXo/hmurl4yHJ9U6KMYvusFS8kLeiyeiKpehgdBFvREyp1I6VjEnQ8W6xE6o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qr8jeQHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qr8jeQHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6226C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727807153;
	bh=r6xZeJqf1a9R2fOF2r8ILoPpsjON55forMsvFXFDlFo=;
	h=To:Subject:From:Date:From;
	b=qr8jeQHqMqR1Yu+kX/jXNZsxI2bROWmsG8ffi5tGy9CBldXZBfrv2UWif8YB7WcH8
	 tHHI5+F7vjmwLRtSL7czhVsW5vmzxuQqoeF5jId/AzedirTfbqRtpo3WKGcPwgpJMx
	 XcqW8/ozTGhvvKEr+cSlxmZVQJeQb77YDDgtwsJZp0Qbvy5Sii7x80aL3IC9Hnsl8c
	 EKJp9JMCE34QnOFa2E5x3UYWFyMFScqeZTIBySuyYxnYaqPVPXi5DHG0Sr9Jk0Uztd
	 liK0yRvjwjR07AqwntIeGZEP0y2fPV2+h/DW4MTC/FCEIP1sg2+6TbWRbrREvl4is+
	 /lfvjQ0SiT8wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A52EDCEACF1
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 18:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172780715366.31373.3572373001870585645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 134244b333b0b9a145a488e70a0a7656ddb923d47197a89000474ec9dd6eb608
Date: Tue, 01 Oct 2024 18:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727807153
