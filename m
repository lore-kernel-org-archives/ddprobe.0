Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DC5F13A863
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:18:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718309903; cv=none; b=T4rMFSMmVh5bfLRde18SQz8s0j+uGO7t8GA/9nMku2L9xsfVxwH1qbGac1x2vl/cRfrX8Rka+SktFe0T8e9iw3EZVqtPb7cJP8f+w7esP6jSsqAZUBxvZcCN8VR42yLMhuSkoZSUJeXjRt/UlpseXB7ptQJ1CbVWcIbsBGYUlbc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718309903; c=relaxed/simple;
	bh=0BBUi4EBfc9RNVZkhSaV5peMec/Q0CNnyd0VLVRVI18=;
	h=To:Subject:From:Message-Id:Date; b=NB8eiUYEY3ZgUYeXy2G6cFC7TQuGWDrNDnUJeO0qyFu+TBQUVuJeehALOPRxX+iAzANtMcjn4+2SUf+R7J5e0pAel6FrcW9565/snKOJfgsqh3TVEYkdGBuT/OxtMJKhvT8x64FKztqZgIoMu1qs69dryuY/wlfNKonET7OsLE8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=I7masN40; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="I7masN40"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBD00C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718309903;
	bh=0BBUi4EBfc9RNVZkhSaV5peMec/Q0CNnyd0VLVRVI18=;
	h=To:Subject:From:Date:From;
	b=I7masN40zxUbpVG9wTBq9Rw3eyp+kXFsM8mlYf2DYGqTG2vyNqQ2p/Uu51LNMT4S8
	 /GnFh7E5AbYx/hccglUBPzXMBq7CiREuNPqdWgF59hsLLiNyUKiX+O6D+/wfFDY7d6
	 x3rvwev1WmvxJG+LdnyBhGpj/7m0TSvxWo1h2TIbWEiJKG1jFulD9zZFzIzxZy2I5M
	 drdai+nZPddQ/l946ZLIfNMInPcbHaefQgZ1l5FeZGpJmJ15fMu5NAfrgOBSEiP+bM
	 07TLDqcTnclqPAgcbxhcJ80Arx9AyU+QfP7jnQF/GydyDl+wd4ELNzvkfPgaZkQDdY
	 lZ9sM0gLyn0uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CEEF0C27C4F
	for <ddprobe@lists.linux.dev>; Thu, 13 Jun 2024 20:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171830990283.4668.17376850593981899921.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7cf208a13093513f314bfeca6ffa13d912b9bf52900f514c0f1c97e27246264
Date: Thu, 13 Jun 2024 20:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718309902
