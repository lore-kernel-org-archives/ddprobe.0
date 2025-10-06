Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A4234BA4B
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759724394; cv=none; b=P6nQTPPPozrQSWOlYlFmKc4AqM78wtBFFIWtz2u6bP2RKlMk3+KU1ozpChPR6zluThOm0F8145TBoXXpN22S0dx+ayilfM2lmL9kedTITH7/1+OfAn86CXg+PMwZ0Hc44muxIiFM8wHWmjLOV7X8g56cnfoWbXd7r6Rh9LQPHjg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759724394; c=relaxed/simple;
	bh=nG7jwKSlr7jligTbiLcL/J4MF54zcIJ7KFfmzk7NNyM=;
	h=To:Subject:From:Message-Id:Date; b=F/9Taxf2eA+BYba3aeFXsgu7JtimdgVCPpyrVX886B4tPoo0a9YPk2USOvnB7GulgaF1HM3I6dUuacJbZkLNLKLgQ9CxaSD9CC4PMWXjLHlaoQUv2ep4NZFLa6F/+n1MGlqhTlQWRrdYvksWciIU0oIiWnzEVa0Q+gKmWNY+Vi8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oach7vAJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oach7vAJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AED1DC4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759724393;
	bh=nG7jwKSlr7jligTbiLcL/J4MF54zcIJ7KFfmzk7NNyM=;
	h=To:Subject:From:Date:From;
	b=oach7vAJGV6uz/rbWmqeypshM6crYIRxTS6AuP+pZax4wYDvQJC7PrzIlpKZupk2W
	 tOWYAwxkfwTutNmw3V91TAPftHX9lkaEFlCZOF1k8S+Td/Y6Hhw94CDJxN1ZBmAKfx
	 F9vjM27nbw52SmkatYdtmY9RJPk5lgXcH0mJg1laVscUjoJfmWnF79dtAjeCYhWk4C
	 ZolLDXsdtW0ujDXrRXxb7N4+3y3k7ruwhyHIhfcg2rOO6O//xmGM5bsBdWbvCiDVZQ
	 v0bwWSd0UluZSSt7ANr8B4WkziX1nap24fzRWxbpKBhKk6ghqQ1mxdATR83sFph7D6
	 Lx9TV6ecvz6tA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BF5BCCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175972439359.7892.10483359207268999851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 907680370f42d804c74033383cd7d194e3e5eb9d53b6e08e5e3269b892f518dc
Date: Mon, 06 Oct 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759724393
