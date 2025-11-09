Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26795DF59
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762716594; cv=none; b=Icx/ik+Sd6JPBc3fpK8DC0Mb2FFf0J6yCx1JzLfS/pY7tPk9FoLzgwi4jmsVzcYvBTYnG/zw0Txc42Hh+4Qirk0S5fzZ/+f8BrgqnM204rNEubKz/KhylLmb9RsVpVYwxD7QSdky+wAt+eLm3M9VZ1Q15IqvOEAWx4gkNLnObUU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762716594; c=relaxed/simple;
	bh=0bucUoZe1rpwQNRHdKnfgsFuj4TJa4ciotlw1kka5Ao=;
	h=To:Subject:From:Message-Id:Date; b=cCjLb9Jqx3nbBIlIP289wShGwBAJvfKhzSqaJ/dezbXTywtyQeUDX0muK4Vt2q5aBUsndkUmhgFtMiYimnF9R+QGEmUUXVOGCFSYLKb0X/3kKoHy2OoPj44LB3LLbtxh3OaACyDMw1KbDdEmXHamJMppYMQr+yBxyMtmGkPyXi4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyE9f2Q1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyE9f2Q1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4E9AC4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762716593;
	bh=0bucUoZe1rpwQNRHdKnfgsFuj4TJa4ciotlw1kka5Ao=;
	h=To:Subject:From:Date:From;
	b=VyE9f2Q1Awf1islTClr8V7xf46Qp1ZPLvbGkkWD9u+8JklVsOFn9auliivWOOAbXs
	 m/gbwuQqoWHGhQRhrGYuS9+gOImfuocWZ08iXmezKuj5rSEStVFx1q/e1QG2SjWvaf
	 Zz3Z4DzbyU8A9AIwfOAC4JM1B7mNh16udTnSJ3UrkFQqWKG896LK6gdS/zS1/UYbdI
	 uq76+oh2m8ZHS8RQyWddg2fx8Vp+d5qFgUE7iFOOWSZpH3LfVM1o3fP2xh36D34CJ/
	 5W4vnbCvYraij/JXJlo9XfYw4sLPGGjYQNwJ2dhKwTKKQfQDemOvdOmSzWpScNOgmt
	 7YpTjF5McnJWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96908CCF9F8
	for <ddprobe@lists.linux.dev>; Sun,  9 Nov 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176271659358.24199.6415550108905655220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32b4adc941753f5055c7ea299c438060256c1005a97eae2e412b981eb7fe6c34
Date: Sun, 09 Nov 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762716593
