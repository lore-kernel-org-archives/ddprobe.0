Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 642E045D188
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788775234; cv=none; b=MAHtphMKF9dxaTWm2SUIH52RTc1lmzUOavwj8Z8Y7tMbKOlTlidFL0W9pRhg5FR/ZgYtL+CBaZOhhXfmd2KNwYq0vzOLZwPrCZP8yan/hxNzpuWrlNKqqeS7SB1cgATXP8oZO04D+MGjBFe0fkgAp2eAllNzMBTIP2yTs2zZ5KI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788775234; c=relaxed/simple;
	bh=6V/qW+3mHOBzzhhNGTGR0HyvvK4uBcEMURNvzmDCF/4=;
	h=To:Subject:From:Message-Id:Date; b=u+snH9puoFojxGEOa4sqYCRaYjTLlPK6PN4zxSO7sotiY3CpohO49tnxbUEr4K9vJGnHHOCJasp/QRsObK/YOOXvFPjd6ePXb90BKA8AVh9I+EhgfbfWqV2cfO70Pt996ftt6Bi/IcIH8LW4eSVP1WQ5oQFFBZwS3rsAKS454b0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EZ4Z3FpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EZ4Z3FpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E05FAC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788775233;
	bh=6V/qW+3mHOBzzhhNGTGR0HyvvK4uBcEMURNvzmDCF/4=;
	h=To:Subject:From:Date:From;
	b=EZ4Z3FpMRVbJTokr2vRlb+geyrFw04EGa+Oxk88rfmSMOTSzRNcJHjleDGc1ibbpv
	 7B7NDAj6++DLKym3/bNRYP5InDYuoHnWCxn5In+oyt8ZcG/pL6+icTWeE5bQtOJulp
	 iLrVq/DqA3zv7qf0E+UEemUlMab460ZyHwYt8ByEkLrPdUrCTQ8ar04tIYhGsrzyCC
	 UEcovQauAxPdQMZf1rFR/NJzt35jWXgReY8YuGtej5fLc4Ah7AJGHGQ+JwDU+VkOW+
	 IF5m0isYrEdg3YCYU5qed4nlYqq0Lmm3bzjzPCVMmo9MUPq8C03z2VA9tCtd7uU7yx
	 wqWrRgVgKdQSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8D95C79F99
	for <ddprobe@lists.linux.dev>; Mon,  7 Sep 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178877523374.7454.8847385702489716352.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f20affffbd81edf11069fd68c60864dedcc7221ed139dfdbb8ac53e4a01e3e0
Date: Mon, 07 Sep 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788775233
