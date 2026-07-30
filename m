Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3448C21CC5C
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785372634; cv=none; b=bIyooi5q68jyf1UVIxMaBuAER17vU98zIl/8uwToEKz1LaZYySpcXe9okG7jSWRx3MJbOei131Q5PqJdKoAV1Io6CIKmR4pvjnf6FTkUq02o6ANFejZEXMVo2PO0l/kmqkiLTflUkznld1I1PrZeOKg1zMobXCxR8hGYxLl4QJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785372634; c=relaxed/simple;
	bh=o6gAJThMqETU9kMVMhKjfmYKzbxh9LvqZcYYGF7yE+8=;
	h=To:Subject:From:Message-Id:Date; b=XzN7IFELPPjzD5Fm2PgdcLB5yrsKhBm6Wf7l4Wuwv+fJ0QXA2itw73+CIqni58fKN+X+SXZ/ZOUna9kYsK8MfEgZsFAnN66BtLt9ezvPFAl+IfKhUheR2gDUoUEYStIaRmTjzUQFQYpFkWG/NsZKD80wApF8eLARIKmEjRNDc80=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m+Kgoof6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m+Kgoof6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC24C2BCF4
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785372633;
	bh=o6gAJThMqETU9kMVMhKjfmYKzbxh9LvqZcYYGF7yE+8=;
	h=To:Subject:From:Date:From;
	b=m+Kgoof69LOP3Tg8WNBcycE+1ny9ira5LC5C3hE9M/hJIvvzZDTUOfsCYeq1KZLkz
	 pr1g6dUkOAkPKJgHInHchFAaQz9S91FiZUWXxoqtEMaJxrE/0zmEAXcPspSD5HW7xa
	 ETRcMKTPDEivKjmz64SUQKFg9+9I6AZEs7UnKMpA72dRfrYDvwZYi1rcux3LacqTYk
	 Js2dQICi4kqHorGRC4utlRmCuj7PboqSblPQ8PWaVMMbMsyJSbjjZLbswpja8+sXtd
	 gF9CrrNVNuW/hGoyNG+k+iXDM2bt32qgFDppyoi31B2CAR8JiS8YM3HSj9X3GbQHQi
	 zDrMz7F4tP3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8C65C53200
	for <ddprobe@lists.linux.dev>; Thu, 30 Jul 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178537263368.990.2342375548887258929.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f84213daeb286ec9f376dc4439627170f363b02747805d01ba730e35dd65745d
Date: Thu, 30 Jul 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785372633
