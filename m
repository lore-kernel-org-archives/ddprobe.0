Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 202F4235044
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760275794; cv=none; b=uFXk3UB9i0+odfdSNgeFKB1YR1zka+EeNEN2FYX1cQ69ahhkalwQEjSly1h0ZMBZR1z5CLbbBpZe6ddbklDsHcIVi75/VSHXtlP1z2jAJA/RDXRS0h/SXkKcgUXjIH9iYFcTvmjKqFjFgVqIlz61LIrjL6aToqGEhPguZZrUd+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760275794; c=relaxed/simple;
	bh=BbsIV9I73c+z3cRGje9LiQJmz8K+hWJD2jmT+O66MSs=;
	h=To:Subject:From:Message-Id:Date; b=ZqGWIk8+ZTgvKHoa+Z2igXALrzStvspj6+RVRmm3Tn5gCAFGj+X94W6fl3BmCqUXIfakPs3eXvIOAR+lKLQ8qiJdkVpH2rzTXg0wvKk1ch7gnjyntzhqZpoZ+iICVpnzZYaG1YU9Yg91yBUp3cSAr7ta/B8dZkD8/T99LLh92Zc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z+XOqPh/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z+XOqPh/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A479DC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760275793;
	bh=BbsIV9I73c+z3cRGje9LiQJmz8K+hWJD2jmT+O66MSs=;
	h=To:Subject:From:Date:From;
	b=Z+XOqPh/f2tbW1k68+ZpjERaVp/1Im7Vl720iOQVxMVzgNLScZ52DNe+36YpdgYIn
	 O7zDtbnEyQi3pGc6ELSLMaeAeOwuJCd6bpWenCRAEa84Ze9rla7rCY3GJS9N76Fcrk
	 1C48KmdVKKXrtx7nWoO1Lg5ar53AI2JkGy7eL7yDWJwG9oXK8NrH4yaldZSRzSpMGi
	 BLAPtIagSZd0+CGOoNbIVQidVGkQE9p5MUfdhLsMV3pqoHWVyPSpkcN8WfiYnU8lUa
	 zoPJP/NgpbZj5F7jQoLUNvv+lGT2IDQ00Banf8mfFMCPZBmprvQmsC9rbvGCw5p/9g
	 PkCJC//cDUcLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93257CCD184
	for <ddprobe@lists.linux.dev>; Sun, 12 Oct 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176027579357.9693.8207034988626566892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e75c7395a73ba13ef2d8b136c6a8b56373deb57829d746f6c79e9f738e71102
Date: Sun, 12 Oct 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760275793
