Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2305E292B54
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752825595; cv=none; b=PbF5AFHbnV8Vl/h6D/JBKUdu0cbKnjh6GL2aM5p78TgX6jE/17uz8WmfwZmLguBqPO5GvvjLwlQWyZ48xRlfjE6FM1l9Ow5ORQi9L7R5eUVS2Ecqslss0F6iEur6puRGsYeh04f/Itsux/pK6UMuWqjmtMePa2Q8fwMBsTbPOUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752825595; c=relaxed/simple;
	bh=koYN3B/FiUmh7PhrpUQ7qgDA0KXTKDSiuJg/jPBlutA=;
	h=To:Subject:From:Message-Id:Date; b=O/K8lBhePvP0IMfdKoGu8TRQ8gYqvHjs5yuhcSfd1wuJbLAkirkU6yRuVB0Dd1Y3DSTyXciy7gnw/MHKH3T10VCCSWeupNFByqU47/0dYP709PkdgT1S1bzTDGKOcUnEl5m+/gw6exjeVcDdzdG8MEbhDCvm96leQUd0lVJuREc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kgl6V3el; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kgl6V3el"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A23C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752825593;
	bh=koYN3B/FiUmh7PhrpUQ7qgDA0KXTKDSiuJg/jPBlutA=;
	h=To:Subject:From:Date:From;
	b=Kgl6V3elQOJdhHYD+1NkyxeqPC6mD+5rUP/p7EjRtKIZVEz4tpbael5EJ5CFkKsHZ
	 327ZyXC9B2ZgVkSUxP83suPFp1/EzUlroky5Vr/ZshVM28hoElBnQWZYorK3VNKe6l
	 1mF+yCRP3YsfwSwOzj6cDcjde4/GmOcGYdEhEM3JT553MGa6OOjw+j8hq4+eQsglUb
	 JpUJqXNZwTDg633y/77Meltkj9AWda7zw4MOT2hqlU9TUVku/PQuxhaMKrWcmFMbTM
	 NxvEM+mWhukBrH3gvrXb0ezFUVp6D2rwKeF3JCjFEoPmHlbmYQSgSqzHuJI1jLx9PJ
	 FfDku/BMkZjmw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91771C83F1A
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282559358.579.7927452397401183767.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40958bfd2f33345d1887fd2cd66d7524c07dbce45c4069142563da00c4525e14
Date: Fri, 18 Jul 2025 07:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752825593
