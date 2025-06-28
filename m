Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E1B23C4EF
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751102994; cv=none; b=USyIA4XNGJ2mfBVIxs/a2uqe9h+DiQDFyw83Efe1ZJuprGhj1J9//4Hgs7l9XpFRlZnaUb6edmol+q3znZ5B13J3qLpzv9Ciopz9FnzEPuKJvT2nHsvO5ZMktsifKCTPX1Jax77hfyqdhFYI4wIQ1YlQpFajUrmhPH/gjI5pZBQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751102994; c=relaxed/simple;
	bh=L+PfCrubEgGPjVhLPuNNG1P5woR/uPQ7d3xFujJAx4Q=;
	h=To:Subject:From:Message-Id:Date; b=TqXk5TZd+RqeFL62EIK9Zw95LkAbHJTrgygpl6tFVA3CSnspRx4c2hk1FDZZg7f3h1xIDBC5gvkPcLewOISD0DAhSbAzq+CTlv5HVnqAwGrq70C5MSmR7jrIvkc4OOkll3uvV0L7GFHvtOw0XWtifcCLeu9KG2EfdgmO4yHZBMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=okOkFd5R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="okOkFd5R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E19C4CEEA
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751102993;
	bh=L+PfCrubEgGPjVhLPuNNG1P5woR/uPQ7d3xFujJAx4Q=;
	h=To:Subject:From:Date:From;
	b=okOkFd5R52FAXxdv1UltXp4KdROusWwXQlNwVqtY27UudU3wjhgTP08lgU7r8hH+D
	 Pz4xq1V2qLiCQHUgQqcYufid6x5br0kip3F9sRQuCsxuJ5W8jHTU9b1cZyvIOPWKGF
	 qDijjKyB/uw0Mg4Waaq9O3ydvvUaLwvN22mjDp+ZF7xUSxITi0rfjCWJi2QHbWtjm7
	 WIPgLj8K/r70Kj5IO4fuwKiIJqcFLNkMT/jXkXYy2O8pxjOcIe8Mw1ZlxBY9yZo0xw
	 D1dvshJXNqCNgBSU/Fe6ijCXDArlP+0btkljI8GrnnMiu5SWYDJhn7TCRsX/Z1s7lk
	 7MVPnXW8OmSZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFC0C7EE32
	for <ddprobe@lists.linux.dev>; Sat, 28 Jun 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175110299357.19527.1526507244230345093.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b4e463ca08b3b2e77e0fa37759f1c5aa9b84a2d1c75a717716e94cf852dcfe9
Date: Sat, 28 Jun 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751102993
