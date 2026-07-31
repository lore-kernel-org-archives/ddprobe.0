Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DBB14052C3
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785499234; cv=none; b=fmOG12dTMOD4vm+AXAn8J6rh5V+WRZ0xgJ51XnDowv4XzuIteQxNLo62DqyaPcZBX9Knxs0NWoAtL36LJ3tTAtA402gxMwTaUJCO0emTpvgL/jF5wiP+StBTTcQQbcbmvOXM4CBjaE/agntUplT/7xGvJ1nMEH0MxHowiZBNlVE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785499234; c=relaxed/simple;
	bh=bTgw0edZfFHsnFVUZUsQi2p0qdDEG92x3pjTOMliFF0=;
	h=To:Subject:From:Message-Id:Date; b=rZgwL56yIcYKYzdKXsYs7C7Y/7lVYPKELgebAF2FRa8dNPC7hmlnphxD+88wR5Y8YMfpp3GkQJRxuUeVi3l2ZeXuhX1yfHeP8sXXFnJDzUr++B+EiIRu8wKhcyAqRZuReqjE033OpOFmAzjTLFJiCbUey39SuWR0laXuFaymmbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QcF2SJC6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QcF2SJC6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1ACAC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785499233;
	bh=bTgw0edZfFHsnFVUZUsQi2p0qdDEG92x3pjTOMliFF0=;
	h=To:Subject:From:Date:From;
	b=QcF2SJC6pu7IXSmqr5XiZhNAADHb7ZlFDvVy40C1jp9pBnbUj2UD4cXFOf4iNpaEB
	 phDyU2ArB4QnkRm0e4s8RzjDCOTGnPcKO6F+GvPu5nWfWYkVv5wZcUnKpYNz+EzprQ
	 6vTo09kswmXE2HwGROw/GpjjUqnuaAVyvfbauIDqZip4h6vdIsg+znpZ0q1iydQW0D
	 J8zG8OI4ct3emw1hcY8JFoAaSzXud8VWnv6zMzO3r8dhwMGJDUGEGNBhGJbJ1UJC/o
	 9+riOruYWr8oeDspC7YqyX/0Xk9RZfbC9qQ+uqw59lzSKVZALz/mp3SEHwK3jygGYy
	 zsVF45GRHXgHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD2CCC5516D
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178549923369.3888.9777926409069236979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebd448ccd2ceaa54f0aca6a0acb3f30dd5a53b3911aa8495f7dbbf2f4a896607
Date: Fri, 31 Jul 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785499233
