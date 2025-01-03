Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB5B1F9F77
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735906554; cv=none; b=BDXj8UDkB0zG6cuhc91hfPJqGRYX7OVWFWAU+nbnB867MhEUF3VcjtS9CbFfo76g7gfMrsUPu5pdfO0ON84rrZfgoURtHwEdVf6A2gG+UUjif1zhfpiha0v/rJKaItqsbs4xFWoRZO0n+jqFpjvfJ6bYIyOU2QamdqkirwlFRbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735906554; c=relaxed/simple;
	bh=KoHt3Er3X5GCoHIZQetCmUVaUrKL/WqSAT1Dhjz6DuY=;
	h=To:Subject:From:Message-Id:Date; b=PsOG+De5XlE3O0DbREe3dAExVUfeUXD/dE3PaVf73dGi9WbWz9SXyLWzIXH0oo9XJk/BgB5s4NdVe7gEx7UF5yddDk9XK/Sr4iDG1R2DjaJrO4H2gG1jy933AztTTeyTdJX9Xm0VyWm3drNI6yli1Cyg27bcjOcRpiJxcZm7+Ug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hnRBTFRB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hnRBTFRB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A904CC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735906553;
	bh=KoHt3Er3X5GCoHIZQetCmUVaUrKL/WqSAT1Dhjz6DuY=;
	h=To:Subject:From:Date:From;
	b=hnRBTFRB9xBb4GZrOnDRkB2P+HN+lGDgoo0frVf4g7HIzIjp6PnqhLwmjtrgAS4GE
	 KShJq6Qs9yQMOSrvhdjNqAqAv2sRk+7dIeN8tGhge/On3KYexdLdSRyvtHLF3VaFGe
	 8z9QPlHuChCzT/ux4625Kcd4tGb6imOO4vBeOaYgcnu4UQEZAZ6amjclpimqSyHV0i
	 95ENrcAsD/MjN3GTqx0nKdAPR41Aakipr3IsMGe3QHFC9Zqw4cZjbshR+WZS5MlSrm
	 XH7ObFQUplWfzWzMcJcjGCuLuELToHdfq3ocJbW8/8QjRQ9R4sCjQm6PPe15NMXOyH
	 Bs+WFS+In3SjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900DBE77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173590655358.2292.7995382806156576387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f8f35ef639254454b2d268aa07034785e6f8fe356abe56317f9eae3d05b4356
Date: Fri, 03 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735906553
