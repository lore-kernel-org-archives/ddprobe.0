Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF751DE3DC
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:31:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763958714; cv=none; b=GVUo0AFsApXbu/aW1Us/xszdAlcdTS7NmjVfXf7EYjXW2EfR3T2agXYlR1eQdxUzK6voByuxKOqk21NQpNqQmnLExU7FCqwF/z1ixQnPliG6ADy5swrVDw8zIoqVbUl8rlVhJ+CXZgMoXheTuLyfafecnGUMgI4WRurIQZ48XeE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763958714; c=relaxed/simple;
	bh=yAhTBqpUqCBVrRMINGGuKYh6MxTwZgtXa45+2OjLNfg=;
	h=To:Subject:From:Message-Id:Date; b=i1U4CgRKLUNGH6Yk6pk1RQQ6LsBvteaZ8GDyJVVykm5D1ZJ+OGV8kVH0agTtOJdLhp1gh19mXfoYu/mlZD9+SpcoCuFB92qpGYrMsAABD8xMmbYhtlv3sc+B6NbIEAUmlAJgjektbmGJkNJ55hxB9Bco01WtJYnay9zr2kTJxgk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hrcn2jyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hrcn2jyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9D76C4CEFB
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:31:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763958713;
	bh=yAhTBqpUqCBVrRMINGGuKYh6MxTwZgtXa45+2OjLNfg=;
	h=To:Subject:From:Date:From;
	b=hrcn2jyvr5Qb2P+VlstJYMd5fIH7oxq+L5uNI2AKyYFKKRxSuET/1+hiTR5lijOlo
	 mhHOpkDH0Wc6Fkp5VUrDs5X0sLb3RcAMWIkwUu0cXLtGgG+Bvpv7kC4S5GDLUzYfx/
	 QAu//HUcaccwGES8C/Q98m6kAVz86wJB+8qtXUb4kQMjP57F+ltLaI5lsUCGtADxlj
	 ZA7tVYz1ZfcFbHjdZ5AwTa4D0sQWZDFF2cwf3QEvyrvtmd6PDwiHwnsjRNT3SGN1l3
	 Lf6VWV0pKWVee41Zxd/T0SHgTGCRvPCojs2j92MAAdLFyAF539rdQzEZpDyJpI/Zrz
	 9rZmsrUyCX6DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939DACFD313
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 04:31:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176395871358.32580.5242273374936606290.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9b0759d8d7ef7329b24714d31a7bd09aa91eca3c95ca7d9a39e8e0a2e1f71190
Date: Mon, 24 Nov 2025 04:31:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763958713
