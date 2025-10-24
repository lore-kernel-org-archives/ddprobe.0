Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1580F2A1BF
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761285594; cv=none; b=QyE63wuKBXVYg6fnsuwd8RB2QSXOwj0UT01WNJB0pvONd3Hw13jSq049N4h3wop94ry+1r/1kQIzFdnTopoGKGJpH0lW2R/uZDgbzM+HurPI1SScjJBVo5GjM64x7oYlo6Cnra3jRdsrjsQCfE2rHEgTpJcPaVcUYbeaabNvR5c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761285594; c=relaxed/simple;
	bh=qBCd4/JMdN3mZziAiLXRtnwdWLHh+w0oP9XUY3WPb1E=;
	h=To:Subject:From:Message-Id:Date; b=MjNjOLPXP1tcqMfdgd2Cq4cjNEeGD4+DqBwK0sxIdgPJAhvJvywwmbh29KwyTnd0WRPWXYfrpPSHjhAx2IPMcInKU32dSMx/5AwUh0FdZ9hp3UOPFymwWqT5x2AB9n9KOpkjej81RSyFn3enJsWxhnxJZn4ncR+ufRQ5rqhptLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQ+qEW/9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQ+qEW/9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A054FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761285593;
	bh=qBCd4/JMdN3mZziAiLXRtnwdWLHh+w0oP9XUY3WPb1E=;
	h=To:Subject:From:Date:From;
	b=FQ+qEW/9W0ty7uEE+PED9WrWaFAl830qWSb8i+bj+eZ8scejtgRE7Ji80fVlp0wfV
	 twJlfwHsQrUXzGA9AndaxNnUpcaPqgUpiHo4kFxFWFYX7fjCcRRzn+UhuSt5KvPKon
	 ZS8uRMbChNV9Twq4Gws9Utnnp2vTDqjeCvWmxjob+ksQkH5Yu8IySRUGP6LZn+VqWL
	 zAc5yqTWOKJXSuQKeMUdxnkJRIiO0mJ5WH74Ck38Oiz0Rnt5ibiL1+fuB6712Ka+8e
	 mRp+Uz/Tm/Juu4XwK1sDtFpvRCoH8M0HqZMIKUTSe3BDdMv9O9AP+YW0b4VJ/NQ+FU
	 gI6dKwmVBLydQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F1F4CCD1A5
	for <ddprobe@lists.linux.dev>; Fri, 24 Oct 2025 05:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176128559357.16876.2538720881583777900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e27ec89221dd40ff8069f1dc1bb7e46f8a481b289f1c3b121e86539b9bdbcd4
Date: Fri, 24 Oct 2025 05:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761285593
