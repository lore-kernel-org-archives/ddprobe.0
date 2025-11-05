Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05D60287247
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762368594; cv=none; b=pfgBhXcext/VSxzg1LTpDYvIIiAC+ei9ji2HaFhM2G2ySRPxQZ44sPTEN7dtnBHKzOZBRrrDWE99FSrxCK/JHYjO2Ks4ARLWK5obLRnlHM3YmN5Mrh6oLl53vbIvsgrOed+aCuR3+WuNAzBjaCPaO0BYvbYhpmf2eGT9Q2gDeNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762368594; c=relaxed/simple;
	bh=YYKlXbDoixSxERGI2VkrzDyM/6vZVuN7x48pYJ6C4qM=;
	h=To:Subject:From:Message-Id:Date; b=W9WzBPRACDIcFPbq8/XSZxz6tWVu9qbIHdOalX52/n6RKO+nHcNqevgad+swSvhpj6LiAJEwdIL7Q/WutE1WWGv+CoQAA1IuczJWG7wpuTTlDOYIcpQZ1zL1LUbiq99gaHmJ7EJZUGdQ/twG0Bw4kDR4Le1bsrzzrJvwky7Whew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3heMNqx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3heMNqx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB1EC4CEF5
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762368593;
	bh=YYKlXbDoixSxERGI2VkrzDyM/6vZVuN7x48pYJ6C4qM=;
	h=To:Subject:From:Date:From;
	b=L3heMNqxfHn3CWq5VbxwQjegHAb7s6+of8wbFcacSEBzcPkg7okESZW/UwzpIuVZu
	 3ve+Y+8BTPfdD9kZcv7CRGXLkvrk2nv7M9+38XkKCUTZcIcVtD71SQDpxMNNlRx8XL
	 RLut/SMnnjVQthGJQMCEzLcX6wvlqwk6Y+oN5/iuhUdXQH3B3e6ndD9w8+vw0SVOs/
	 pSqVuEWaQK5t08RVzOTAi+bP3MBgNiP7bBiNXKWlV+O8CHJ4FJdUQdcAo6yo2xlDLb
	 yheFfGPYBTV3xjFMRcXTn9RX9aqf23F0h3RvQROv6B4yxxGe4QCgDzVCoPQ9Boh9IQ
	 5FlZEJjPuYAxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F898CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176236859358.6768.4827815927596380452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f7bb6121eca53d1f3d8a1ed50578602b282f0ea66e22da78755944fc17786ce8
Date: Wed, 05 Nov 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762368593
