Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30E603C0C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753129195; cv=none; b=cA0aW3GstdKpeSRs+Nlb54izWDBxCHm6J7jCdDWspT8GQD73cPdyK3nQamDts8w33tUbYf+dC5K5hQ716ogeC7Df5OTcT8yILhnGPUNnTpldag5xc36ItvKs9OdXD0DARquMfJsBKXFDfHK6+t+2IBD7X3nx/XekD6MeP2F/V98=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753129195; c=relaxed/simple;
	bh=50eFN2PlrgKb40D14KqrDN0+W/TOWbWw6Mo6Tirxwc8=;
	h=To:Subject:From:Message-Id:Date; b=W9YgPfYqPSkoCM0vDmRw/tL0Pz8sprK3WmC1feVPxmz4BJ4IlXZkpK2v1Z1CFCBAf1dZDFggTGnIvYJQht1sDBun6UxmK6OSd/GyI99/3vprbkDhzDUtNeePp0IR3EPaAZ475cneDa148kLjkW/s+6j7ijt7NLM4xcuBIwVeDqc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h387p6Nr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h387p6Nr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2ABDC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753129193;
	bh=50eFN2PlrgKb40D14KqrDN0+W/TOWbWw6Mo6Tirxwc8=;
	h=To:Subject:From:Date:From;
	b=h387p6Nr7MsxiR1VtICy1jqwUqkH8AqorpdmWGtffCWDALOLOwKWcK339IJ5QbLXk
	 ZIUXQJqf7opG7PJ2MdOXwZDl2NnCJdUJen+jQrZefEH0s3EA4yCo4MmsdgN5W64eyo
	 5/MMqEpNzMzvvk7NQgioRD7JOeSrIQK7A2ij56yjTOz4xpUyzI17wKxGzbOmQw2rGG
	 eIqeDW3UBinq5E/YZEpt+Hlx72cEL/Omg0VV3LcoTsZvcH5nBZd9ugb/WlJEpCnpVF
	 7WJ8SPs0g2kZ6Q3Bml6JhJKDcLwEm6HpqUV7ieZQ8bEk9ZYpaXMm0M3zu9CCrKzmeX
	 uMP7fByMK+FCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC35C83F1A
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175312919358.20398.932211301148611987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe9b7879cc437683d16edefbfb68322b5fa6781cb653a20d7976b8444c596f8
Date: Mon, 21 Jul 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753129193
