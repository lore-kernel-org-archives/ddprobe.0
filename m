Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51B18171A1
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713383363; cv=none; b=GmPrnlQYkqH0xvGIzqyrv1tjznitU9qZYnA8L19ydB5nbxYwZY48R4t8QsG8ioSMmzfrjluY2AVieJizSoVIpKgSj+R13C0MbUCbfQcBwBYWoJUVXxP+sllN8NI2X5cSPGAv0l4ct1JmvRwBEJ+KLuv9g66IwE8weh7XUF7MHMo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713383363; c=relaxed/simple;
	bh=XYeeFZk0BSpy5bQ3zVXDn4QyuQmFClwQQpjZpGwZc4Y=;
	h=To:Subject:From:Message-Id:Date; b=Tzk1XnC+ig1H9+q4pn4KLdDZW3f8Ye3gwLaTD/ImNZdWQDv+b03skzRLhy49PMt1bWqzD9GkpQLzWccOYQcDwhqidocR7FlWoOEProsZdrHas6m6MZEJ4DP+RAeVf914zmq5z9GxW4aaIDizXyvVxrr4Kgf3mnPXBdb676XYe5M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O5ruNLJQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O5ruNLJQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF84AC072AA
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713383362;
	bh=XYeeFZk0BSpy5bQ3zVXDn4QyuQmFClwQQpjZpGwZc4Y=;
	h=To:Subject:From:Date:From;
	b=O5ruNLJQ5JkBjMAHF3YFJw77xqo2AvYuniD+0hiTySz5Az/Jsq7r67PU2No0YzROl
	 WYNz7dDty3FgAlmwS8mBStem7Jf08JaWD84tz7mgC08V5HIUhL8+54kJXC8ieMDRH8
	 tU84tcC/Npmo7dXFpLPlrjAdnnWmnVFn4ZjH0XgFaJxOjbVBqzyMP+qScl72D8+hL6
	 XTOkc0sx8S96CtBUBkekxWrDfG6zSkKkmhGo5fl1K0zT6gSihpuvAwjJ6ndKZdsXof
	 u1yt+VX4hsuJs7lekA/L2ya3t7XzNaYnyP2ElOYHGf9mbD2SjSqSTcRlOnpkpRWHE8
	 bgyfmPp3w3gcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC036C4345F
	for <ddprobe@lists.linux.dev>; Wed, 17 Apr 2024 19:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171338336276.2275.15175515185735685283.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4a73f9f343efeac58f2723fb3959f0268d806dd61b76a443ce77565e78fd154
Date: Wed, 17 Apr 2024 19:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713383362
