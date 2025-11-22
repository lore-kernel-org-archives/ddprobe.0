Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1049027056B
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763788314; cv=none; b=i0KFFvwfmMrc86oyE4Ty0tqsyuUq+t7Owo2D/ikzi98IeywLEwAGDkCaPDqzBfc2JhK8F7HviX3wa/RCNReO+LT/eyI5qZYlEDBmkZndWp4AOZVzYMILSejMowNW1O1kBLwqgUjqQwqPmiGfKI92MIg0Tp51XlY00zr+/ulDivI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763788314; c=relaxed/simple;
	bh=2ULww/fBRCX8ejm9COF4c9q4u+jfS/olDYdTadvxOlQ=;
	h=To:Subject:From:Message-Id:Date; b=Ml4zNKX4QABnMgzoxCsiQt4uwsIf2m170HOPVTdG/zrHkxwFdzB6mMkPGoWa1frRTngkgpWtLG66hkZ8SJjNmU8WKrg8Uv4hUoUKQCueESvOjTGBC+anljCcalDtOiNcxjWZz0xV6i9bQ5DnlfqUBZoBu598Z1Mq8APnFi/L9L4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qabUkuP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qabUkuP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABF0FC4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763788313;
	bh=2ULww/fBRCX8ejm9COF4c9q4u+jfS/olDYdTadvxOlQ=;
	h=To:Subject:From:Date:From;
	b=qabUkuP13INWlVMFMjH8J3VgHN9S7fDAc8DlrJfxibJK0JbhucIdgeQLWIa1A6+8z
	 1OK+w57sVIlSWPUAAZR3zQqyaLR75MzW5imUE7PVKRbqhz/6VgGqJvZLmiK/d7zLLU
	 iLg24UPWM1n15ZeUez1gHfOYvtmNANXsLnfSqVVlFseP+4fSwik7EdcG0WPlkwSSgP
	 Zvrce5EERBRIclQobWtJgdz894DwEr6J1Cl3pcnI1du1GUnCecYF2z3xybKzOyYrDR
	 V2JvjMNsxFGq7TCNwIK3+VHr4j3kV4ucJxrbhKcZLPCct2nZkKi7y3jUQD2WyGcdmC
	 sJ9REamHfghiw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A15CF64B1
	for <ddprobe@lists.linux.dev>; Sat, 22 Nov 2025 05:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176378831359.31521.17552875786162950198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bff4a65db28f5fa058242d1d703927a2e0ba5a3c062aa1435af70cdc7c680c6
Date: Sat, 22 Nov 2025 05:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763788313
