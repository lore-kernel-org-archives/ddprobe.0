Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2147B1FB1
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767499434; cv=none; b=dAn7ZDQGmlwnm4ieBcuM1YtU/DLsxR+AhkDgzo/OskobExXf8XikNkqxPiis7ySrNx+qeeEJE+tCk/q2nCb2yBKHrZ8E4PQUlvew5z8i6ZW9sCRmHZDhnjU0sKT7mjyGnaV9AoA+BOKFtD9zLFhDzXONwYzBx3VFnGRHmsUUTlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767499434; c=relaxed/simple;
	bh=g3VODwi4qX7uC6980FrtLepPT5pAwfirIxp8vJj+1sM=;
	h=To:Subject:From:Message-Id:Date; b=kADoTGkoS+tVVbWr3tDzLvor8jxR3YiDULqlgqWTD1sV90BK3tPSMcsavNZJERJhGQkoXacjJuOjJyHbfr/wA0sh8qwuLMYy1gE3UYK+KDQYMj+d5S1o1xDxFVrt6NS3S7fZmvE3J6vA7xJXngMP3pUT0+2HknOORj99brM+CqM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uycXZJFX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uycXZJFX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5710C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767499433;
	bh=g3VODwi4qX7uC6980FrtLepPT5pAwfirIxp8vJj+1sM=;
	h=To:Subject:From:Date:From;
	b=uycXZJFXt64IdT0fPjstnv4zTIltpYXe9wXeQZsyp6s0qKTcol+AchRubdEAKlZZI
	 9mQ+bcLvX3q4A3fheNx5GUsN8KGkkiC9U+EWRtZLaHCbkLhA10JjobmLidVMUURtSf
	 f+sQOApTMMfpnhybr6ePB5ARoqRwi1k01zVvg5vmErji+E78iO84xa/Uge8augwWKn
	 5qiNxY5kdd/gp1uuLxZjQHZaBIcBTRhZpuGQZAowIo6jJPPsNOzbNf4vwyw3b72dnF
	 w0n0Q5sgs+gSd1q4d8WgHZj0WtmmMNm0joKXgtIwaBI/sT10DiaTaxb/sTUxUFAl+Y
	 1qE8XfeW6i3QQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9313BC2A069
	for <ddprobe@lists.linux.dev>; Sun,  4 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176749943358.20057.16134160046426570173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 20e63848be3a3f6c3c16b3bbd5904eed7f48bdf443ba9ca7f0632424746f9689
Date: Sun, 04 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767499433
