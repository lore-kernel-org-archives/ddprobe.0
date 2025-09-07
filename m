Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26FAF1F95C
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757204994; cv=none; b=Ultfh9QSdy9zjZagh9vwN1FuHZcAWpPntP2iU4z7hYRHf8E0/JuIwexwEdj452HWUlUYuQxFM/lZnkaZQ9NxUQ9hZXI9lgD3yXdCNw0UxFhenK+Agw9DmanNVjmPyGMBPTdiSo5DmTxa9JOZUd7EYNhkj7L7Qe8nG2Mq3GblfjU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757204994; c=relaxed/simple;
	bh=5Pj+Y2/QwC/sLWXiFSk8P9ByYcF2fIuMzCziuaQetdQ=;
	h=To:Subject:From:Message-Id:Date; b=WA95jWB/fU5nM45ZiSWW1vws7OtxIX6AG0eqoswnnNVBakRPZ9VfrBNHzoUVsgAxUrbI/i3LL4g5LlxeMQYbkCJPiEDz6s2z6hTq3gRJwwkVTF/Bz4G1kDBpU1vOf7JwKEi0omYSnbtCvk2ietZjVA50YwEebN6gwO8s8qw+MIU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c8bq+vlF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c8bq+vlF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60DAC4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757204993;
	bh=5Pj+Y2/QwC/sLWXiFSk8P9ByYcF2fIuMzCziuaQetdQ=;
	h=To:Subject:From:Date:From;
	b=c8bq+vlF6qCFqvt0p/B7ldDow5k9XbehsVkYMeEJhW19lQriI7TGrve849RLsegc2
	 AXIJKoxwHxoK9xNG/6IsK4oxFp6O8fcRoH8r4Z2CeMDGuMw12/2iW53p/PvQZtBsbH
	 uKHXoQU6dx5n7ppOfczRbn1Zs4PCrTBOThgREeWBdIMXZTd0Va7O6EtpRof9nDPHu2
	 3w55uqZ2zBsxNqR9gJX/vRH1Qic/aLbJDdZ4/e1GOwE87ziywBo5/Om6iNqssZFzC0
	 J1BG/ydwSB9DMt3Q2rXhW8whqyR+ODG5x+mBD8z7wVe//1/DHwOZIkHHbNgoJ9xT/b
	 sveEDrclVt+1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91C32CA0FED
	for <ddprobe@lists.linux.dev>; Sun,  7 Sep 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175720499357.23360.4476064529615127290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d997864ad991f9b069a5ddc92367e0b855e78c0b47e9387ee3f13272a17c9c5
Date: Sun, 07 Sep 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757204993
