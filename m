Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71BEDB640
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786256434; cv=none; b=t6Cxjnw1b1YlroBucP8rThN5et2UOn331+Xf41XpE2pNMRUtlV4OhxdP2brO/dgptJWUa6JEKTSWjvneOb5nwbRshvWc9jSdlaWPhZTsjwbMGjFlZh44pLDaWAL0xFEMN3eJFXO9P5pnQ0aYjKl+PL4qnkhxpe0ZWegt5NxhYE4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786256434; c=relaxed/simple;
	bh=UTEaKKKWOOv8wx3puwQPAi9KU4kFrtMcrmnSR4MAK44=;
	h=To:Subject:From:Message-Id:Date; b=a6UdSWu+ChioXxIZraBy5B+gHZGUUE3JYdnhZOGIwczMBd3IcLwX3jPekKMUjzWlm0i8fVSSv5WeTb7b33YbBT6iNCupNxebXOpk/LeVU6gMfP5AnYkcJxcVX3l1TZN6xnAs2KLpdtgwtPYHm1MV9xR4R1Vb+U2/WIuRcgO41jE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=b8ualvEv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="b8ualvEv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9A2AC2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786256433;
	bh=UTEaKKKWOOv8wx3puwQPAi9KU4kFrtMcrmnSR4MAK44=;
	h=To:Subject:From:Date:From;
	b=b8ualvEvCWSsfQlfv81P9PDHq1M5qqUeNO+GEYNCIafDehY2GwOl55/saBmA8g7jI
	 E81y4I39w0OkJprr3MmK06JLIImg8pdxsQtsizOnZhbl05LeSEmINKTnYW7oFxta+/
	 6b1+Idkg+03Jkc4mZ9e+dbvIulWF0DpOws9VXTBVT8RPjW6UEuJZ1N6jbJtzgk7GfB
	 6R2zVOZpkfO0DiXEqz12zOszizxv+A1/6lnC375E8Sz9tN1tOPqh5QUpVZs6JdnSLZ
	 l4+mfXhLFhBDyrUmbb+bPj0vHXt++DmX2A+6Z3a2+s+v/DtzEtvQSljPQYNlI1TQKH
	 7R2g+rDJzJ9bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1169C5AC80
	for <ddprobe@lists.linux.dev>; Sun,  9 Aug 2026 06:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178625643369.8061.7558430543370930809.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b32604697d215e44ea32854abbcbd2b9496497a5b77ad53d1bb9579f748d7518
Date: Sun, 09 Aug 2026 06:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786256433
