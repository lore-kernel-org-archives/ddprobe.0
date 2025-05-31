Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 482DB2236F3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748689794; cv=none; b=rATOW2bVaqcZ2Kkz5J2HPN2TUcAYjm3vmLStBAy4LQuSTEEfVMTata+9sAZclEHc7DohP5yFBa239ujRqoFd5pWDQs4mZm7XvFY3ItEYh7Nm+/4V5SUTUnmMR8QZMYwbH74M4n9aO9P/4V9cDMojrjzNdR6rYFS8rYGWzAwSvB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748689794; c=relaxed/simple;
	bh=4TSdNaCUVQ3iwfgxA8MQdmXpvepdcoaJYGLv9vex64E=;
	h=To:Subject:From:Message-Id:Date; b=R/RtHxQoUdT5uu84VvWa3loS1TTbLz9M0WP5GUr9HxV3KT+aAl4G3fiOFUqoZ2PhqRa36NgW+X3/9SF+O7YsTvGqXKvTvL8Unz4FDao13P7xtPSmot0X3p8RxB+A8Kld5IqZpaqVfLgebX7G1iQSjZ6J98xPTYwAGZj/UnLlFsA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=buB8F6Zz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="buB8F6Zz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21F6C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748689793;
	bh=4TSdNaCUVQ3iwfgxA8MQdmXpvepdcoaJYGLv9vex64E=;
	h=To:Subject:From:Date:From;
	b=buB8F6ZzTALkKSKc23FdkufUZ+Hg7ExzugInQF4EVLF6meuHi0SNSHPXBg+BaJoVk
	 NFzcY7Nuc5lgoMY5WRkZeTj+uRyeSSoi5c+IkSda2TIPZzEgWrYaMQPv8uNLXT+0bk
	 ISMWQLL3YUGJbkZb9aE2TKk4lXuVeuOJWKD9oncfMzAcsSu9/L5gBmS4EDbrGL/xJe
	 qyfJcEqg5ftK3gs41MltVl3wKk2LzYVdoXwMXsvk0oww31oIga2TGjotFjvBN2qbhl
	 Gi21z+ZRRSSWem9XjRT2EvnRp3rvzUnmBihFPFwtj3LbHa4Fd4D4Di9ocomXBUgZkj
	 EQnehdOQL+iQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E533C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174868979357.30081.9863945269525502551.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fdf757630b43cebbe07b0a1cc022e491d9841285ae5f9cb392c6d04cb66efa
Date: Sat, 31 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748689793
