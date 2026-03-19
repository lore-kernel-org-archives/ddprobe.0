Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 147F7375AC4
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773963294; cv=none; b=LI+gu5VXVLLq+pFtMXWBapvA5tOsa75bA50vOKC/WJnydPg7tfYl41QiMfhtPnFG+C86atj10NfOb224Y0wC5wi5IXA164z/2A+/ZtFOmlwRb5agQlbmod6Ky9iSAoadETLQSLMq9yvybVWZ4CRI71uos7QQ6qaFLwhcvzy1adQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773963294; c=relaxed/simple;
	bh=g05mu99/iESS5d2QV5V7id785rMldGHHVIgHPFn6/7E=;
	h=To:Subject:From:Message-Id:Date; b=Z2godz1SJNvqez1r/rqwZjXMEmWEsWZ/eKHO8Yr1HpqNSQdzXt5r9JvQvLYg5k4fjz5ZPmWStIYMg2HF0UdeH8cU6mtt0QC2zhH3ETINPZLLp3nwIuSbfkhBPTuKMBDxJOOyPv6psOq4lrmyee1lHkhpb+W2qnVykrNbWqlCDjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gFxHrJhO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gFxHrJhO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22C1C19424
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773963293;
	bh=g05mu99/iESS5d2QV5V7id785rMldGHHVIgHPFn6/7E=;
	h=To:Subject:From:Date:From;
	b=gFxHrJhOOJ+VFixTdLbt6en7g1TtJ06sFC1Eu0DAW0wtsjEX1u5vXqExvgA6rslK2
	 NFR7C5Q0gTzweXnjrLa6GuzUO945UGyR+y+UiE2rxwXIs1PQhpK9YKLqpq8gZEbdcS
	 oQVT7klsyERBnfGy607/fjfswLHSryWzQxQVfW5kgMMybKsFnW7Jb2uBlxSELbFNv6
	 jQoChKW8bkETwoC/knNjKq8LHTuuOosImSmMAsW9df9HTxipNv5TBrd+fpvMZs6qLE
	 RGkGyK+4RBjinuU9qcT7GsBHDcy9BJOnRxqMFrTBZ54oCEDXSOYmVwQvDgDhVxDa6p
	 dmpUF5fL5mi9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920D41091931
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 23:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177396329357.4992.16099769179813552397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18abf2ca14ae9ac07e10083977852f5fbd66aa9411ea9d9d015e0cfdb72f7f6e
Date: Thu, 19 Mar 2026 23:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773963293
