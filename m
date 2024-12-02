Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50FE21DD88D
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733168754; cv=none; b=JuUjVhuq7Mvtgfo6BAADdU0JZ5cfLekl+m94PAvqEwG19PKWfLsjhGbQev3DddumoNq+7EV3fuY1Ge1Ts/MDTCTiJ2dAgE8wADSizjwzCblzysFquf4IWYe3xS/N1w3hjYkfGYt0BH4Jxz5yxUz7GU12Y1m7ZsP4U6BXxOT/Qck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733168754; c=relaxed/simple;
	bh=aQqPzRqWrdLwoQ5JV8Ob9bkpzlGSxY+mx/eOAyE+WDI=;
	h=To:Subject:From:Message-Id:Date; b=CmQqgE6KY2b8i5xWOPDvLiiZAoeoFiMGQLYrQmh1Zr2VEYm2DGcLDVFI5OS6tBPxyaNKUqC02xYPbt0p/NYPtwhlEHSJaWx9hCWTZJOJMG9ju1J1j3OsIFouEMCotznLh/Nm/DXtDHP3G9dzjP8eIkOrKlD3vWjZXWwznBoXFUg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HDg9cdn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HDg9cdn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEDAEC4CED6
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733168753;
	bh=aQqPzRqWrdLwoQ5JV8Ob9bkpzlGSxY+mx/eOAyE+WDI=;
	h=To:Subject:From:Date:From;
	b=HDg9cdn7r9Szgn+4y5qMCr27WtWqnECWBYenHfbSDQ3I8dGKfhy7wKXTK+tX5p+rE
	 DvVLxeWLSsRbBAa+lVn1O70ibOJAC8i098puSQWJq7gFJrmEeihpi0ECbzrmpOemVp
	 c3uKPjRKWJ7+cU00hvSd9bvCLYZyk7+M6nulj4j8rZVolExecZ90zjs+XUhYtsdi7w
	 XHvXQ0WCAGTnzXLIyEimjv7GAGAMnr7QiEBp28w9A17Pa2xfOnD2SlfINlSYKboCvi
	 AWDqH7NUSj/JQrlwkA1OTLtlrswnz3AwUEKK/nzj9/o5kW4Lzch+8c6HRPsPk8xwi5
	 i3Ri+vPyvDzzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2A18E69E86
	for <ddprobe@lists.linux.dev>; Mon,  2 Dec 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173316875365.31400.3543426332137320710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c6a3e8c4ed857ffd953b3d9b9f5c3c1bbb4ab9f7281b3029532dc4d2ec6a709
Date: Mon, 02 Dec 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733168753
