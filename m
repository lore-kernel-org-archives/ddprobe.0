Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F92137C90B
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788205234; cv=none; b=aHl907nG13fLGqrLgAQObhFTdxDTS+YveJHvXFNwS268u42+U48qh2IPtERK6J6+BAPyqylPXjQRpU8aAI8PCZNtVSSxbAUQZcsZuCu+/sT2lomJsxt1xRrMaPj16kycnIySx3go0bHDm6heu6IhqiiRDpskH9zAWt7jhYGpQWU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788205234; c=relaxed/simple;
	bh=pocxRuhG75PU+XS0YF9rza+IZtO1omU0wSkcBf+TrfQ=;
	h=To:Subject:From:Message-Id:Date; b=tTrOYvNwg6L438qin3nlrpbM49YJ5O8zqdVAk6AfsM+MgNmjHr/e/+mpMjVrvRays9m7sjTU1+DqoNDg4vRFvMQQKt5PuiCUBEM448uKI6V6py28/pcGkG/80X6jO+7We1xGUWXOO+8/VnLOtLsm8oEi3vk7x/nlGwjHExFxVK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qxXsIJGk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qxXsIJGk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6B8BC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788205233;
	bh=pocxRuhG75PU+XS0YF9rza+IZtO1omU0wSkcBf+TrfQ=;
	h=To:Subject:From:Date:From;
	b=qxXsIJGkSX3ACNqH+oT73gOjivlMopUYpw5+kehcTW/jw0U61ev01AxvP4AlPqliw
	 guKC20q/vZ0taMhRf/qdHfhiX8KjOY2EONx+3ecqQ5yRcowP/oEnAgTCPrvRMd0Gqj
	 lXF/kznzyX7FPU4wCKVAI5EBseqPZ9jlb/VFjxHgv/judJYJaM+irKfO2K1e/R3tCy
	 nG1lx5AHh06jBziddCVY2piyZ8Vck9V0plJD0Ckry23w027mRJGh8BZT2BLZ4tcVBN
	 1hckodtGIdBUbECHE5pHHgSsR7g7NrNKLbz0EX1T7r1QP0GT0IPBGklcFk/LOO7hIs
	 jx2UE/tZD9Ygg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BBD55C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178820523372.1949.9038143454110208257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72561e0634d21c677f500b9057b31d0280c873bf1e157bf755b6aad6ff82df3e
Date: Mon, 31 Aug 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788205233
