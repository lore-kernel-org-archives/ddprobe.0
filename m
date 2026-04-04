Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 236CA1DFD96
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:55:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775267734; cv=none; b=ay9TAZmcZFs+U/zNSnI+UJRWtcvy2BJJBRfLCWHnU6MIBY/QfAwH0x1Hosi7JowqHOGkh5ROT4hqXZlSwrYU85B3MmwOTHbOqZxsJ9qvPmhuOJEtdPNpKgAe+FleMgeo3p2FXZJKV++NyTe2kDoPfa8NHo6X8wNkjMwoQvPZ+0Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775267734; c=relaxed/simple;
	bh=dNUnt4loZW0rGc+g7ywjue39Ib3SqYBa3dO7nvRufHM=;
	h=To:Subject:From:Message-Id:Date; b=AJxayrzM3Pkk8S95l8+WKGuHqOfz4j292XBvmapuhAgTfGd48vXX3TBtc3sD82aDe6JjbaNmB4L6SwEx00aXFG90tfoP/d6V9RhO4vtOUDQIDwZEn5BJ8SmHK7VChrOZc1Kvq+uN6WMrO0T0nNYv53CLTc1aIutkGzsSxyqYTpw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YLXFokgh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YLXFokgh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C129CC2BCAF
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:55:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775267733;
	bh=dNUnt4loZW0rGc+g7ywjue39Ib3SqYBa3dO7nvRufHM=;
	h=To:Subject:From:Date:From;
	b=YLXFokghexohRd6hG/Yy0bee7urVSvZiK8r1icOUoalXu7v0PijxaC0BEHah/WoJ1
	 KvUssMKPhP0qNpFUmIS6OxBvbWfiAX5ULgE7m7XB2Fws0aCm0jb/+QRpYehvx2U8c8
	 Y2O0P9jk2o2Y/9HD6uBWBEZGt6/E4dS+SIBW9r9+jIbPTY8snzw/xTCtYuaqcCQG+r
	 CmZ3XSR/E9V6Ie/tkuh29Kt2l4k5nceyaBsKqdyaTopxMfYqmxzHq5usX4bDgvOr+8
	 H4CF5g/6D2S8Z1mjGFpmP+9Rn19DOUlhGv0Y04IM6CPs4wzzRYoqIdByPA8YBPHQSb
	 rd/18F2O/BI8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC535E88D78
	for <ddprobe@lists.linux.dev>; Sat,  4 Apr 2026 01:55:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177526773368.27997.12675129728551793038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a42247b3a4fe9c46a75c5a42f6993f5d2398c65abde7d2764371a37b539eaa23
Date: Sat, 04 Apr 2026 01:55:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775267733
