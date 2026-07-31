Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4749C3264C8
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785501634; cv=none; b=qLUsKJYbWrCs4hxFSdOtg/sZOJQQRJuZDSOmNcuIzN6P4hnzk1nj4SXtYILczr98t9SbK/9p6TfMav0Yh65wD/9kJCuj3Oqhslj2lufzUZz6Prxp5k424KAs3uId8WoFdwH8vfs6VZa3uU59lMmFAFD2u+m1fVa49fiZl5R85pA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785501634; c=relaxed/simple;
	bh=4SW8tsefGtKVFbPLtyW503WZ+5Gde1z0vx1ngTMupd4=;
	h=To:Subject:From:Message-Id:Date; b=s3MEq9sMZSe0VpVR+YFFgw6/y+AuRzzYlQ/F1SwtNF30c5GgWU5zskjXDr6iBBgTMnm6XWmDuyKlrw/KB+zjoyCvT0RXr7GyIsBEC81kedtvmNpsgPC8GWH0DSFe0LRAUEhidpBqpZ5CiL49KVz70EA2YOcVSo240p3xw3hmNM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TZyoBEwB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TZyoBEwB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF969C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785501633;
	bh=4SW8tsefGtKVFbPLtyW503WZ+5Gde1z0vx1ngTMupd4=;
	h=To:Subject:From:Date:From;
	b=TZyoBEwBvo3IrdUPcLZjmjuB6H6kEJFrBBFZ9A4T+uwWv0SW6fHRk3SjbYP6vb9xY
	 LUIpeHoRcn4D7gbSnulnUZcLqfUuQuoYdZgyEAwoOEUkZ1X9J9QpJKbA+Z1xTe3gKz
	 D6gVQ9HYwnVb8zWgBTwnTvjgWfbObvUCZGEh4HhQwC/43vrvU6rJHic60IEWdi2lV6
	 qZhUgkXmThVZlSwd5tkGRrKque0U6nC+fMCtdevtRMSZjQPc5ot1G90ZsBcIVexth+
	 r71Cuqz5IO6y3tLYWPH1j6HHbDw6hB2YkEFy7dNRYAhrnbRZaVErVmGU4TkKlFr64P
	 KOMT/jOCr+Iwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC00C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550163369.4371.14513562878915858530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3955d4fec96aa6832a95954de53f73abc599054b4def08d6b744f22de864cff
Date: Fri, 31 Jul 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785501633
