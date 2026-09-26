Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5153EEADC
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790442034; cv=none; b=DYEfjH1lpV6e8aKfRElu2T87lkJOyfYItLeT0r9gjUmcWfBQd68NeZ194n5IFq1hxVxzHSpTKqVnnWVf9n1J4/Wzouh4VEnFHGx/2HlKEjoZbdu3ZLl+chfTAbtXYxjXyrPtbg3g3ISNLpj3ybQAEzJtrZaf3PHDO19E2MRXWzI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790442034; c=relaxed/simple;
	bh=P17E+tDQ5inX0NQ8fa0ezLXqWmxWk3sjz9cUYUak//8=;
	h=To:Subject:From:Message-Id:Date; b=hEptjsjPn+rwP2loxhzO0V7YQzkZ1lvdaCMijWjbHh5lZ6EkR2Umy76ccSCZV/xsUGfO3R5pld79iIimLabRw6JG4p8v41iUnHbVPVX0Ff9X1WcvQmrw2zrNefdG/Y45GkFlCvNxkFhl1OEz9o6+O7iSOEb0f0coykn0c6dxVsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CbSu4uvD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CbSu4uvD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BC7C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790442033;
	bh=P17E+tDQ5inX0NQ8fa0ezLXqWmxWk3sjz9cUYUak//8=;
	h=To:Subject:From:Date:From;
	b=CbSu4uvDKqEp/yuUCuYj7k3tDgXIjs4Eyy3pNpvU/mMZxbYXc6rAqoWLElTGGFTI5
	 omG12dNvlA/D3s3OYan9vaNvlqRAr9QdbGXuCW1V07A4pHINKc1SF3LLg/hH8MSo3w
	 msVuUNEp7U/5o8xBF9wXo8Vc68MAGB2F4i+kNVbEo+R2XBeqU7kDZrf7V0TDuQBtMB
	 iiVgYGwA8E1M2fDMPtkeWSTn23Slb1xfptKPhTJfT3xO/94kZsaSX0di1G9knG7fYa
	 oCCWiu0tDu4SK0P+6OAEtC6NTK7Wa4AD/QLCHTYGRUum132e66nr0egSVUUjEa1r8a
	 yaftxp7trO6gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE051C9832F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179044203369.25593.15325307581594765919.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4258f6755cc2f85073d62e1b5d3b75a7957f5810f8a2eccd98da5437a0b02251
Date: Sat, 26 Sep 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790442033
