Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B9818A956
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763679714; cv=none; b=gGqFeG2GkrSu6dWOi808T+AW2S31/PzjzoR0nYMZG5ET0oZprvWaoeFcKHCpzq1/gZ7UD14FlphrH+jsQvc7InZyWFMDqATfzarV1AQIlr5neF8YYoBtrjXFk7UR7Y+lUt4ciwAt3f0BOKBEsCqFS/PPPZ/AG4A4mGDUjs/1ZRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763679714; c=relaxed/simple;
	bh=VPDvXMYb8Nv6RxKiydDRrXU93iWzq0aiE6fF+kviJ+s=;
	h=To:Subject:From:Message-Id:Date; b=KVQ33kBf6VgyBusi8TNRjygsKY3WRF6X7v92vuyPWn0e/GkYHDmFggNqIct1e1p5s2uEq79MSejVl2vyDqK6WOLk7ylbPuKQ5b/hLdQ2O8J6hiTMMjeqlA0LNO/OiZ04xwEwLyKphJCRRjb/d3HO7vgsqQ9tvuVx9lQP56IyZ0I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U9jdc2Q5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U9jdc2Q5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B16E2C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763679713;
	bh=VPDvXMYb8Nv6RxKiydDRrXU93iWzq0aiE6fF+kviJ+s=;
	h=To:Subject:From:Date:From;
	b=U9jdc2Q55lEtnoIvE+Bx4b+yUvNgmUQ0vfJ+i1JbdxLCjYjkecSU62HxxC4gwx/Y0
	 Scwxa6t1QW/+8yIUTCCyE8bscA+m5of3ZRr58rr5fh+TV66Rsjo5yyQRk8raIN88Bn
	 /+p9oI+4sCisLLPq61IdWs7/k+CikEBSAEtaAr3niED9BnlOGxBPJfp7cna3LfkB2l
	 t2jwPfhB0aq+ykja9NeKWM+Wzsei3XmaXwAURrYx50uW1bXdRWrL2eUnsqNGEU67X6
	 dU9Ry8rnFO+0SVbNgT9NyHX0iaZYUUYAelqzS1ftxPkZsqhMqz/a24zkav4pmkXDJg
	 msb0Bm+24gx0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 990E0CFA452
	for <ddprobe@lists.linux.dev>; Thu, 20 Nov 2025 23:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176367971359.29760.15342680385333012948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e191bdd5de27a458a02af4a665f2b167ba38ee6ef56bfe1effbf3696d9ee5423
Date: Thu, 20 Nov 2025 23:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763679713
