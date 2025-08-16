Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 122B5C8EB
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755316796; cv=none; b=D/cEwG6kqdZsURJLz4bwlQ4ahmv8UbymKPfErma8o4M61F8dbDeama18R0R57tDlxwM48fzq0ocb4DRxT+rFjduVkN90MkqhvFVA29Yk8oFyGs+Q5YvHnBbGx7YKQdC5BvYPS4IGhZlT6ze1wrBXVJseuF3DXhzY5zSZaaAzqIY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755316796; c=relaxed/simple;
	bh=Ix1CvMAM57lA320MPJ8EtIdRWO99FHFARljL2RRkkVs=;
	h=To:Subject:From:Message-Id:Date; b=Y7uVUX5/GXzBEUGRGUWiZJPuwCBK3kOLg6iiPxrPx7sPW70nCLCSMwGyDoZDNlnMZNcYnCW+wmcysekh88x/LTVq5W1wiudJoZRect4SJUUa6c7F8AflzSV6qpvHKoV1BZQFuuyxKWkmIEzICCMHxA0wgUlKACNlMy1nk1wIQKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T2nbQi5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T2nbQi5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F0D1C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755316793;
	bh=Ix1CvMAM57lA320MPJ8EtIdRWO99FHFARljL2RRkkVs=;
	h=To:Subject:From:Date:From;
	b=T2nbQi5iIKZ+DqMu6JiD5jGukjN6szmIMxvKHzrdTXh3tejAUnL1MMiaWUtmRFmJ1
	 StGYKvtwkop2YJ1GT50td/zmikCOc6ntacxm9e6kidqkXHncZBLi775G/4vIYTkvyl
	 ccGS0wagOBtlWxSDEetpMainUSyuysQoPmYhipKFM4B97gm+kNoma6otQEdqNFrj8L
	 6hIrUvhQG/K8Nyf1K9y9kCCv6M+5t/Swizx4mSpM0IpNPjueoeMfiPGUyXL8JZeCAb
	 Cv2IEWWPhb6O2aLzosEinQNE6g59OGCYjjv7maQvGbFLydG7om4K8WF+kq/jyfzRFt
	 kbdmcK/8Bn56A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913E0C87FCF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175531679357.27941.2600793009048147967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 78a189f1a3f96aea0334e41f29f0808251fc967a02dfa8ad6b1662ed5e82bab1
Date: Sat, 16 Aug 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755316793
