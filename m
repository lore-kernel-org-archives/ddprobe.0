Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7AF6949620
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789801834; cv=none; b=HB0WtybXLP2UcGa6IpdNmUzpU/6y5ebHDp8iX2mxcWxFtpeV9Lhg6r+nkHpqPt86Mx2rgsKTbrkj5+XbGweBieflAUWdk+CM5uKGTF7d6GcgOFN+wZmd9rkrFgog6Iv9/2QC1B7I4e/X7W5rdziX6BVctlkGWK/Y9uWcnlPr7xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789801834; c=relaxed/simple;
	bh=ruTg3vT4nA0+FpdQ1xKtwQgaRyyRlyNqS2LefyLsiu8=;
	h=To:Subject:From:Message-Id:Date; b=d03UUpxXkFfTo9YtTkl3Q6XmcuNhaRzgl6K+af5muCKuIdkKK+2rBbRKdCCpw5xh1hhPTK8/00aQqLY2SCB1S7DEiT7HygKlhN+EuDiQASLRe+GqZKG3z8BXQjFssyT/iPV3MkrYG4Mt4L2H9hiOQiJxbhimNCKZALf7lNCS2BI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pmy19hx9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pmy19hx9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED146C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789801834;
	bh=ruTg3vT4nA0+FpdQ1xKtwQgaRyyRlyNqS2LefyLsiu8=;
	h=To:Subject:From:Date:From;
	b=pmy19hx9mcS8S8nqDmAxTbe50T9rfU/mEuJU6N1ZEOhMMjgO+DBFSZD52TpWYZVXO
	 RUjeqbuhuPGY52OtPgC33tX2Is/bc53qPTEAq70ndztNQwk9Ql1azVrnGaMSUa3Kru
	 IZtkOukV6U3ltbw23+GQ6vI23mNqyRHzLOdZ86phD80Dt+THQSe1PnkfgarpceF+YE
	 LzLauNhpvcZjTsD+ue7LPLE7MTKyahrUnSMF/n8WrR/U6/9KEmn/9POjYk70/onHLN
	 UmASyOaBEILHNlVf8rLFKGrQRkSg+L6Ccv7Sn707KoYhSJizNpXG9tuvXupZCWGiGK
	 8tLGWHL0zlQBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B21DBC982CC
	for <ddprobe@lists.linux.dev>; Sat, 19 Sep 2026 07:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178980183369.23944.14795981308250167043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e3c424a5e4726e4bebcb49454419d4ab64d4b6fbb7f57cceddcbf451e118f41
Date: Sat, 19 Sep 2026 07:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789801833
