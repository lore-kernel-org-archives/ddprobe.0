Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C30C1472F63
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787318434; cv=none; b=Yd0eh9CeV5lcePfYgSQLB37AXXuoItgYHpZ8sv4FEjHT3JdrwURlYLgonSuTRoO1k8qBlDKGJfAgnVRkJJEAqXjbNP6XLTH1+qR5baMdPjytzAgdFLSU/+6dge0aHtDo8Dk8X1rxM984NIi5xkQLoP+EdfXwg0aqPTVMpMqqVws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787318434; c=relaxed/simple;
	bh=pAmvexw6v7kThoscIaaQrqXOwlHiWmReGu8rLELjMy4=;
	h=To:Subject:From:Message-Id:Date; b=nq8f9bajIz1FoIPR7E9S0McBSLfxCEOoj1/mR/+IR8Fs/v2FBVSgiUTHTNU1EaXzQy4wtAyf2Hpdcyh7osUj9DzVooJHapOqYd6QiVF+msfiAQE/1KYdhNqfyTFIrlXFM+0OCnJ03N16Df2EjcJsGKT5+4Q/IGMYq22LVEkCH2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H4SROLwF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H4SROLwF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5D86C19425
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787318433;
	bh=pAmvexw6v7kThoscIaaQrqXOwlHiWmReGu8rLELjMy4=;
	h=To:Subject:From:Date:From;
	b=H4SROLwFK2VVCLXqOFbf2a3F1mM3IotMOy7uqSXQikYGK2QbPxc7v8x2tkejn0uqj
	 WoZdi6W50r+xoQS7MZovuxOEfJiIbikWs009lBhJqatLaG9ohOTdD1kmssQfEJG16F
	 Lx6wBE/d6fB0Kg8zeDDnLUYH5Lc6iBhKoc5sVgXn0F1f3nK2lIhEp6iMbTsf93o70R
	 zr1iWWkx0BEEenlPjGio+IBOJcZdoPSrVYI/D+T8Pk8xWw2iTEZXZPTbU2plWhIc2t
	 o8g4y/nDJjmAYB/H8VIxB9old5OKKoQI1uKJ/9xTciHDaIYANFD0zJI1FW2tTFE4rP
	 HwRBzeENO3VEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFD38C5DF89
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178731843370.4334.6482412614308639006.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c311f54b4f7273d70f15a0d0bace60d29e2289e7a61464e57d7012f95f0ff5b3
Date: Fri, 21 Aug 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787318433
