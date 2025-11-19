Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A54B19DF4D
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763575314; cv=none; b=JkUKNOkr6Zk+queHJ+Hd6GsBLtzU+eZrLl7adDW9LKC4SO4vggoaxFsIrSbaDhaKYSFHQ6jSm7WJ3yP47wuHhkbijCMw0C6Bv/RmU9eiM4ygdtLt96uHmgrVVdIKE4LDEiMUn1yg8yMeOd40Rqpo0k1JND9QKtm5H0pTtuEEJVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763575314; c=relaxed/simple;
	bh=br5vF1Bk2vJqsdrUKRwTH8gEZJr6VcQG5C5cVZzLk2I=;
	h=To:Subject:From:Message-Id:Date; b=cwwSCF9777Wm94z5bXDLWCj/yAQ5vWHWQL0S+LGOkdcKaFkBpD5fCV1nZKvlynPuVkwIO/FtnCsbXsYFhTQTMRn4B/9uOQqioCBcnM5oXWBadoNeNmoXgdWyC+DfJMz4KqrCPZHMiddcM73ZcbVIfgIjWEP5++GdTcw15+Edlug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q8UQUby7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q8UQUby7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DF09C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763575313;
	bh=br5vF1Bk2vJqsdrUKRwTH8gEZJr6VcQG5C5cVZzLk2I=;
	h=To:Subject:From:Date:From;
	b=Q8UQUby7oefFfD/6SQDqOx2Bq+1ObKStqSxkI+kNmNW62n73MIhsUVK7i/cQe2PYg
	 NjGHeiiMXIGCeuhdI6BiEj30jd8/VwRhF5SVZCJtTHra58GVHl8Nk72kdcOi1BDg06
	 RR390RescnYPS2JnnzqkDdz1tCg3dMqTGLid/bDk2U7BFQ0ObxjFWPCGhKPW+3rmJn
	 GILXmpbOZO81KfQJ6yZdloletFXSosuypIjKazILMBSUjyLBHrbJsVf6xO90YTpHMi
	 eLQ/lbkCmgIMLPTBT9NTiTRxo/fl6tY7fszWglsT3nW0hPaAui1P4XD4NMchY6yiaP
	 CCowp1FqDDORA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD28CF58C4
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 18:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176357531358.4389.11073689849520420017.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d26c5dd4771439581b9c65449b4263cd3eccfe64009ee680da8d440070c2062
Date: Wed, 19 Nov 2025 18:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763575313
