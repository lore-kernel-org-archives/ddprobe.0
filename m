Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36A301B85CA
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746309594; cv=none; b=D4zi1kuBecM4vXzeNtgHBlKu56Q63l3zdyzrlEYQ+4m8XUAvlMez2y3isaoLhPY2WETrjxk6CMl/IAgUK3sGKT5oM7r2KP6VFu2k6tnbyibKC6Z5Ty25K9nYiFOT5ld3HO05cK2pWAX+v0/pV9eaqdalf8uycXFHdciBDDuhnc8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746309594; c=relaxed/simple;
	bh=3FOOk+rgn1mCyHMObbK8RAjE9g2kca2lSUoId1Ddbdc=;
	h=To:Subject:From:Message-Id:Date; b=ratQ3XJb4RxzDvQIrdR+3zkkr15auV4qcTPuQMvn6g0p86lNjHT23BvrWZHeJ6OjqxtRje9KymyNCMaIwREYBsvCFq0BhWuV/jJJE15xTyRmFeEQ5VCT6laOIp+9QByhkHW6/l4tiYYWIYHClJPUNLQLtmpHe52zQ1Z/LVhEn9Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tH1+jjYN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tH1+jjYN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42AEC4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746309593;
	bh=3FOOk+rgn1mCyHMObbK8RAjE9g2kca2lSUoId1Ddbdc=;
	h=To:Subject:From:Date:From;
	b=tH1+jjYNv85PQ7Gw+LUbwBah7P9rdnQogwOQeNZF/RUxkUlK9Tr5i3lcO7kJCyfOn
	 QOJU/c8QQm6vFQ5MiCJWfTpWRzaNpbl+FbTGulk4WU9FHYzH1rbzfeEo5YRBMzu+3v
	 jFOVon+TYtmKvrppsiXNvabyOJm/KrqSAzmln7zyUOtUocgoYmQ2v3psz58wniEW3F
	 OKvTOcjNF0CiN5rr6nvmAetZzNXchDBim2pSaj+fskFKCHtuGjgRAY8Kmevsg2nCkZ
	 QoBvfq47jxWdP6jrt84rpm2/c++kBL8H2g3ljtzLDSrSWpGR3pR0swFrvgAF4QOoYI
	 Cxa2MQ271QCTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B91C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 21:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174630959357.30967.11587335859315919237.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de99f94aafa6890a7d5f1f90cd48b3809241ee2cd440e30fc39234940d27da34
Date: Sat, 03 May 2025 21:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746309593
