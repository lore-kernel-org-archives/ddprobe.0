Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2972327453
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755383394; cv=none; b=DsApdTcUQt54SkyMj0QuW5ULA0GjG5GgH1/E5xqc0y77MvIphrf56JwNAtYZrGsPcdFjA180kba3bt1sMmR4rYAOASB1QUMG2Rhy37oQ589G84rcQlMwnsWmA5OYwx55m/t2EkB4hINUzGe5xlOtPAm2uWuXKWzm/m/ic5tO6Lw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755383394; c=relaxed/simple;
	bh=XrNkc+ggKtALgFo6F8Dp/2pcP/u4B2QgJ3aYAFowASk=;
	h=To:Subject:From:Message-Id:Date; b=hZmdEAMvludo/aSMFSm8B0ijEfYOqXx0/GxsST5uw0puj0XAhO8p8ax1YTjjPdbOq85IQ/9MFxf/5L7KmAAZdsvmHrPm4/igLt2J+lGB+g6DP2n5KSt1ISmOHvR8MqRkCJRKpuD7g6IvK6dvFNmolqVfwyulL76eczlUV3ZoBc8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=do8+v4HT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="do8+v4HT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4CA5C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755383393;
	bh=XrNkc+ggKtALgFo6F8Dp/2pcP/u4B2QgJ3aYAFowASk=;
	h=To:Subject:From:Date:From;
	b=do8+v4HTjp+DXLfO8rS9sFuaKxnS6Z87Mwi7M7fg2KJpBkfTK08l0o/jPW9Ftcl/U
	 BLAKnkkFaJd+BlUdS2cZx14h4vEeQHcxbu8yio3ZPtYN7ejA0apKijunqU2+qhgCcX
	 6gCXe0lgwCJsMXNuRfnuJclxJ4ezEiyPrNZZV62N9CnCKAt7eGQ/vDbtXjzDusjwot
	 0Id0O6Aq6Es2QGz1m/nXhj+1s0HohFN0DSlqmieQNvFZGth6bR75F67pwn179ljUnJ
	 rwGWRs+Gl8nzOu1oijlQWG+7DIkctP64BK7UvQY+dlGPokW+cCZcZEuy7nTE1Om5Ks
	 JjEKjdl4cVFTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C43CA0EE9
	for <ddprobe@lists.linux.dev>; Sat, 16 Aug 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175538339358.1221.8866226027422262789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f78ea218df67403d5c512b16328dd6d86c5f6cc28cf129b03276e99e51d1c440
Date: Sat, 16 Aug 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755383393
