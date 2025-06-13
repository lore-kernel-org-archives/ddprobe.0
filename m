Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DDE18B47D
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749824994; cv=none; b=Y00sJKOXS/W4+kWhzaCeBSTLpUinOWjiWT97o4KRE99HYC8hfTHcUTrQl7TpdtlnU61Wt+0j9ARQMGex4FIyp+kYvPC8VrNhc9SFeV4Mw6/pj7UbMSjMIXXmShAOr8H8aM6a4Ig4bHU0+v7mm+QBEunasJKBW2a3+dIEL84G0AU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749824994; c=relaxed/simple;
	bh=Dbh9cFF7u9ctZLI7TMJfvTDsRnq4afQNjnChZTBrlCo=;
	h=To:Subject:From:Message-Id:Date; b=qTkg7fMXtN60RZRh5OfRtD4OcEu/032exnokBmA6pverYCQHrBOSmoMZ9US0bdtZQqrT108S8SAx9IZugaU/xmlRlwpzlSc+NvbRfRbfV9jb4ue1bwhagaB9uPqqvkRTl8rM++Hb2iU9/BThksA2GqgED/LOEsIOM2taeD/LEmo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aNYP7Bli; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aNYP7Bli"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A35A2C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749824993;
	bh=Dbh9cFF7u9ctZLI7TMJfvTDsRnq4afQNjnChZTBrlCo=;
	h=To:Subject:From:Date:From;
	b=aNYP7BliprsbS0wN9xEg0f2hopywACtUrGeagH7EcrfNeKwZfiLorLoegQwF1M29C
	 O3me75FtpZ3/PXm1GyUcaRRAGCuCuvTaPoVLVQA189rrgW91cA2oMdT9v6fhGjyxoi
	 VXnmVtGLBlUyWkNaa4V/iJG7KUCaHyfFYYEP6QQaeFRcBzkIYw2qyO6AzZo9U6hUr2
	 pDx9dwS2yM50KwmYJtGbgUJyc0NatYq06i1OTGYiOo1nZwVebZRNV8T4ijXpXSA42b
	 KwC546BR6A7OOHEpcAK89a7fWZraJ03YXokbwYke4nPZ4oZV5uiML0hRtOsj+x44MK
	 hsCS9l91ryTyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92547C71148
	for <ddprobe@lists.linux.dev>; Fri, 13 Jun 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174982499359.26822.8645479890446393973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e7d71e142efc4153a8341836c1e32e077562c49ed89a21d6d9048635f51f28c
Date: Fri, 13 Jun 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749824993
