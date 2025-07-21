Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D26F2C08BA
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753104594; cv=none; b=YUACR8msVEyfHGDjUdGzxNDlXwt1HIvwNsyJec+5gxh+tBNyh8S3c9k4GdPWBkXiA+zudH3vN24xWva3f/8t2kfDwebvw0lWBqUybQtUsdK8jJRs/AYf+Qme96AW3qiKq2PVQiqqhitLbzkRNX+kSCnbWclg1oWS6GAX7sgTJ5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753104594; c=relaxed/simple;
	bh=SRQhCbvz5/l62j+uBcDVOX5jWS0S7TX7kxFbBFYy7u4=;
	h=To:Subject:From:Message-Id:Date; b=j2cpxqeB72ZOhZkYnOrl1Q/wbUM45fNjCXTHxVETxJZELrVZVSyeYRjZ6aUeNxRWzaGiJHHyIic0I7i0hkblLQgroQVAXim1JRWs9fUDoA+i+ZpQtzlSWAe9d0EvTKPJbwPRMMBgg+0ui1xJ3eR746pzSCeKY09XShzA9b5F+Rw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GNtaKS3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GNtaKS3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29F9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753104593;
	bh=SRQhCbvz5/l62j+uBcDVOX5jWS0S7TX7kxFbBFYy7u4=;
	h=To:Subject:From:Date:From;
	b=GNtaKS3XexRez2L7jxMRhsQ/2JkiHhroTkIayfCQESOa+YkthNtsVwL44B40cTDtr
	 0ikuQ55kpUcrE033Ianj31sj+YlNZ4UDu5Sd+qGMv454d+3S72TocCRr8oFrZTAD/S
	 QC0iHU0cIjjjqo3Fp+jvcpDBi5BKI3pDilBcwKtiSCz/Q3n0UAjXaTP8BlTCuWKQuP
	 j/aKcQldsFQ2GPxyLiVFbOWe6Fqi2ZePJhhRxyYD4Ei4PsH3WqxXC7hYM+W38uadoY
	 UqEbcwCJ62C2I6G+1hocGxSXpOwSQxP4yJCJd6y6MMswcHTcWUn4K0bmSr3J5JbHJB
	 XHJuQwGmiHUjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9051EC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175310459358.31621.4141534669605096271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9333e79b2f4eb9e5d20f27ec613cfe0787dd40e74dade2daa9cd43e2f8bccb24
Date: Mon, 21 Jul 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753104593
