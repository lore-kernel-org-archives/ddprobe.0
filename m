Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EDEBE21C17D
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768233234; cv=none; b=o9SwifJAVo6J1/ISBNbqOKlpa/L5dEflVgRI1X3GJ2cgefYFU6IHqag0UvuJc7fZ+i8a4XXWZiysQ8IECxZk8H7vpIhIn4Zkln+AaQ5CvlE23cLAG54+fgWynGeifAG08mhM/LUpvecS/mbbIQt50dXPuZazOpvQ2kuGY40YQ2Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768233234; c=relaxed/simple;
	bh=QHoCw+UjlIvR8wxU0ai9w44YSkye0Vu83qHbDJt3tWs=;
	h=To:Subject:From:Message-Id:Date; b=kCw0s1uj1ZML/S03cgbWL9g9JHmNUX5NYAtjRVm4cJLXIC5qhWc9nEFH/fhKplMsrJVJhuBuGr5qLA0UdrqYjl5Dc5MQGZs7FoeeT3XFkmCjqc3/wmKeRvH90ENgEtQkZLxCgotEZj2MBbh13D+TQxuMImxithwGeXrAS/eqEeM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QmJUiiao; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QmJUiiao"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F16EC19422
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768233233;
	bh=QHoCw+UjlIvR8wxU0ai9w44YSkye0Vu83qHbDJt3tWs=;
	h=To:Subject:From:Date:From;
	b=QmJUiiaocxLRXQP9cszjDySKKUEz7S6eidw9jAYA5zi+MtQXGJWN57QawRGR9SMKz
	 Og13fxQT3OhjgrSYdqiiBa6v04HkZ48UdlsT7lo3dy3QLW4wTOAPeMLasnAcN0joTi
	 ULAYLA9pJA/w7ozIACBS72x/oreXneyN1mjnwWWH2kUMo4yRV43GO5/fkFwS24tOD/
	 z7Ui8aypK4OTtRFlGg4/WCf7ygC0wHL1fDtBfLS2U7W6f1almUYwWaYJp2pbP13qiC
	 dQV4qiFgLI4EBVWkiacvsQEFnbQrU+y3vhhv8WIaoAgzzPj+JILdIo8msrdNbR8J82
	 ui8SYY0QVZ0Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C2DC9EC97
	for <ddprobe@lists.linux.dev>; Mon, 12 Jan 2026 15:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176823323358.17555.2364533878178430156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53429ce32a596e68440d4b3a653a16c63b506eeadf1b72752fa4eec5c276f75
Date: Mon, 12 Jan 2026 15:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768233233
