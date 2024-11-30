Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34B3312B93
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732962354; cv=none; b=EoT8rEI4i2CBhFBo53tp/PqtPc9olrTSiWsGet/xpFeO6ABQU26vcWhpChf6jNXcXggZ8aiuNxgHk5uBb18YuTU2G0ZspnE/etauCz3EsfcCNjY2MMLCwKb65iORhYZ4tP0eAbifoW1hEpaHieiNvz7OfRMq/26yZSxT1pyL8Zc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732962354; c=relaxed/simple;
	bh=gDAKJlDy57gntNkSrnxQuKG7lf1jVWUz6j60b3Nxbps=;
	h=To:Subject:From:Message-Id:Date; b=BC3khV0+sNqQ8ldQFqdOmywyGNFVGabSJKVYhySXLYW4Sq6NvGvswrLV77yiKWg6lGMHOJYNuYEIqikO8NmpfnVY+VT9ZNqKOygY4NttB7rAXpdX1rz7IEIny65Wlde4utZwWsaIx69+PBHXAZRmGQ9SbP2+v+DPKeOn+CFaT5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z2wzjSvJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z2wzjSvJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6E3DC4CECC
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732962353;
	bh=gDAKJlDy57gntNkSrnxQuKG7lf1jVWUz6j60b3Nxbps=;
	h=To:Subject:From:Date:From;
	b=Z2wzjSvJqom9fbqX+j3wGy6ElZzFhX0auAQ2yJDiDmp5aKnGfZUIWr7SD0Jb0or9s
	 x1Rlsrw98NkbtqUG/hcW2OOp78l0cahbBg1KvVWDWoqPeJsgIdoF9PTD68wkzds7Mb
	 Gb82ms/VRbl4d+j4fmQrcrAFv+d9+tNLRXkfameTpJ1CXkJZY0vY153hdOJMyOjo96
	 b2+h8lHHte/W2UcS6OKfQDiUNgd89E5efnOU8ACFy5WqHF1v8Rr/1UJZZXCnB0vU5f
	 hW5WU8e6BHobZTyFIqcfXu+6sxwy74R7+8u1wj8jDGyxRNKCamWI1MX8Fsw1+6sKwa
	 6wShWLeOUTcQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B4A3D735FE
	for <ddprobe@lists.linux.dev>; Sat, 30 Nov 2024 10:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173296235359.6369.14698240080558137329.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf559deed2e4c45b6668a3e0e68189efc067fd942acb29b7e19934c60c8fc12b
Date: Sat, 30 Nov 2024 10:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732962353
