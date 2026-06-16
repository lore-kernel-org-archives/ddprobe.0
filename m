Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DF3C37F8B2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781648194; cv=none; b=Erc+FWRu5b4HQnFctCxciD1cvlWDqUYsbM1sVy6LuhkpX5rpYWLQeIg5ZDxjaM9xKNwRH1q/8I+fT4neXUHcgx2X8mCig97EiVncIXF1VSh3ro4oAqxA3iQRqYVxeFndZnQWPH/bJoomU3h47wE/Qtt8wIHm+EGDrnFxHHWubPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781648194; c=relaxed/simple;
	bh=Q9mrUoNGIsFAwyC82JPv9sTK3mwSzBdnaQcGdWvSrDw=;
	h=To:Subject:From:Message-Id:Date; b=KJAx16NN1wahLtrh3mBNogFhgX954LC0QlSWVvJfmdowz2lbbgYeSp/cEIMa+vIdTEwHr7VDhHaeVBaKWD+G03RMpcsha0P6xjNchQsCGfiBoXnuQwAtr22LBFA/ExRD6A47c7Lv0xwSU1x/2jqDivkO1d5MDVZEeHafkiw4aZM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lW1qmVKs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lW1qmVKs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFB93C2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781648193;
	bh=Q9mrUoNGIsFAwyC82JPv9sTK3mwSzBdnaQcGdWvSrDw=;
	h=To:Subject:From:Date:From;
	b=lW1qmVKsFr38YfU0hp6n3gsLs3+UQyInSATsYl0Y0U6uD/oP+rVosAz9xwy2SB45a
	 /sVccmpxRfEGeNA4Rv7aRtdjn22EEuSFZPMv2nexmSwMZk0eawraIFx5djQUeG+6/J
	 NIJecUAdd44a1kplNooZ8eo5A3Wuyo5JlnemuJzKulFj7XU4T9tQTgY5tUkBi+fdJJ
	 rhqGTI52nbui34SG8jIXX02hJxo+HZIlQIRfhQEugYbg4E1Vll0JCoyVOUGnLfFE+p
	 w1q7Wh/Dl7SMJ1/KNQTt0/3Zu0mgut3zbtcek35bv4l1auW2RaWmQX6pCx3Tu4klwX
	 oSdn6T1T4vrgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF6F5CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 22:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164819370.22917.4276249998277316040.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59daae6be05ea9ad1e48855d4d66c0586e0aee33d395fe2ff165813e17412d04
Date: Tue, 16 Jun 2026 22:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781648193
