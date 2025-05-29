Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D5FFF226D1C
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748526594; cv=none; b=f3wgXiYRXMZ/1lGSyv8+3bx4nhVxV9bO8VUpXX3mN+SMU+7lamR8sHH0YfqQrSXlq9nmMg44qmQ4dZl4uqtqV2mYOxJ9BxpMa7a8zdUyqDdzYL6c9sXCszK84RXmVc0I+8/0BDrogEDZGQG+9J117DHQFzrKlvY2ZdH/TtmjQdw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748526594; c=relaxed/simple;
	bh=B412Uhb/ed0PyxlhTyKpAdYAmQ7w5JBMZdDzb/+zr30=;
	h=To:Subject:From:Message-Id:Date; b=Jm9rkXZU9+CFdxUD58lNZkl5DQuL8XKNodz9z6H+DgZExawzay2f0Vj4GDkxPQSw/mHqjUYNNBxbj9mumlfFvygK/7CP3sZpHGFck5+Y5K1oDC1vgF+rftu+X9+nfhfG0VgBnI/TRUXH7fsWTP1yljeb2+oRvbAQznc00+mdtls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pAwN8yiq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pAwN8yiq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 03339C4CEF6
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748526594;
	bh=B412Uhb/ed0PyxlhTyKpAdYAmQ7w5JBMZdDzb/+zr30=;
	h=To:Subject:From:Date:From;
	b=pAwN8yiqIlfZEIDcYDPKrul/b3Pm1jFCxdDS/sFnPKdGpnQ8yFQi301DS83OtvJVT
	 vBMw8u1JmvR+5AelYtkq3tqaYAASJqvKyrMn+VOFuNxG/SpztW61rUsgLQqeG7+D+W
	 jAKgpzqGizD2DiEYWBp7O947KN2L+b5gAf6EtT9U8ktODIQ4U/y/w/a1gW5OlZ/38n
	 1GL1kQlzNzvMnoRbrj/72qGOgeHY3g27KG1LiR/ilVlNSXX1sPZyckFIq0nTv3gksA
	 /zYcm9ATb4MJgeJ3MDkv1iYxezsO70tfbTWbkpzMDozdDnuKf8GsWGsOWOCNBfIZnq
	 UPw+cJPpVLMUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9067CC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174852659358.17179.16956091837380344016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 759bbae18832825eb2a48196424b2a5b93a5f39d46cd3d0dad4fa212883a584f
Date: Thu, 29 May 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748526593
