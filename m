Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C744429D281
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761745193; cv=none; b=Q0hgSJMDhjU74zyrQLytN99QD2V0I9gLyrt6LKKLEMlhL6u862kymhIhzDCYSwx4VjfPD/dRtvRqDvILyx8BbVUYZ0r7HkDqvJOKiXoNVjVy19dyl1ASgLgR1xCN9TbOFbyr+DmCiep79qZKjFMRNgOt0d1jWdmsvl7W1cROxgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761745193; c=relaxed/simple;
	bh=65YDJLC/30plcLgbOtpWTpcaLK3F/jIBHuk4H+0yO2A=;
	h=To:Subject:From:Message-Id:Date; b=lhyprdrkGNw+8XaItmW/BqS40misXBQeziMqSMfaFFifMddSZzAkXXtqiFKNIOAmpQRvJjJ05WCgtB7XiPkxNlkiBTJ8n8xRCxVn09Cjz2QS/Ol1fVJ7mTe0SvZzSL1lp4tUAGDhTezGje5YvfcKe2z9xtDUaiKbBBVDSuZKva8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Kt+nrIKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Kt+nrIKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F66FC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761745193;
	bh=65YDJLC/30plcLgbOtpWTpcaLK3F/jIBHuk4H+0yO2A=;
	h=To:Subject:From:Date:From;
	b=Kt+nrIKDO3n2xymWshInjNB+D3XU1DsjZM0KF1YZnlFgvPJi/WLa0gx3H3Q5r2aPw
	 ejRzID7xc9Iogdw1jZCr9/qdmR5jNBvpQtVVh+/2eij5D5hllDyzcCNB4r1PeqeBzs
	 cOr9frqM9kCpRpaqqn1GBES456tBmWs1H/fRxBK7ZiWciHNpvpjOsfQas4iCUSFqnW
	 AL5ZOXyoqHqBPQPiu//ZymQPX7aCnmzwFFGswwp7Oyxa7Q3If/ozK61uNi8Rz2ppYk
	 ExXzWvOHAg0z63pRvsLZLsyAQgfMLKL/EwnwiOPfh0aQIZHMK8nkUrOqzEjpZdoqEj
	 NDbqpijpShdWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD89CCF9E9
	for <ddprobe@lists.linux.dev>; Wed, 29 Oct 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176174519358.25739.7902258411809766181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e226ad1499f6aa78e4ca1ef7ce6609aefe2c5c09c6c528f20f23b796517a00a6
Date: Wed, 29 Oct 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761745193
