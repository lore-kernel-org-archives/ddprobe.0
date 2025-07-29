Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5452179EA
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753755594; cv=none; b=UsfelusAct20PMZoU9WKoRLro6uCLDQt30g3q5ni4x9lQz9z13RmIQZx5xiRTlwOKKlV3HI+8AdkGx5KOFU0X7zF9PHRPpsYnb5pOgwoYAMNJuGeVEQz4N2q+QBtuLQBP8ardjUW/2K2rLryLeIQUl2rn/+d6s+aLNrBk+FjZQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753755594; c=relaxed/simple;
	bh=n3OWFoXkO9f9oGCqEubjGbHqlvT9Cl8+n2m9Rm1Bep8=;
	h=To:Subject:From:Message-Id:Date; b=j4a5eUN7yosZtDZ0AlLFW3l2m9nbNOEstVkxs5FRT6kSZMysyvyiIC/cIB9vb4I2K70Pn5pkVfI4GahWqBuSjSIn62jZaDpXCIR6G5yyXfMuHGxW90CQb0oI13MMLOPbVRtSzKOtIAv354HgXedHcGltYHbHEvXasTUHIlzSamI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnAOpKU1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnAOpKU1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3D48C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753755593;
	bh=n3OWFoXkO9f9oGCqEubjGbHqlvT9Cl8+n2m9Rm1Bep8=;
	h=To:Subject:From:Date:From;
	b=cnAOpKU1ad1unBTKqWkzgrv7bGCl5AIRaxX7I7rAzEXaFQyb6ii+kich6MAffyzEc
	 6Zz1CjIYqEKnPucLr7tM4vqD4PYpjtuNwaYSdU7DUFD/CDSEq8+jZTMGM1rZ8wZLkI
	 C+W9p1TsJJcqc6kNijYlAkLChduWZrucbpFod9Vm9pbE0ldCo0oiZ9duIFLMcpFfzV
	 0+qVzfd5tNws3All4AHVHWKuylSijik1SHHk+Y3nsvTDNLia5dXVK5K2g/BAcfJX2l
	 EL83x5/P/f1CERCzf9E9154+MeBe0hUwOoOb01NHS6nH6Wr93SYTOyxiZLud3/h+W/
	 BoK25/mQobtDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C5FC83F17
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175375559358.2147.8286419286247014451.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cfb8ffd74e5cb600f5c4a1d66a5485f5911f8d9a94d7ec1c7dd024cc1149bb2
Date: Tue, 29 Jul 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753755593
