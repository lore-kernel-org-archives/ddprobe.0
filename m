Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A49321CC4D
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752063594; cv=none; b=ADGtrFc6liM7KvdRe3v4XrxVMyFBEe+yh8GU0QxPSwZz145ubDRbPQ3gIgBZ8EnonLfNaj+w0udZeFXZnHOf8Cez6nbVxF1ArGVUIeTihgXC5lhIfg9HpZKFdTv/DNxVWOJFlSdoV9JCYh3Y/J3GrtJUPt4CkJip0sl43olDzaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752063594; c=relaxed/simple;
	bh=f6+VsFj5d4TRKMjMX2Bfs2WQwPWvSpwsFuigLXKg5w4=;
	h=To:Subject:From:Message-Id:Date; b=Hp8yiZ/+Da8wxU4RRvtrCkQqX5YmpsnNO3mrrEKLNB/KGfycyluRvyP7wMMuuvNjyHkeQHZaXu7gaf2hW8xbJ3/GsKl+G9FMGBgr87Xtyua8PCzQ+k1O5YGkT8cl3iWuu/bS59IbdhbfvNQFg2SqF90FswFiqLJaw82vynHmlT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=neWWpNLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="neWWpNLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FCDCC4CEF4
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752063593;
	bh=f6+VsFj5d4TRKMjMX2Bfs2WQwPWvSpwsFuigLXKg5w4=;
	h=To:Subject:From:Date:From;
	b=neWWpNLzygjj47Ht/72GpuOUwDNdOvcA0U6hayWxM2RJr7MPxgHK8wM+HLwisk4DH
	 kUrc+YdW4IHGo13vcFhdXrS3saWTPAFKi5UzstjboWGV9ZfN27DJyn8FEChvi5USZF
	 EdtRuoEg5axiwxMoyDW+nDZMpTtkIO7DtAYdZ+6X5MbYIKM/WEcMKcuSAb5vORPtyu
	 gjeXTdWpXanSmbO6gzgDraRMueZHHGsSiFhZFAyuURJr7zwUoYyNp5gt9uYPrHeZAB
	 Hd02al58Ftgo8kPTMymsx4r+RYVn6CjHeHM9vnKXkQKl1zvGJM+eVeFoKUtblkiM4t
	 k1YdGDxZknbCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DEF1C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175206359357.29082.37515276108283159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d8d168b39dc5a18fc7071120d14e481deb472235d99ebe96613a2717e46cb34
Date: Wed, 09 Jul 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752063593
