Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D528262FDC
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755164394; cv=none; b=YILmZZj1BaSu64XJjt/Fgs6nCRXyHrdTzVtKIE3y8taP7wjd4GGt++BLp00LETfqs4fZD6yRZiL5AfDoVZat2u3tQ0SwhJoK1swkBImHCC/rsLHDuNIgZhQu1V4M0NITz96BTFrnZa5LTrYj51FvZs3+iEm3cqqb6CGKZBwvzk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755164394; c=relaxed/simple;
	bh=K5S7sor7SvOm24i2k6XKaTR4pxE7iwyay19N1+8/84w=;
	h=To:Subject:From:Message-Id:Date; b=pf2D9Q2Kz6N4OOyNeBhkybim7ysvo7dtWuEzp6zJ7ofl4R5sv2f1LuaDvnMIa6090IlNLXUJtu3vkW7n5500GLZ91xwoIW3ByR0IxlQr4GDCNKq3VYLpwYplgKxFAe4cp5DOk4rTuh8+xOxDOYYOB+acOXWfd4A/ncG2FrVgj1U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qPzNV3eF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qPzNV3eF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FBDFC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755164393;
	bh=K5S7sor7SvOm24i2k6XKaTR4pxE7iwyay19N1+8/84w=;
	h=To:Subject:From:Date:From;
	b=qPzNV3eFdtRKA7Lwtoe1/QIuWMr+0Dz9EBqNZ0CjcRAkcU/2xbvX5FndeRg4zGMxx
	 K7O4bQ7Tm/xn4WkYvoBggnoOmALz+LW23IvtNT7ZQv2prYdAyFP8Mt75MNq7GOE2fy
	 ZiBWx+hAy10/wsFXHiNUYYuhHQvXZqoQaTIXLl1pKkSHtCU3iQu1jv4a1h7Mhb1x1N
	 tL9ohXHBab+6I6bpqMP+4DTpeNkCPIF7Uwn21Jv1qJR5oq8S6w5qqtZXyV6H6H1H0o
	 1bQ5I9tEi6SUtpM6RTGJzXDqFFtGtQpXLu617FIwT31qbdjsjtcCjJQOJK+p60BQRA
	 60KcYal++v62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF36CA0ED1
	for <ddprobe@lists.linux.dev>; Thu, 14 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175516439357.1999.7498931456113448098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d11abfb4a156b07e0f671e755f3064750ed6816a8d1cdd3a4682ee1f537fb6a
Date: Thu, 14 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755164393
