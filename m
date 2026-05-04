Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F98613959D
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777861654; cv=none; b=Rk9eXeOFAUJNa5LxCBQgVk1wn8bq/y3TxNdZNlf7Vz7hJrUxxjQpUJorPGTDBGTepCgAhtM4bQzhxMnK1kvGazcjDkSgkTh4IIcAvU6H2IpGrL5VT8PkxvN6zQY/tZf+VNt5QQaYpIYq3dB8iCASsOkRkr2EQPbBLbObOBMEbKg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777861654; c=relaxed/simple;
	bh=g0UvxD6uvnzqC6GVxqBlmvN9SVMQi6wf+RQa8zX3rMU=;
	h=To:Subject:From:Message-Id:Date; b=IYCll/gyG1uaeMUx/6Af9QB71lWpllJokRx5yiYpGf3LpUy121hamiVX2Tj0xcM/HcFYr3X8Mt/1ja/N0vbfrZVFIZoVZi9hGHhl2ILLTUGE8fMEgp3fjFQKJm8O/dsdo3BpEuxR7RVzwYj0GgzFfpC9HJsPD/r2XTY5rmgBtgU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CaKm1Trt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CaKm1Trt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA24DC2BCB4
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777861653;
	bh=g0UvxD6uvnzqC6GVxqBlmvN9SVMQi6wf+RQa8zX3rMU=;
	h=To:Subject:From:Date:From;
	b=CaKm1TrtPDT0OQavEia+gBiN4Bkawd2jtS/WOS0eXoZQbMcnnW6nPx+jyQsHaJ4mU
	 MxePvfjeZc2aBQqrttOcDEtnTUZBdm7B3anAtcrnUJUEpIOK/LSHQCFD3ReRbTXb0H
	 PREWCoutS1U/iX3J2p++uRQm3DML231XDiqOJ3exN1c/0OUid40AyDisKvYq1i+ump
	 V7MKM3dO3q9CJMmOB3R8C5e8RYJfSNiG3n20+YhELC7wGQyg/C9/KxnasZMff6Dow7
	 loNGYqphkYt4QT97GkF2tMzAS71C1eVn1By/K1INUGZmYPHRILskB7xjAIYAis8GyJ
	 IXnsDPQzgnAHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90D1CD3424
	for <ddprobe@lists.linux.dev>; Mon,  4 May 2026 02:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177786165368.7353.11951499596308345061.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c9f9e8a470dfcfb9b0fe675ae24e52872a7bbcb64dd8b772eb92466787bdb43a
Date: Mon, 04 May 2026 02:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777861653
