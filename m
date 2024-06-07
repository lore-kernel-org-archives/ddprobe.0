Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55DF91B28D
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717739243; cv=none; b=bNkZNcGTWo9qKiHiftvcQHZbmVFI8mk63rRePRIdGLhx67ekdMVxMm9hFzxCf70wEZGYn7nmD76elmOcWt5XIibK0GXCDzGZ4mG1tWraFBYwbcLZ5hTre+yWEdB9nPLm2ZeuKs9jnurcT6VA9/xXxmOCbof75odNsBUjG/dwo8E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717739243; c=relaxed/simple;
	bh=jRTD92Jjafnqgwg2YqQjSB4MZvklFtZdQ0KcSHRVJc0=;
	h=To:Subject:From:Message-Id:Date; b=bcod3khIcZRUeRowFuVmc1PZTrxxd12TnFvVwjW1AZLw4ABzorz+q1z6x8Xm75dYTvkYqHP10nab+qnRhbCRDh1DNoBF5saYlET4QjIKTqfX0ZTXQCSf5JDOeOGUZMx2mWQcKfjLorkXxyBy3jDzdOeY5wCr8i9nJQ++TBJ/ZVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QfaZ+YUv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QfaZ+YUv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8400C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717739242;
	bh=jRTD92Jjafnqgwg2YqQjSB4MZvklFtZdQ0KcSHRVJc0=;
	h=To:Subject:From:Date:From;
	b=QfaZ+YUv1NWbkudrI3vz6TcapFzTRthrVMw8NJnXYP87MJie8rB7VfOp3gZx2UQyI
	 utnTWUAhULTRvlv4AI5vHz80VABYOqohlnrlV7/+NCkcZpzjNShwWdYOLk8zdy8/8u
	 z/CGCNZN6uIuCLqkz6UnXY1AdnLnHbjSvTvMVtNR9U4ibjelY2uGg06ZDSOGi5fy/5
	 h2v4bwnoGFR6EdIv/7mPvr/hYPzp4qWfsQ69I/Rm1LroFLxhY/Dx9V+qeYUOaoBHGp
	 qSE3vnq84XbzMovW6qouCE3TdRFlMXt8kzzwYxmowyaeE2RnkofeqokDOwt/EdGJdq
	 tctK8Bicna0ww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD411C27C6E
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 05:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171773924282.21427.12739468347761352113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d57ac905f516e0271980d5751f31b44394f72cb5dedb6f23b7b605f663ce483
Date: Fri, 07 Jun 2024 05:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717739242
