Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5306414C59C
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714061543; cv=none; b=MYWoj0+9aoREcD3jVDqTP5a3gzIOcsHDFvtfuLzQ/Eg/hi+Ldbc0QZ9QPJdYqCNQMST5YWgcrTL4sHjIFFm6jFOe4HymWL1Yo4uWBpwSZXAz8WTlkP0p5nzDMj45JlAhIsQHI1rEByZrubwIKre8KeSu3JqEFUHiLHKM8PfVTPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714061543; c=relaxed/simple;
	bh=0Xm6pgQVqgVZypVM5Uk8vSMV1RXkYGn3/mUYN4+F2es=;
	h=To:Subject:From:Message-Id:Date; b=sJSPmUkaIPgAhGk9wpptErLPWN9kX2FcWsLNOAWO78dCLMXLNqdnJ0APsoSUyxaNJKOycQIWnwbyMdVPPyQnTu9ldF7LJL+f2N1gz6zZQSXtUvtpoJ9Xf925D3o0W/zfgvpoXD5IP8qn8JpLAxOPLQSCRRWuZ+VJdDFcbYvmqAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IZZRXo2x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IZZRXo2x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DEE32C113CC
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714061542;
	bh=0Xm6pgQVqgVZypVM5Uk8vSMV1RXkYGn3/mUYN4+F2es=;
	h=To:Subject:From:Date:From;
	b=IZZRXo2x434YGJ5Y3nA5nIFxJqPI1lxxKlP46XYEDb+2GMaLA7gCNDpgZiggItcjz
	 NpqvQ8G6109UErNpoOgJlAFYuTTr0eBWX7Dm1iyR4fH6hD7NMw10qw9dx5v/req30b
	 AUNiwFFSh5q5qoHFiakdrKquYt3/N/EkY/YW/wBfy6yhtpK4eP+5THrMJ+C4i89z2u
	 DWaXfHZqNTHuEE0z4CYzLZlcVOlrQakSn7PMoc5vN6HnPjNUPAfjKpWAgBsqk6A3bE
	 zOtQ6/2sEZq6tm/362A7ATf9cmFFICdKqLLAJsHKAEANYic6g0YriaSytr2ce6iApw
	 bgkiaIHGbYFgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAB39C4345F
	for <ddprobe@lists.linux.dev>; Thu, 25 Apr 2024 16:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171406154282.15823.70425208365475056.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26a5183ec50bfa51400058ac012383e7ed01de843c0f231fba66a8821c6a0581
Date: Thu, 25 Apr 2024 16:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714061542
