Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536C720DF7
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718983943; cv=none; b=Nkvrh0516FF7fCdJUqj3p/aMAb65TiizrN+4gy4XCrx3KGMjSsbv3HOt6iJ5Gj13/k7xB2cV9xipUCSlKPkHvXYV41T03fKbup2aErd7B4SncIYmhdZJ4fsrhoww89x/awnK2hd34Gc1ZdUy5pKwE7d2fO9IJqLneXpPcrOVyK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718983943; c=relaxed/simple;
	bh=U7uUTfs51FbMZ2f3b5xH//M10obdSqcWsdePJRikMHM=;
	h=To:Subject:From:Message-Id:Date; b=I2f3zlpzG1ombmRotOF7hMAjI8WEFPqA84AqtdbXhhce5DjoWawRf57qCjRYPrGRnXWfYR+aMnekkVa12ldRTqv/+DVkGZalZVLcrRVjN/6b9gRCmNTfn+LvQ6ICTzGrU0VhFP3FZztUX4dYtakPPK9JKclE0Pt/6volUFLb22M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h4Hr/Xn/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h4Hr/Xn/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E9ECEC4AF08
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718983942;
	bh=U7uUTfs51FbMZ2f3b5xH//M10obdSqcWsdePJRikMHM=;
	h=To:Subject:From:Date:From;
	b=h4Hr/Xn/uW6zsu6w4/D3an86yMOYkFo8AUc5rUgexeck3XHSea1W19RGG7Ep9nehp
	 Tcox0Zhfts+JTmF/IFVA20qOaPMvoRFjONAbtOfUNsLb3F5nIUw7bn9fRhfsNlHjue
	 7B/UyS5d5hY9l1esIEfZsSBXGS5yJC5kgUZcAmlNlnh5kDhR5H70Dl1V7LQEYZHnUg
	 v3ofq0NzznKhZfWGe42moXJiKVslgP5f8/aJ5dNjlrT7fgSk3VMI3Po62tbUXktmT4
	 nV/u0wpMcfBF6MLwyXA55VLZfPN+RGErI6Mp4vN2PisIf5LEoyUyzXjUpUV9ztdMhM
	 uXSSoFyHWbYlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CFA2DC27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 15:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171898394284.23127.1814401367193558053.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46a76f8deaba31d2513128ce2dd705917af97e2756c2c4ac2f92f7d70c5fdd8b
Date: Fri, 21 Jun 2024 15:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718983942
