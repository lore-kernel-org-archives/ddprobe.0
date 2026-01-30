Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2585D611E
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769731434; cv=none; b=Ji8kgaSXHfi9KXRxI82PVxFiobQBeUevxFcPnI7U3x+0vrEG97+X8hmF3eStiyag6K+MrL2j+KKgkg7kYSX55abId/rr44j46wj9iOCuCJ9cNULH/WzHexg9d7yWebg1O37Qk26Kl0qiDGHY7J9zWIDxWgzjoUtz9/u2yfM5GQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769731434; c=relaxed/simple;
	bh=HPAFsh5xqYFX4c4TRgK0rPs5vPuVCDDBU6ytmhb/Lck=;
	h=To:Subject:From:Message-Id:Date; b=S5ABMNxrdpfeNIA5RbSVzLKIP3vYdmcOUTrdUd0x3lRUjBnrEeIp5Cm2GoiMZ8HyuoN2bRWgbKBDZKkPy9CcJHVkcRv9C2X5dAxhyriTKpB0UoDyLIH1BnOG6retYsPfR8QTn3XTayxPxmcs+4SUZhzh4SJD1kW28s8tZ/uuL7g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cI2S2LmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cI2S2LmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D3DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769731433;
	bh=HPAFsh5xqYFX4c4TRgK0rPs5vPuVCDDBU6ytmhb/Lck=;
	h=To:Subject:From:Date:From;
	b=cI2S2LmOgFhn9Gbuz9jgua6CDJN07l9T4ibBnAx3Vz4eInRuGP1t82PbuDCow++Dy
	 qe7zeJ5CpEvcWibLiR8GDeXhLLnfC+HSo4ocRuZ4k6mFdEa2Jk1cMuDTEeKLqmbOdX
	 mKymB6kG2rWBZjtOCP9O5mQo4bffSUNJ+Yv8irk4elWYy/3vIKVfkG6abO+NbGkW7u
	 Wo3TNjhGj6CpZpqoKMM+YC0pxvjJMj96I/y9yAClcLbN1HtdiXY2S/kQMFDcyAywWK
	 BDKbNaMHsOuTz0GtPP2eIXzk9vSNAD6fMfqwEDpt22QPwaWA7h+gipFOfBBUYZedU+
	 0P6Q5pkJfaYPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961CBD73EA8
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 00:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176973143358.323.5238896927241345145.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7ee3dd63c5c4de429c54c6d1cc65ff28578748890126edb360e38019633fdc6f
Date: Fri, 30 Jan 2026 00:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769731433
