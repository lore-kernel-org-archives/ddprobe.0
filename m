Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30CCFDDCD
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747045194; cv=none; b=IEIVljUaWAPYSZtBQGiqL5tYNMpKfM/TVm8dwgt0FEeOJtg48DFYvIU4CkEjNhGa5PAh6a2GIMUMX1srNO9jmgHgV9PshiHnfr7stopecxRUVG5C2qkRb4W5vR7AKENE2Zp4uWtCj9hq0A3N9NU4nR5oX51zZQnsj9iJFnVj0Uc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747045194; c=relaxed/simple;
	bh=j/siHKn73u6AckjOzVvWk2LiPtDDUluimG5uL+J0jSI=;
	h=To:Subject:From:Message-Id:Date; b=sBGRPBWaT2ciGsO8Qiohx48ZfgHqHxPxDmlpYDtc/Vmir2MizOO7n++peRetm4Dnmc8UHmlqHfPKmUrGnaR7EX6vIslFgu4UrfFMBmGt1F/hSVwkht0oRziD7Meitahn7PZCIAFlqiKBgwL93VsMmMA3Ok0WAhcnNZlZSyHkY4g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IB3cxG2O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IB3cxG2O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD57C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747045193;
	bh=j/siHKn73u6AckjOzVvWk2LiPtDDUluimG5uL+J0jSI=;
	h=To:Subject:From:Date:From;
	b=IB3cxG2OjVX9Wovyy3JQ0lOB8Sw94ZCRyt1vRLdB4wJLonVrRwcIi65jIRt/tebNv
	 5RhFygEu7JCpqc261sMmdONN7+JDdm7LNM1QpIj5MnqGtptEwBUFn33J5YwZ6Q1G1q
	 TWj9csmm45LBlkH9iX+W2/g6wtEm5qqJfhZX3Uk6NFTlvvxbDcYVoPCzv//X5iZweH
	 UiKHNfqFLDqHyqvSBl+alIAFNtNo0zYgABwDGPhPR0PZ/c7FtHjnE7RVHRsrfYbOT+
	 xtgwXQ5sSbTBf3gjY568QFO0VNXH2LZHC2C7tYQxTAlHjeQPZW2uDjf1jz3apluQFo
	 dJZ00bzQM8SXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F62BC3ABC3
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174704519357.372.13208851001347604266.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b201d5d0b159c7f37bde9b8a9c39f2b42a3477b946c583fe3c2b43b9f371524
Date: Mon, 12 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747045193
