Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECBC114D451
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 08:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706259497; cv=none; b=RJddOgjdYwl1L0nHdUr5QZS+gIZxHtUW0d6oY5HpC4HxnsvZ7e82g4+WwFdHWmXg66jfCBYw24/7r5v/IBl40d02/GVjpfucW6OwrYE+k9qdgwqBvK/OmkNFC5ZXnfNRreZZqkpL3U7OUIERdixL+jcT534Qz5ummclxx1KyB3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706259497; c=relaxed/simple;
	bh=DFvI2SHYL2++wQaKhjPxou1fdi5Gi9VkKLpG5DbrUqs=;
	h=To:Subject:From:Message-Id:Date; b=on25Sb96ofQSeFXfvkzDgyM19PgjBnP0CiD93Q0XyYyG9o0qB1b5YVnjg1HIABeg7kchKsbdfwA5Iz6MPCFKYocD1hQqGWPlBPOUnaiX2YlfILmITZ0GPiVT5SRIRZKV9YvwWX/8vX2fqGv7DHdt5QJrE51VDfkp0VWznsJlRIk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BHMf+x01; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BHMf+x01"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A52EC433C7
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 08:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706259496;
	bh=DFvI2SHYL2++wQaKhjPxou1fdi5Gi9VkKLpG5DbrUqs=;
	h=To:Subject:From:Date:From;
	b=BHMf+x01M/4IBL5pEZBcR6izui92qXgly+TpLj/fKOYHib5WVVIASKyb+0Git6W5e
	 e+cOYXBE6C48hwPZX59cGx7waO2q1glWbGcje5b/8h2ktNSJcoR0yRtb2GWe1/7vOf
	 7xH1cGrXmfwUadGK9JpPlFzeWPIh97mlEfs/f8QQStjuxTbsiyHDBs44LJGMVPtCd6
	 5E75ZVaw/XKtd6nARaAO2e4jDf2bdTgEeGVkaVmtUTDMbL9RE2K8vRUckhaO4SJLF1
	 C+tT4zgL5Hi4Y73PU355qiaYlxcZb8WLYii5xJA2ng7IpLZiJAHEEoJ44p1jSi62LO
	 aeGjkldZlf84w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 60313C47DDB
	for <ddprobe@lists.linux.dev>; Fri, 26 Jan 2024 08:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170625949638.4670.2543988833502992620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40a09077b955a160783feecd565f0ba03192babc2b39634c39a54a3f7d17a3f
Date: Fri, 26 Jan 2024 08:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706259496
