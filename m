Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C107211466
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787716234; cv=none; b=PGzuj57myPdRdP9o9R9nTMtwViEnY6nmgPGNhv2VYqzziQ3QuCHBQyu+UGPmYBatYGmmE1/nnoqoorr7wPlLf7T65cD9PVOvxfCginTalHjbGtI0TYL7ztlxU3Q2+Gkl4uMR9nM8q+GN9+6hK9Vrl5xDNjaAy0IOaylQYvwDP6I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787716234; c=relaxed/simple;
	bh=mQtaplpUj7ZXH+/U6yX0r4TPkveVALLYHU7fnZMh05Y=;
	h=To:Subject:From:Message-Id:Date; b=qDmIkdVGwr9iSspdg1Lf6IpsA/PFZNMbQxVqHHCJjPGmjsJ0iYZnpgrEuiY5FJv5RswyVkivy3QVZxbYyaz83zjPALysc2KM83g5aL+gDzaRdO3t9JdmaTFaOYUiQwJaP5kTKZ7yw4q2Ub84iU0S+FwMYtfYvJhWksFb8vyuj08=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acWcfIB8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acWcfIB8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3ACDC2BCF6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787716233;
	bh=mQtaplpUj7ZXH+/U6yX0r4TPkveVALLYHU7fnZMh05Y=;
	h=To:Subject:From:Date:From;
	b=acWcfIB8ofwLm44WT42S1pgND9RjHp9GfVzXp2XVlEFH/kg8vIZfaAPGG5/Pxt5CQ
	 iOEIPuqMoAkh9e/cTw8rbnDNDhfYmXJYrSp7Lvxwv4u3LyLdxxx6/cqyXofUB8tBzR
	 Lbm3CJFX5mS/nJmIbxinvH+LPCtSt93nAij/Bw3bDZt6gElRjVexCaQRRbrum7nHqx
	 2uc4/4SfJEd1Mk5VnNcVyFJJjUqE251ZU+RyYX5fbl69OhYwGceA99IB/LhFbO6hBC
	 E5AcltIWFh1Xg9DZjeVMymC+c9erLonHIGH8Gd7RqTh0AqKTXPnXU4vz//pKiVuQ7P
	 wT0Ni3x6Ru3RA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2036C5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178771623369.25701.12274553183231833442.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0beb910dbb224f1a2f6e9d9a6fd9b312dc159643f0236e2d393ee42ffa4b284f
Date: Wed, 26 Aug 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787716233
