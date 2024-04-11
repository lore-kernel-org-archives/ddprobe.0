Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 549CF4E1D5
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712879963; cv=none; b=l8ykWCjTl0Cz1RhpbBYubirTH5EXDZTmveEMK77pTZg399T9XIsDXmijagIxSojT7D4Qq6Nxdli5nXPGuBiZwwPyAlaJEX76aKlFUeqv21/m8NKxaGYvlaten6Yt1vDdqD8rI+fj8SuVh10Vbmnxs44gmnn+/169qoMeZqKxKEU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712879963; c=relaxed/simple;
	bh=OhWIVX5e3ZAZhRv9GxV51wASxF/HaUg2XJsZkkRUVl8=;
	h=To:Subject:From:Message-Id:Date; b=VPncNmseXuz4K9OGeJUTRgn8I5ZgawqryN2umWQeTIifl1eKOJhWxSe7WhrycURLtfbLdqZoUKt09zuYEkPLU4wacPOcPhMnu6v8M1WgXI/I7o3QCy+kgdpv11nQ3UpYDGeVlM4DXOmNW2Okw7ohNM0eWHFNh0GBkA13+lnV1kA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c63Yfu/K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c63Yfu/K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E080DC113CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712879962;
	bh=OhWIVX5e3ZAZhRv9GxV51wASxF/HaUg2XJsZkkRUVl8=;
	h=To:Subject:From:Date:From;
	b=c63Yfu/KaEOoeRd7ruLdTO6uFHXHfGC5+eA48SS5R2zT1q1hmDViJzTlEW/Q6e8Hi
	 c6szI5UdVXkPg/zImj0cuiJtRmopjeQB+YUqYkqEK3wB5OJIQG9dNSDrI+B51Ug+QU
	 ZI2JVxspePP+eRFK0GbpbCGSd4unPsk/SR2Mk/EGLrSATFvPVFFy8mQthTkvexkJ2M
	 eWAcUWVd/C3X4vVHuxdF1lDzrnRUnEtmPh3Yq3zQb5GeyJ3ZQRqaEb0HS0oH1JOPRu
	 U6nR89cJv2CKldR5T+hu7fRatbtEL18n8lbT5BbfqgMWp376ce2vgQ6JjTaEGpnKpY
	 aXS8vas6QQtag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA760C001CC
	for <ddprobe@lists.linux.dev>; Thu, 11 Apr 2024 23:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171287996277.9034.11157829101335231687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73a987b94f01070e24a25394657e3299c0c7e1b10208f98455b00acfa90d781b
Date: Thu, 11 Apr 2024 23:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712879962
