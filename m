Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26B1528D8D0
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775795854; cv=none; b=cxkVvcQ9oEtC+j4ZzsZs2xP0UjwdHyIgxvq/ywOjwy+LXD1iAX+oLdIJX5cih6zIAJ4R+JP2qWhpgKrN8XYxq6Xlx1AadRauk9pV4qQ5IfkYt75xKcnL40zfk6vN+RhJSkyobJqvdtI5b2iLVqSnSHriT+o8X4mvuz47AeEO4CM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775795854; c=relaxed/simple;
	bh=ocIwMHnTQdAalDVXmnPCu/d8INIhIiW7U2r4X1vUIlE=;
	h=To:Subject:From:Message-Id:Date; b=SArR/Cxf6Bf4Sedhu9w70ZbI0eR860kY2dgfqsbk20wP4Xg8a/YrjVcHG4JqLtyjjGNSrxcC9A3hi54aCKszyMiPJ4755cyWaKfNCxlRJy+mSwy2vh+jH+8eQqU24SQrkHl+fPRfsB4RHqlBqU9vu+kN8VwjAAVbLnlEJc3VNIo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SfYOO/gy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SfYOO/gy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC2FC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775795853;
	bh=ocIwMHnTQdAalDVXmnPCu/d8INIhIiW7U2r4X1vUIlE=;
	h=To:Subject:From:Date:From;
	b=SfYOO/gyM1MlHyI3n14W+/7yt2ZBu3oscGUVljVblEhDZLDTQHefsf3k6Lyepn2Mt
	 vvSw03usYc+AqMXH45Vq8MSqWRcWTbMWQcRwzyuJ8tTyEeysEqes/Yzs5cBKQo+Z+v
	 WQN5yqlroVpT/r35JNFkWA0Sd+YsJYbqu//PRQXFt3BYLMcunUhzwNkxgUb4JbiEmz
	 +5bRT38WdkkhjsnMTApxM+1ri+FJSUqsexNYzz7069wFkhJ+TaJC4mXVu2rhNNcIGv
	 1PcoJJQYkFGqiKarevOTGglZINdnYVJ4AXfjqjPUfuhiQit1AKgwK3x6ARrQcLw03+
	 pTcKaKxNHxk5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACD74F36BAB
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579585368.16327.9789950581926706903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5826e91ef86f10089ea9e851edec15c7d885a831a1f94f14ce2e9dbe52de928
Date: Fri, 10 Apr 2026 04:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775795853
