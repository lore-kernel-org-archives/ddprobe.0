Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67E5B2CA9
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716769463; cv=none; b=DkKMwiqmApcAdHR/s3WPSbYW0Uz1JkiodnBJp3tEvdGqy1mJkaNNY9MyFfQF//37jgaciAgGUozzCGJnZEmluv4JrCz1Yp/XppOpIe2+CZiGqL+hHqBhaOLRzkD9CFa2MqkXGaJt5yOmD/K6Btw256vuexW0qHz3QFwitPt5LUs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716769463; c=relaxed/simple;
	bh=Bgy7Re8jFcWs3Djfl55ZcJXSykSpDUcnhswtThdBCBc=;
	h=To:Subject:From:Message-Id:Date; b=EuJgHtzwdkKcPNaiqvP0vsvrAmRorzXh1xZ5aGWBmDyEEADkEAcOBpJ7dS6MRd0OQEkhl8qIEltLbEzssytIPHYytivBAxWmpswLvuZLTs5Rchs+DDFOw6nS7m4GSVh0vunrn0Doxw9csoASeQtZgjg3GyKN7wo/PEVNO0XPtKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFRY+1yC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFRY+1yC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0195AC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716769463;
	bh=Bgy7Re8jFcWs3Djfl55ZcJXSykSpDUcnhswtThdBCBc=;
	h=To:Subject:From:Date:From;
	b=kFRY+1yC39YvNWKKQAduljhxBYmOr+TkmaDFibuQxLyCmkwTrOMn89zPoPgOmxQxA
	 I6AITnG6wgIVKGHCLkpbq/BAUeZJZYlN5c78TMlb5PC7AmPfCSmqwnLSboRNUNKkNq
	 P8vbKXukasZfQYo/X0kR15XQN3epAJY9En+QilrNUx2xn+K3RU3u/hQCpqdi5dEHrx
	 QXGnwoX7C3UcdQxQxxUX4Gkli0hsQuKx1tltD7Zmp26vQ/9ja2DUE+tX41OwQNNB26
	 63XndGi5qAcDF6YjZJgkA5rBwwI4so9dNmYCb4e7xHkdWu7sl64UxR5Isbq/Ye/hfh
	 iO32X42HIguLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D5E8FC25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 00:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171676946284.31783.3699257399116510858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 743486102015741befe461068345c87bc2c7892e0dc48a81b9a987b952153d1b
Date: Mon, 27 May 2024 00:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716769462
