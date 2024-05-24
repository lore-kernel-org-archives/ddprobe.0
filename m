Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5E6B855E73
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:13:24 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716545604; cv=none; b=GwKjQ9tc67jxe5gaonTiJQDO/yGfHOloIXWVEN3IAHXn37JtlToFYJEsX5eD9XCckKMXHCpEVOkEE3uNQyIQfwPYHkSf+xPREByACftxgZqHbwpQ1Ljm8zpydH3nP0ttLPHHZuoDdAqbzhJVnOWZXOSLz8K8neUn7os8m3qiqjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716545604; c=relaxed/simple;
	bh=asOfG1tGfSSF7UOlYNczdWjyBzMkVYDX/yVwnWen6PM=;
	h=To:Subject:From:Message-Id:Date; b=rEjGlsqJNfZyAnzEguGWMmWOmfB6E/z1+kR1oBcCYURZomuGzqy6jaXg9R4nZwQamJxJq02nMzo+yZnGZ7NNgtszb5OwTD9CpmouQZp26D1d3NMWieTh7ZEcWmxwIBK5gM9HeJmbwGtA6QgyWNY6gJJEiVEt7E4sIxHJ/cKLG7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qB/BmOoc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qB/BmOoc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E75C2C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716545603;
	bh=asOfG1tGfSSF7UOlYNczdWjyBzMkVYDX/yVwnWen6PM=;
	h=To:Subject:From:Date:From;
	b=qB/BmOoclegwvCJidDX8il0J4bUk6bJxJzYbIjhuDhEUDeVvwm74+UFhAZiBRlUym
	 Lgd8gwou/GtIlHsYfNmT1YkHsvNQxYbRNeiWFhOCeCI6g+XkO1rEulhim6YzqxhvF6
	 NS0ArHr66i/CSB+9o1snOFDekqyPTfoonoVYEPrik6lWZw6Naxa/PyCA69i6YXJ70c
	 VqLYolSliVvYpzYnvCObXEYWVQf9D+LSXz5ClgOMyhE9hidR6c3PIruiHRmFPggaqV
	 FXZeogKlsJx4Lr9RgSPWPpXNiCRs8RRXntYpzF1+urFpjGCRh2ocub8sB2+mFYIMyP
	 0idgLUAiZfgFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D0B5DC25B74
	for <ddprobe@lists.linux.dev>; Fri, 24 May 2024 10:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171654560284.1172.4446991694102734650.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 90e6f582d7ce2dacd165e97938e4c46c0d90260fb8a4708e260546448cdea161
Date: Fri, 24 May 2024 10:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716545602
