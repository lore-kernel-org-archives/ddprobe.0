Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 341FE16BE17
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743581995; cv=none; b=HojsGsEJFtIVPK/3DLYDyCBFhg4x9bx4I2XJq830f050eooSlbOjhoFFrchlrpnDBuv4kjkJlEgTvw6t4TJCFs5ajxQgNx0jp4ydQFDx8MlCMtuKdyCBo7ChsU2ia+XUoBrJWlj2p1mdEEnSZvSDzWFmE8HNTbNZwkb4sDRD9+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743581995; c=relaxed/simple;
	bh=anuQzV7VbkBfjXTb7ckS85EOoDfDzoVDHc4QywZ7+1k=;
	h=To:Subject:From:Message-Id:Date; b=coohTF9//9cc4nQcLLJCnOmLXCkKeous01NSJjMUnGjrREf5zXrwCmMUBpcAfAnQy7+Ra1umrxiLBmjUOejDYc4GVVpmg2DZ0Fpjtl2MtWQBzG0B5AjZ+wE/UYZi6dLOdJ90/GhffI/TzF6PUmCesiC7v5NZ0bOYk/GYJ0JWxr4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g/F7bdAn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g/F7bdAn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19A4C4CEDD
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743581993;
	bh=anuQzV7VbkBfjXTb7ckS85EOoDfDzoVDHc4QywZ7+1k=;
	h=To:Subject:From:Date:From;
	b=g/F7bdAnVnQMdFLJVc+bP7qmAu/SUpAPS+moQGiG5MapPkr/JVWqmNVQ5THfIM8gb
	 cIvyr5Yb8IE3ZQ4VCXDzcqvvpco/KZ5JdOHB3QBqTtB7H9dYdp4BP+VnGbqp1xe3uD
	 Jsar/avQ4oJzlAoxTWu6MF9lJd0wVaFwLLstbgJN8YSgz/u1gefhNHLJ++QIBnkE8A
	 aV++UaZne88hQF3xQeeP+Nd3ZERhNFtouzQlgcglus+VsgVttqE42X9Zvq5cx63bUo
	 kV0eqlP/mN5wcXPmFslL9Z6wg85/H0pgMIp2qoHCqrtaAQkLNup1lSaB9y00aG82sx
	 jGgQLoQH2zTAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916C0C36014
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 08:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174358199358.5872.4621694542401923369.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a30600d2b4afb138a4b99ace65511652407210ce65725ae5a7d2709fbe19aa04
Date: Wed, 02 Apr 2025 08:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743581993
