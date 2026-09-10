Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4764E30F7FB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789001434; cv=none; b=A0HJAgFudOyq2Ler2rIo1WseAzuo0TlcfYjqgQtHhBv+YxUK3eUjV3QGBX4WDVwsCP6BvY2w8uh9OXdALrMPiBDPtmz3BJGlnoeiAbbI0MRYM9duCWw9JCc3GI0Lqc/O+3FpqYvSqztv17c2UFtV81Jlywqv6wxpgqxN/HXCZFU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789001434; c=relaxed/simple;
	bh=bVsC+q4wf9fUFMB1wMSKYIgPymds4HbA0X3r8mryTy4=;
	h=To:Subject:From:Message-Id:Date; b=QV1RDbsm2ZSLShLrz4cItsxHbTRaEQ9zT3IKCKk84ar7J1YZwMmzG8MmS2sfBNhvCxiGwy1iD4T2F2kvqPUvzuHIqH9UcecW1tJzpCNh7OuSchDo1Ki7kTsNj/dUVRhLGRj1h1wkf1c23mJhKO83Ygfl9ofbO0E/Dx0SGkNy68o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tNPfNolo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tNPfNolo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEE3EC2BCB9
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789001433;
	bh=bVsC+q4wf9fUFMB1wMSKYIgPymds4HbA0X3r8mryTy4=;
	h=To:Subject:From:Date:From;
	b=tNPfNoloU0UbAt7TIqBA/jAdzF6N3k8HEMPzc8aTJnhQOBGR86lmEsfEhtabrWsNy
	 9CM6gjFquCd3ODuczGdcWaxbN3BmeslaS5BdGmQ+O8pXmt9Yia6zBbQq6Bep2h6RnC
	 VmUj9uEZrnnXlz+asQuUD35yWj2qgGJ+NbnzTtb0EOQuafKBjyxChSHUES3gJDjmVY
	 nd/2nRyQ9lCy1wxYuqBw8LSYqP89OAA5yRWLTBlzsnue6+mAiflFM+sgTIu6JKU0hW
	 Vvyd67ZmDnq1+zW4G/aarPazCgti3oi1YpR+HH5kaukJMH3K9Upn+zlOqqkZ3C49Zp
	 Lg+vt3ik7X0Ug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2BAC79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900143369.28263.17477508595284783373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cfeebbba0d0b30cd709e08bf2f08b63125ac4467fbe0b4f2664b9d68fa380124
Date: Thu, 10 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789001433
