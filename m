Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01BCB364
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 00:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1707525497; cv=none; b=aSh3Guv55ivm2Q5plBn2xxH5UPDWZ82C25zA9/hY0Gh5NFgcFBk1do342NHlvk79JEgp6mTMAjFyDGl0rbgXgmKALHXhV14sUwT+nHz7nCPPLkSZyc61iEcR582fJpicB97iHSJQaw5pVt0lskJqrV9Yf7CbmQWlxdvEfm22gfc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1707525497; c=relaxed/simple;
	bh=3aKhKIZ67aFniHva/SishVJNCGquoW0T+r1I931UDb0=;
	h=To:Subject:From:Message-Id:Date; b=fzPCSPJJz0IKNBht03pLcvOCv3UmTNSt9BOnUuKiPgRx28pDQYeN1hw46qzwLrSxeaCn3ByWp+qfsJfcKKvUpYXrUSvSBR+lN+1d8JJnWuLnciTf9sl/L5fwzCMmXvycPfqsThDRXKGnBTmLuilmWt1/QUh1VLRMEg69qbfbeSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vAcmpI0O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vAcmpI0O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 79467C433F1
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 00:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1707525496;
	bh=3aKhKIZ67aFniHva/SishVJNCGquoW0T+r1I931UDb0=;
	h=To:Subject:From:Date:From;
	b=vAcmpI0OxbikxfnyQpO7s1r5KofWRMrL9D6iBhxhyisKvHi39JWUWeL6OGTtjMf3Y
	 u0Kg1rOHt7DtmSZ4pv/sSPduYM3gNTksdmK5JnMGlYcaooyfkAcJdO99CDyzAQN1wH
	 IgfjUJ9tK54P6yaYfswjvI2lN3AWJwQc+KRyjbwc2WikbSr/ye2tfdTYywjhxWYlhh
	 2sqeaXck6uoGnnYEFs46tzaU5Gs2JBuh0L9pEvceAOBJQ/Dp0azjc6MRqZDLi7mgIp
	 YegrRxrgTbOhPRcWEOQERE9+xJ2YWTZkKzch6YW+9iDoShrDfnpIIWYbGEVXp9dug1
	 QDiAxIudwv4uA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F0BEC48297
	for <ddprobe@lists.linux.dev>; Sat, 10 Feb 2024 00:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170752549637.11216.4472442859941523207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 145f9ddd23efa762ecb50e29967cea6454253b97e2e2785b493b2c2956d78a49
Date: Sat, 10 Feb 2024 00:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1707525496
