Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6BC7326FDBF
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787466034; cv=none; b=sEmkfysVYS2gVUmnFuUrj+a9FPWa4+bUWtTDam5yjDhqj3RYUx8qf66c5niWCnDKYvS+HNaYi9yAXH/caeSAi9z+/g6pJQqgRBgXVqDOfmLwEpA87Gx9m2BqV3T8dumpmOC1UmMX27s9mWG1Tuv7aZSwUOo/9AZ2nkA+cPosb6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787466034; c=relaxed/simple;
	bh=CHlc9VVes/XMN2JP2ipGUs4zxDZPZD07tM/1bvCUwss=;
	h=To:Subject:From:Message-Id:Date; b=ka1Ohfii4HA2gyacrdmw4rGnYfwBpuXeoBYnvd4Qeyg9JtNTJktpZ+wDKag1Onk1IBkyU3HyP74j4D29pDuzsd2LDujLlajjRhzuWWEtDVhWHni1zqzREsv1HhMlcXNd2usEI+GONRWcOy7rVE5+T9/uVf54AP6oU7wsWJxxz8c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qsv0CSqb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qsv0CSqb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB46EC2BCB8
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787466033;
	bh=CHlc9VVes/XMN2JP2ipGUs4zxDZPZD07tM/1bvCUwss=;
	h=To:Subject:From:Date:From;
	b=Qsv0CSqb2jttYtvpf7o4qTuCZXtxoPdaXltSSlhVep9rxTYEOyA7XytlWk4QY8bwo
	 79zeBnGDM7Obi8VSDwgHhr56dRNtmo5138fqZoMA7JNN05wLhBzXHq5SmwJMYuKUh1
	 B9OT6Zjc8nwVUk6aeGLtX8LoABbdi6krzNeYGBjeX9KK4MsGvYtDNkCehrqnBD02tm
	 fW2ZY57j+tydB2nUBWA/2Sh88i+Ec7u8Cb0O0nkMKwhuy85qp2yO/MDM1BsVb50YrC
	 Mbw2zhKPzyCEgpBEaUBxeJdUFrFK1WwZ6bYKKJwJRUIYiYRgub7XExyREmcETr4XyL
	 cbdI7B1C7myHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1415C5DF81
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178746603368.9110.3134020554998182586.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f9c715d2342719912ae93ab65664d295f8e3db2b93fa71f659b5a1c7e8975a
Date: Sun, 23 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787466033
