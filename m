Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4679C1865FA
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734270954; cv=none; b=qCOTyoNJjAHeAVipkUtfxaQx4DZ4Zt4GlU63YhaZjInlVu3aZK6W9KYX/sAvZQy+BsUJuOpG52D101Mx83WFId1mq49Phv7FxZslwEeZRoXyrmOfLVRDT/vBSuwmsIvnDZcm1d27fIr/WYWaHiQStpgSCPR6SMAaJqao1tj288Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734270954; c=relaxed/simple;
	bh=nB8LTzSm4kYCe63flkRfre9l5smE+Qj3aoFn21osMvA=;
	h=To:Subject:From:Message-Id:Date; b=kghB/YqtM6A1b99quNL1vYyWmkX29LzT1mS1GYSJUL7JoH/63gOYXqyhSpKx9UTnxFFzgFHgcAfYTqmMi6uoDH5BwzaUSIVQfuwQHmbcVGRyIn7XVbUPguqsY02N6lml+j99P+UIOG0drYyR/HgcdmxD6s5Fb/0cAHX0ReYjO/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4IkopSc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4IkopSc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5A8C4CECE
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734270953;
	bh=nB8LTzSm4kYCe63flkRfre9l5smE+Qj3aoFn21osMvA=;
	h=To:Subject:From:Date:From;
	b=V4IkopScmJzymchPGqexPWSc0i/5/KeWb67xMnGltPb2jBtNYiJVIT5bMylAANJB5
	 vK3xQvfGayiuaqi58LR7KX8M7NfZD96v4+6oB3S5vz/TLpJDqA0g2mt6QJQ3tz7THT
	 kx3JEA8pCzGRTmazV1m0c90lAR4kPX1jlWR9ze2RB9m5pP9+jC0GC4He9ormf6JXgS
	 Uxph7WDHsstaoB1YvFZ4QrNoGy/bRlcPtvcVNNb6i6dG6f3Nt8KtR484qJOUXdBfJY
	 Q0hLvrdQzdC1aL9nBp67S3HJUajDpdasZapR9ptDUXVwof6IkmWnWxJZ6aw9cTACi3
	 av22U/j6O9g4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA90E7716A
	for <ddprobe@lists.linux.dev>; Sun, 15 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173427095360.11095.10817007789646446762.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a8c6c955670435b31e083e47760ff10cc7e0093540565ead80260f265850414
Date: Sun, 15 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734270953
