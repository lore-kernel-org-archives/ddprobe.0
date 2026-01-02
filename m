Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EE398217F53
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767393834; cv=none; b=LRpXgEzl//DhOBTJo90JrbteR6tLkilFSwrlhI7LYooI2zw8NIcHu6XQ/olNHY+MA0Ja7Z5SecApmuXW/4ypFtcESv8tXeVHhM62fVyLeRBxuh/nz8nKFimwZKVBskMVVmLTfipqASudvT+sxsZXsq4MKm+SpWMXuEsdrQUFMlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767393834; c=relaxed/simple;
	bh=PheDm8ooj/YNgOJJyVhOmtwZnisfARndaVJr47U9Owc=;
	h=To:Subject:From:Message-Id:Date; b=hzgWlzUmRVmGOq9ldXg1c7A+F9oXs8ZBcf5uG5xg51ZWI/AtAxl135ZPNDeNh8xwucNWjNZ8sN1mAoUM4vLYUen8vbHKZUI4cTyTzJ4t4XwNH8/TBrMdOuJTaW7a6MOpr9ucg7qAIxmU7vF+maboz9HacNt+lXrWdQS2NGHmp9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJ1vwsK/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJ1vwsK/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E7C8C116B1
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767393833;
	bh=PheDm8ooj/YNgOJJyVhOmtwZnisfARndaVJr47U9Owc=;
	h=To:Subject:From:Date:From;
	b=rJ1vwsK/+J3E+VTdpT1iktPSOio8mxZhzCoEJ1LNCoLqBrUCv8680oeeS3Z7voeFL
	 59TA5sEXQWwXIRBJO+8Qhb9uanbTAHpg55HsbiXK8NFqTOANvVtOZwoogZcwzwzBMZ
	 qCPrBup7E9pbAok2aunjUfysSsV2EdcKGYCR9yYJaMLL4xng5vA5tu3eRe6YzVc/V9
	 ahDpXhPN1melH5MLnqSfYQfFblppJMNd0Zk9lXT53vFkWQU7rPkWUM817c3AKBJloz
	 oSFqa6kex3zU184MIkuNqQItSQh79NT+EsJZzyOMZRQn2OSx1CIZU7kRh6MuxbTFp9
	 +iXfpzfkJbNNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD46FA3727
	for <ddprobe@lists.linux.dev>; Fri,  2 Jan 2026 22:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176739383358.1318.10689845811844270427.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0d8f057cab90844a65fe854b6cd45224f2286ae66815a63bc9499615645877c
Date: Fri, 02 Jan 2026 22:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767393833
