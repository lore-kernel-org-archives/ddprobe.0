Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 324971F94A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767763434; cv=none; b=oBomrf/NpZ+JwcMAU+lUqm+0bywOk7m1w0+Cr9EEURbEX0QFwzIK7j52KEPhqJJz97MwnqvCQ9AiPT9n5DbsCms2/NJg6+CKvnCwVNB/fa0BuYzkSpE6SJXjT4slx29RS0KAGGfWFGx3HlYyCsr+1XejosMYbgBH3MFv8D14iFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767763434; c=relaxed/simple;
	bh=J/dqg7rNmcxQvILNcyOHODdRl1tfnUBw5Tx2uS5WcPM=;
	h=To:Subject:From:Message-Id:Date; b=mBLE0XkMoan4LIwRT22fmNHeDu94qYW/altOAHGqljSap2j1L5ejxq9fvDth1ivqsH/B0iic27l/QVRJlipjUOcQFNJutT7/o6pqkCvLSTSIqQHIklmEHmeqkXonnCQVVEzK0wApbQxZ/fab/af8eRT38MmM1VZ9PpvK8PhxBA4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jilhMhoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jilhMhoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B53C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767763433;
	bh=J/dqg7rNmcxQvILNcyOHODdRl1tfnUBw5Tx2uS5WcPM=;
	h=To:Subject:From:Date:From;
	b=jilhMhoUyir+fnJpTsXMLXHvcNJd3jgqPX1tq+jjlj0oifwwuJ+5LecGgFBzE75EY
	 Cm1rknYllVBg16glHUDiLZ9TlKlCIP4dYLt0a4VtJm+KJ7d7eOcrh85xeBYTGsMP66
	 gStV3U29/S+JNAgT05WWDx+aANVpPdAyLT21+N3Pa0Yyw2vwz7BbqHtA4EBbyj2JMh
	 7Wv8TLMKwav1SdB7xGdDqySgPzE7uBxH/adOvwPzNK2DfCtGKQKT/T5m/sN0loe0Fd
	 XpHNfKTf2o/vQqJih+Vd1QcSHpnL3uqzz6n0Z5S9E1NoFOE8mlUwlkisIXbXYiutdY
	 oPZUrdfGX7iaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CB5CF6BEA
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 05:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176776343357.10639.11513888036136639712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f439b25ef8013b6b4af9f5bef2fdf0ce074b9c9609e940057b9d88b9581a3933
Date: Wed, 07 Jan 2026 05:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767763433
