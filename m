Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 377191C8603
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755989394; cv=none; b=kbuowKK4cy8HoSpo7Yc1ovHTVlkVwpQbnR2A7j8bNBiV/0Q6mQ9i4HfrBQZWtOJpmM+hRlvsArW0I7tmWZhP61ATE/t34xKxrVUU47AiyzR+Wzg17BRCe8FZeJ+qHUvHffeizvibHPbL7zAqNL/yVqPY83hvC1b6+2tGpzAKFMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755989394; c=relaxed/simple;
	bh=DkGdZDXZx+Q/o3SRELxDY9FikZpVPGmIIjbey756tLQ=;
	h=To:Subject:From:Message-Id:Date; b=GjtupTthSrXtsnxbhaRsaVQkU08FXMlEeoyE3NUfnY1zhR0c4huv5OP379jOnFIX42/uAAmGXk2s3tSirdW0jIzbm2Xkt4KLgkXoEVQOOYo4b2AKgiJEwkcm1evRP2sPQp6CAxJgVt4/4qQEOzDZNZLeKTWvZcaplkeph+bLd2E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7Q254PR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7Q254PR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B67C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755989393;
	bh=DkGdZDXZx+Q/o3SRELxDY9FikZpVPGmIIjbey756tLQ=;
	h=To:Subject:From:Date:From;
	b=I7Q254PR7lC//BgLgqdhAPLi0gSvxq72AGy/Vwlygl1R0IO/utOWuzqYDs4OG0hS7
	 glLA1duoIe2RcYAr5+CYufHb0IV4HuSU9Ek3qyqYORExO5FW7QbaZU++NxTdHsxZx5
	 kD8hXy4uwOsOkYi/LMUkHv/y1lob8PeckVaw7y+n0oDgaWxfLfJY8mlksBiexDvooV
	 YdbrUwAx0FzJn6Wr5Zh5eFBR6yr42wH0hOCm+UanDXw/bigMe8zBVHBo/ScvzTYxIt
	 AYInlTVkfrZXtKN1QpjlTGA6rnnnzC9zG6wa+eZ/NLalKl7NFw37hSv7c3JX5Hv7ps
	 M69uaXhswaelQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 929C8CA0EE4
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175598939357.21007.11504154058215815191.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e62963f2153c8eda018807819243d6c22e5ffc93a962278206925d51740f8b4a
Date: Sat, 23 Aug 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755989393
