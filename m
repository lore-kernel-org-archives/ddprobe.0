Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id BAE912EB87E
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:39:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761928794; cv=none; b=G/WpIEhVuaCWXUcjBaZa4B0C92+ynOdGg84aWMJ+OwMkSW0cB3ShNun2kkME6oVYsJeJ9YOGpxPeh5w/runTx3++ZW2AgVz6hCT6gvK2G4+hc2cmHI27bW0kca87/3AwVzOTAyZ+82cPSg2h/iAcI/jo+f/EVFt4Llf0H0hWFQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761928794; c=relaxed/simple;
	bh=0ArAIwGrl/ZCbfAwrdkzBgSWUJBhzwaplsKyDfRbxuA=;
	h=To:Subject:From:Message-Id:Date; b=LM9h484gaysLYiuwUVXeJAnV0UcKODIuFtpzP0RWiOQ4opgfRVuA4nRcBIxQMSYRpZajFhYIjCHl/xOhP+25xs27qxKZ9Bzt8VlqzI3nT0nyPBXw+7QZia5LreRBP8LP3QZCzGpTss139IUSd3ByldFHisqft8DGlJJilOHk7Rg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n7mvZ5LW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n7mvZ5LW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A07FBC4CEFB
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761928793;
	bh=0ArAIwGrl/ZCbfAwrdkzBgSWUJBhzwaplsKyDfRbxuA=;
	h=To:Subject:From:Date:From;
	b=n7mvZ5LWGgtosRxAYf4oTsxscwcwvYr3+3n4XreII3wpv+zUw0QHPxf55P2pATAWC
	 u1lZsKJ+o08p2A4DFOXqzVD0E0DsWgkSQJA6HURxisE7Lmv/ktYZ1tPeFcEieN+c7Q
	 RCYPwYfmuXFijYfvnMU/xgF6SWDlKG5L6JwHQee+IKu7EtJEw/8oiFkm+JpRvXhv+t
	 3yEziOIzzm0MZlQTv5IxTUIp9Y5Xo9/gOLXk8iHntoNIUw1QCR/5yfDiwHgjxOngUQ
	 kYQ4qb8++uEapRmxuWfVbLlJ8UWbrClpX8vdqkYOUXIIAJB9Bku6MjocGV0+/0wGFM
	 i/eH5cLGA0Ljg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9018ECCFA00
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176192879358.18114.8285869589443135245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b1323b480e264274df48942cfe0b587b8979bc769ea56aae0f1972ef5452be5
Date: Fri, 31 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761928793
