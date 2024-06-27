Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 454E119A29C
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719509063; cv=none; b=Ip2fXrkPW05bMv8wUo5o7IADS737/9td8iu+sP4uefpHDggm/mgibyH0ADCLnuEJBpZ4LpUtFIhMHwZgj0YTeqlhv/Keq+PsfU6VBYBMchypIUltW7NE0ZNPn90RB9jYURapelBdscJAC0ouYGUQq6ekXAO0gme9wD3mXuAy0fQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719509063; c=relaxed/simple;
	bh=3+N6P9L2MJOs7TCUPvTdG9tVoUJvYlsMd4Q03iiG0jo=;
	h=To:Subject:From:Message-Id:Date; b=n3Ig6B2bJYLsKP2MHkdx8XRk6VIEk37EDuJQjj/4gnqnDNfH0m8yh9oTJs3JJUsjbRRkzI9v0bh4NMPd9MLmlLo4OVtDUAW4MrHttS0nHvh1XG7JjlaLueqavVtTgUZHLj3e6UQsFo26UUAJmFqqh0bGdk4ujsPAvQNbJ3Yj4a0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P9hMNVEF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P9hMNVEF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF7DDC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719509062;
	bh=3+N6P9L2MJOs7TCUPvTdG9tVoUJvYlsMd4Q03iiG0jo=;
	h=To:Subject:From:Date:From;
	b=P9hMNVEFLaiVHntXZPXbyJcwpg0YazMtRB7HQeVG0ckp1pKRQ0RJeAkcl2FcnUA5x
	 E1XqAfiFglrNqSijznD6iy3r2ouR8a9cZiUpBJmY5DwXkSQtA2Rq/giriUkqefVc0L
	 YLdKCF6O0EtIquDt3hoAmzokhc98Njmk/UVVPpnn5c2Sri8HlVIv+NwTEvzaX5HB+c
	 pl8P8jFKRuD7rhwUa4GVRgNrRcX/Tm6vLjnLTkakCZbi9DcGIvP2zmmzMXVt5iTTg8
	 4Diy9KgwP4j5MdeI5/xOZ9Pp+duKS7f/eNSwu/f4lXyDlQYX+AlVsZdR8XiHr6Sr/d
	 Gkm3O9zHTeCDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C45CDC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 17:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171950906279.1372.15845432249294556837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85e178eefd95731c7348f91ace30c45cb608fdb8170da01df73e38da8efc9a06
Date: Thu, 27 Jun 2024 17:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719509062
