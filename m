Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DD293803CC
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779534154; cv=none; b=dwdAl9TxG9O+2Pk+wujrm5sEhqHRbOXye5Ox7MGEqEHPODT9dXq+3XT+FHGudHECJzeSBQyT6L+YYPlotyEqmStcpq7G5u9WjbwnbxmMkVN/8VDXdIf+U5p0KVMdcp1cllHzzTfFps6pyJETsC9WrLVD/R6DIaFgLZMc4LRADwE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779534154; c=relaxed/simple;
	bh=rZSPUIZKI/9IGld+ltmy0HcwP238ye/MiQ0h4PM6/YM=;
	h=To:Subject:From:Message-Id:Date; b=oHxYQ6breOh5LPowXh0XFmgC997BEERNHBvec4A1Ma9OJW78Sw4FT7WlxKL+eL91ak0ZFaOfUE8E4F7pDyoERFd9ZZvzKMrMROL2AHpDU+biKBxiE/tN5Yoh4TAFgjGHov/kD4mRv2M+7X0Ei5UGd8HbX2lP+yvTzWBFCDqNs1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AH+8fFkR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AH+8fFkR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEA37C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779534153;
	bh=rZSPUIZKI/9IGld+ltmy0HcwP238ye/MiQ0h4PM6/YM=;
	h=To:Subject:From:Date:From;
	b=AH+8fFkRlZ/Ap6x+SFC/NQLmX9tgzcOv27s1u1wwHYGQhqo/gLKDQs0Rada88uu59
	 uEvhsIk2ZyjLKxONLMiFZptwKAzc5DL7SEib7loMMomwgihr9nEQKdTS3XED51aSVV
	 ntopn6qgmn5zkhplsA5hRXAIzgPIvQ4vdUkbEaU2toY7p6z3hK5/sNtZ6Ld6/7axiE
	 9TW78JY4ZEKSjavbI9nJLOIQMowEkc08weoa6eCr8zMAJDyR5NdAlq3l9K1/WTPHGv
	 Utq6FMxNcL3fMjXbQt8pvW/uuVdFRu1tLHkfxxKkAqmiAYnxVJF+EDDooaQvOcBlg0
	 Upng2Xk4je5lA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADB7ACD5BB1
	for <ddprobe@lists.linux.dev>; Sat, 23 May 2026 11:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177953415369.11950.12793078231239238080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1975603db0598a8f04fc2cfda625221922484e2964b762ba14a584dbb87e51a1
Date: Sat, 23 May 2026 11:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779534153
