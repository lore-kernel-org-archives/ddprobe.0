Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0189F13C9A3
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:48:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718282903; cv=none; b=pyIB1hFyDcWvp/8v6Qjl4dZWxli2ZLBgGnL6qFA7ZlkZUC0uS8I4O54mCj8t39/mb7bFJhbAXlPpTMF5FxSuPkkHkHJznV9li/TNvxYcSixaaqqHjP5yHFFny+8ZPhXcebX5hRijIMQ2XdeHlGh1OfOJabkXPe85Sremk9UFYcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718282903; c=relaxed/simple;
	bh=TJH7cdKQsiqIIU6dqYF3B4Dpq06NfI/Ae8eupM8/Eio=;
	h=To:Subject:From:Message-Id:Date; b=L197aVhNQnVfhsezdRbyTqGiqAq2sbGvWrJDZBgNcqsJvxSFMn9AP0rIKv6ZkBZfyxvChlmWBgoTlDCWkiE1L+10PWssQXQtIt57JhmbtPuRWeNfE0NAaV6iSsONIhgpSzn8TAx6EVdxdugQePvDYX/CNhMsRK7Z9lzCHpmSaxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cpNktghr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cpNktghr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9CE6C32786
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718282902;
	bh=TJH7cdKQsiqIIU6dqYF3B4Dpq06NfI/Ae8eupM8/Eio=;
	h=To:Subject:From:Date:From;
	b=cpNktghrUVFUFWkfCM9mbCGaBJEWWtMI+TsNzg8pTVLZviDmCygWinJuVCi7jqlXV
	 3hMjAI2+J2xpJ9Y47VfwQ+FwfLpIgsGZHozVyKaKS5j6/AhtZKBo9NCBgWyVBF//Bx
	 4SjV3hdQewLgXBn1i2Cv7Kzj7pdIkzwSaMDwxhukpr2iYy3fw5p1OkhUPxCwAYi5p6
	 bYTS0zqViMsCV4gVut/u8iKqNqgaut30MhEzX1vqDI0E3teXhYrXZ3TAZLB5F/mcj5
	 drrq+BTiWeyMC0NogGAg/0QJb2WsPovEe3E1LcEiF+d36vft8HFlv4XCkgBuM7GGOy
	 OPC1mLn3dJ84A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C424FC27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 12:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171828290279.8252.2005810735537852130.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3587ece9cbd3078b781c7d050de74bd5483cf7aa92fcf23eda2127ef82a8fbdd
Date: Thu, 13 Jun 2024 12:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718282902
