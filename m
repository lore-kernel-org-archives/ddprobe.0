Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5026715AF6
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733631954; cv=none; b=JiakwWCfRSivch86YTyjLtgunt378P2wWQZKuTqqIgDQnNmrG+d2BfSccGD2vxNKS8qcAvYmLU0ohGA8u3smG7ibdhJFU9b6iCfa4ai+ei1yzVlReYokCPKiGvuu7mqA20f/aQWip+C3tqCoTaxDCi06BtYVHBuTFPLuQfKO2MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733631954; c=relaxed/simple;
	bh=+neOlYbOTbRhCYZ6LYTuIILaoDQXCG+jzRX+AyaVrPQ=;
	h=To:Subject:From:Message-Id:Date; b=nwR7BRHIL7xRuQUy72TPrIunVnMS/T0sZfaK3HO5fYhbbov85xKKrx65uY65xNloJsW/HxFEYbJ1GOzxbWTx4qo8CXGVFu5Ui4i6dLGgbnOxXG1wK4E2usr1eKXjLtvfIVcWh9c+VXCCbgx1E6Z1GcczPlLmVhHraWLnDa8jKh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIGIgu7p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIGIgu7p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2520C4CED2
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733631953;
	bh=+neOlYbOTbRhCYZ6LYTuIILaoDQXCG+jzRX+AyaVrPQ=;
	h=To:Subject:From:Date:From;
	b=UIGIgu7pKJ2QUinwjMMaivagcQFL4AwY4ylInzBQi7dTDKrGb4XfDqQwDkBBppk8O
	 lo7iQ8oVVSAGZWopaAaw/u9oP+xc21DvT6GCgL0jDAK9UhT6is8oy3C8aoiOwBj0F1
	 gUsyAuyK2/ouQ0AyXTatpO+R9wt3Ss1h0vPDGpAHKTxkKReo1HOCLtTmT8e3BX90vM
	 wbOh4M+JvNCPjshyHHgELNLoTDdFX3hNiILDvf4tMbfSnVMZjNpvfFMv1qV4rUdmkt
	 hiMSUjz/sfCy1AcrouOOVptqZCVkJIe2ioPHaSp5tf8FEr/MEFcdvSbATb1xpSs7n9
	 4FFVphmEWjB7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929CEE7717F
	for <ddprobe@lists.linux.dev>; Sun,  8 Dec 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173363195359.16341.14685315893736032501.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77753bb74c5f753ec16dba44bb07798a05ac75bdf117052e8e09118cc9831319
Date: Sun, 08 Dec 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733631953
