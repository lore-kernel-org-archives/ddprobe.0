Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDEB3BD62E
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787740234; cv=none; b=lLJQpWYVqmoc3210Eu45o9OGqusA3A3zKpkBeDHoViFDY6v5XNL2lTWFC8Mzzy+tKBkzv43U+68gbCg065c5su8wK9/JWl/fFj9m0o7gczxOx4cRMt1vStN7ZvgNWU62RkP+h5auzYJ4zD3IJvDxbJoQFazRV+GT9QLi5SE1fg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787740234; c=relaxed/simple;
	bh=fjjgZ7ETrG5B32bjYEK0pq2s1hVR4HguP2/jdNviS8c=;
	h=To:Subject:From:Message-Id:Date; b=jXG265hIXOQvoNuU6tj0MZ1oh2fShxL+qvU99u7k83asKisfSXEWs2kTWjk3J+DplM0mCfO8IpG12wB1Avihi1E3auWVqgsAgLNllJg5XA6iFf5xlnVfGwoMR8U3l+ffbZMN1M3gsKMPbrx4Ff9bQirbgJGU9JmFlmBiXCePXsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tgzme5cW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tgzme5cW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFE37C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787740233;
	bh=fjjgZ7ETrG5B32bjYEK0pq2s1hVR4HguP2/jdNviS8c=;
	h=To:Subject:From:Date:From;
	b=tgzme5cWYxD6NciKHKzDoLrHJPq3zaeblf+uvtYrEp509VhGbFM85SJV+02Fz6Y6p
	 Mmjm7KakyRi5320jb7BQEntKyRjt2Kf/QOi4ulMKmsK79jEFwSILIPTcHpXFyCP2hd
	 eILF9u8XlnItKaBaiycn3PJTTUND9DalvX+qpyaTOmY6BvcIqG7EsekOhlgx6MC+My
	 h42NLL4Oe7LuU7UZwYHrKP37bQiJHD+nA7HiPLAYd4aDSSrcMNkD78xRztM5bz/DyA
	 /SfKq2mHV/VTmZeuiDX38zSVzQyZCZXV0PdjkQyHBhOi8vDsOZQueKWF6sESi4Jgfb
	 CjYmqEpdlOMzg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA38BC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178774023368.9232.2799626493315078201.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcb871534f51bffbf8b34c1fd35f7ac0d65be08a529aa1aeb9169bf461b652db
Date: Wed, 26 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787740233
