Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3732C274FD9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753723794; cv=none; b=BhopX95B4iABAN0VCUFWjfWwQDzcRhCaNsiqH4CJ+RJmlIqM1jGURe958fsT7pf1jMeeSgv4+A+qeVWQQtTcI6fL4y510xXv5cOunzEGm1fb9qHIyKAWTiNlC9VcPKfah2HJ5qvH7WfRGHgREjK7wmwzP52D3NdPq+qdJUw9kn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753723794; c=relaxed/simple;
	bh=02RXvC4vCnAYbRdGqW3ASj3fAQ9g7RCXHVSEEvNgQKs=;
	h=To:Subject:From:Message-Id:Date; b=b4ZdfipI0ptvfr5WSmSdHuowlCRI/up06nFMdRGhxevT6D0pJLYvZiaTaAnOAQZPAbii5fKE4dJlmbcILbxTmM6ZmURI2b8Bpanp89p7N4SXvPgx01cwt8mrm/6T07Y7G24fl53LXXeaLMRJI9o0LwlYO7a+UNxC5RVVU2HLL5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jc/k6n9a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jc/k6n9a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AADD7C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753723793;
	bh=02RXvC4vCnAYbRdGqW3ASj3fAQ9g7RCXHVSEEvNgQKs=;
	h=To:Subject:From:Date:From;
	b=jc/k6n9a5fsOqeFlWbFTcOdpLHvywC5bdfhoVwhH1hLPV0UzjVP/wZq2RL0YSUXj0
	 TXe2JNlGHvutE8k3Qwwwofy6kCHaj7EjCFRGPuSrCeuay7Et3DcDo98NwEKLaFSbws
	 U9MiiwrHrW/hJf2RuOt6qPfCEMU+QAfMt8AV/trOb4wT+7I+em2gkVqgOUWG0hkPj0
	 om1/yBFmGA3eO5J8FtD3AGRcLXcUx4EYTJGB4LBplFETX4hEMnRNiM3VA4iErhkFnB
	 GpVdq3ko/T+it8EPkU+ZzZCa2zIW3EteiKP1LZCKFW3D8TNfhQT3xls2opYsEMs3f1
	 pOjuXJy246SZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9863AC83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175372379358.3944.15696529742349848022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c6604e84d706a536d50b152e60ce243ee0e253197475437e5924db00326e70d
Date: Mon, 28 Jul 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753723793
