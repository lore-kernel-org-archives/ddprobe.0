Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246F62BAEC
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736169954; cv=none; b=qGkvHpUHh3jLvYi9exFgrmXd67k5t4THfLvYc3pFvuvwNvEudoyLoszTLDg3L1SFLpMyb85mw7GxgIwcp5zI3rayGvEPBjpiSqQ5c5y302KYpjhTX6ioIipTLEnRRhxC5AYC71/tm8u+K20vYglHvAA2RZcN4MsQJau7JPsr36w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736169954; c=relaxed/simple;
	bh=BY/nB2QeQ28tK/JwVmBFWdXmbyo5ckuqbxnIj9tY+8s=;
	h=To:Subject:From:Message-Id:Date; b=Y/dznyWSt1FkilFTkCEMDCOJaJ7LvsQe6ezgb+HuBEs8NbTP0vbouXFTPLNiCEK7BzLs3YCOmk5JDitv0m4Dj/a8GTOf2m0IBuvM4gTRRjcwXKG1ue2mekhsuCrGBniTo+DbYVrpIaudRvkL+78MgZ2aYsT6UQydnQBOJ6GoPLw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TtXIO92v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TtXIO92v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABA2AC4CED2
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736169953;
	bh=BY/nB2QeQ28tK/JwVmBFWdXmbyo5ckuqbxnIj9tY+8s=;
	h=To:Subject:From:Date:From;
	b=TtXIO92vugxM/rNY0KSIV5vMS/Dgm1Rk3QZpIV6KueLwjp82tYBICNdYl6nUXjupF
	 +19yjgzckyxmCt95PNuwSANoY/oxSeW4gZH05ni7H3fOQHRoWh+gpqDpN3Icfr6knB
	 jNWKZw2TZxBN9W3wYqS/85E77z18lz0P6nydkF6+KfldRUTen2P4xTZ0kWOB3wRPkh
	 +YG16jcdQ8Yr35/BVtz0+yfCrmAQUq6JQRUlR3QfazRNSRKfKBi6v9qQWt8hnwYafM
	 5BxKMrRkhMlkm+23vtxbHzG+DHhfYWLR3/X0C5fHjZzc451/hrCpEDuH6yKm1Rl21e
	 mbfOX5XdhoVjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EAAE77188
	for <ddprobe@lists.linux.dev>; Mon,  6 Jan 2025 13:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173616995361.11514.6931104251325718398.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 668d60ec58142a6f27afa9fe337ad6c6117a19008bec8f0aac902c81b9b40f3c
Date: Mon, 06 Jan 2025 13:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736169953
