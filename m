Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FF5040D56C
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781914594; cv=none; b=a9UGMgjqvKZMmG5Bn40NASmtA5mjwmPxpUrbkDyFVNJDHR1/cot1IZY7ZVqptbLrmgnM28+SAFI0iwdi0bPR3+fTg4gnrYbYbkzi4XJoTTotv0DEzcIpCx5bSvaxG7AQoTqbXn/cwv4RDF7ctb1SwdIpTBnqOLWiRKSIXOlHteY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781914594; c=relaxed/simple;
	bh=PfLS0M0lsO9ZduAVW0QlS+BzlVcHYoIilhpSkvivqW0=;
	h=To:Subject:From:Message-Id:Date; b=TgrQH775HPOzcyVrSDGvP0gCTNlAEg3obqN00mbaexhdb9fCsCBR/QJrxoppARHSyV9vibNaBVHjnXfIgc+Lv6mA3WZHvizuvwRSiMV7wyOBF48nx7C6EV2018yGy0TX0P9Q8bI7e/Xk5Iy0aUPaWFvE3MScnKbuCnuseJykxI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E9KoPPkx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E9KoPPkx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D394BC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781914593;
	bh=PfLS0M0lsO9ZduAVW0QlS+BzlVcHYoIilhpSkvivqW0=;
	h=To:Subject:From:Date:From;
	b=E9KoPPkxYXAx/ZbCqzj78VawXg8oFb3i5JZ8dh7+nV2SjZWVzx5JdFT/cG/S3LxH6
	 yc1l9njfUxslA+xRwBvZyXUb8FzoPfBvL03D5/dpwovb2/VwLuQWEcCYd9z6z8KAPD
	 zImu6igEbibh1B8svLvxZuZqFPy1ocJVlWnt5GHLDf6H7agqGAIU+7j/Dg9Uvg802I
	 xXfNETc/w31FkJnfvmwMtgcbCbVD9ihmE/szuVrefV7Xj5GFtNC/d8tuPciszBhp4Q
	 mNQEhE0OEQTQ9HcDoLdwLl1F0H+Iovb01QdONq2vdnthJ1I74PE102zK7DPAg93gQS
	 HSQtsvO+EW4Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B3872CD98F6
	for <ddprobe@lists.linux.dev>; Sat, 20 Jun 2026 00:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191459370.12545.12859271898869660793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce1400d25012e3a7145b63ac31fdc6d4041cd20c8921408637dde00c9dcb958e
Date: Sat, 20 Jun 2026 00:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781914593
