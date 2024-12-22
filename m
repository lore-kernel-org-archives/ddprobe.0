Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A9421345
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734885354; cv=none; b=fe5YD1J6rOZkSqTsAN69jOcp7pk/uCsrcxETw8eX1wkD3IQkU+IeOl/Ti62svhhA3bA30f+T28t+gzB5ADJT5niDb2EzgP0eclrz4vLmS3IfaMy+usQeIt67+kSmlbk4q37iS+x/E+WbuvtyDi9m0p2zXB0csdau9eyVJn3b404=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734885354; c=relaxed/simple;
	bh=khO3nKW0/qnx5sD1lnf7wNESADdcrVA/6m3W0h1jaxI=;
	h=To:Subject:From:Message-Id:Date; b=TwOT5vNEBaQzR99OSLvzieVuqaHf5IpnW7x0cEaaYZlYOO8l8sOgxfieMqqwfo3+DpwbqMT5Ps/kXfRJar5j8EMAQCqVeOvqkzmNDn/LvQ2ZGqa6HAgIz5PQuMgxUoispcOdT/VSSvdJ6aGbNXOYrFpdedlnesJiAqSegVyWFQw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iEqEb11a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iEqEb11a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF6DC4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734885353;
	bh=khO3nKW0/qnx5sD1lnf7wNESADdcrVA/6m3W0h1jaxI=;
	h=To:Subject:From:Date:From;
	b=iEqEb11aoDL5NDG8IU6dA29zasHzOeWopxOnN8LmP12QaoiPsgYavQGiATFlomBcC
	 DMOSFhhNUrJFcyXX7nfUR9uYWbo4M7aMzbv4FV/rNJL9e8SQ3OcVDRmBF2dV1Ui9gU
	 mxOC3vK6OXVVd3LcodWlBiJiv4g9ezCwRp8nbdy5F8I+iYY1UC2RwxtbfvpURVK1m3
	 XwTj7Xa5M6dAr6APKcQla9gwFdGFDsAUKxBUNseHAhZ3LFs0lF95p4pX0tzLGfQIDH
	 yevenOr0gSgE3lBv+AhpKFTd2SlQBVQn/39jKjHqmoRd3JdPy5bHXkLkyZG4ft23z6
	 6kSWdYbWRniuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9754DE77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173488535361.32324.11159721225729609776.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: be129cf0a956203da24ac3c37dd34c2d6207f7125f2f19d801e4ff28155ff735
Date: Sun, 22 Dec 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734885353
