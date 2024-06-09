Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 87279481AA
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717973243; cv=none; b=uQYhee0RSdzTrNOY8CvlePk4tLwQcPwgmOG3uh1H3guNKBdrsKZZXk8Nc874mUrQd9B/3lpN81RhrmglAH0pkm8VO73tBVd+fc704gbNDtkTHz7Rk0pQNA25uYroAuIABbwMzvUcy5oztn6D3bi+hBFzx0pZWHko+NznnbuWNXE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717973243; c=relaxed/simple;
	bh=uMSvCZ99Qn+6iGa5UhrKGYiZHw7wtupK06fWhHjUQmo=;
	h=To:Subject:From:Message-Id:Date; b=sj3366UkkkxTZ/XqtO4Wb8p+lYywIiScLjfY7VT/6D32KpMcjNVjpXq4o/cm3bfNLI+q6I+6ydjYt4nHEpJd0uWWndgya0+YInlAzbPzCNe/KltHutL0+jvQM6Pto3h92E8UWAbLjQnZAImWgDuu4rB+wGa6Xt0ntZ076muo/HU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NicJH5dd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NicJH5dd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDCA4C2BD10
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717973242;
	bh=uMSvCZ99Qn+6iGa5UhrKGYiZHw7wtupK06fWhHjUQmo=;
	h=To:Subject:From:Date:From;
	b=NicJH5ddx6FEotNkTy7o+xYw86FPavYYNQvzlrY6KV8Y+FjmYHSucik93csRt5yQO
	 Kgv3lyw/9WKg58x4fp7GTmL6OAy2RRKWByrTbcUEYp1Rp4EG4CGTU+jrNBEbfigMXZ
	 DCzHes77PvafXrMrLVc85LP0WPP+lJCRn6RI6X9weLND6iBUavnMRvuNIL+DbfMmBw
	 X4HZZteOt2o4jpChetTovWk2QlZeE9R/uU5/DPA98oU/S7xa5ES77YoAw/OwxxnCX7
	 1Mvaq7GAP1iUcQ6Mzj4KDPa7VYv86mxWZINrMKC4U6mKAU4RwTVoV4zvIAiZpNY3nT
	 s5noDmjaUsfZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C606EC27C53
	for <ddprobe@lists.linux.dev>; Sun,  9 Jun 2024 22:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171797324278.12736.6829683063573367367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e999bda9a975c2bcffab0443a69f596ab9cd9f0d9a834d6976cd0b6e2b96b65a
Date: Sun, 09 Jun 2024 22:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717973242
