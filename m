Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43FC4411FBB
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788387034; cv=none; b=OZVtl/bfOaFEEFxq9aCg4DtCVfDEFq7AHEeIVhsO7rheEagGRmXdiKBITmXqd7lCHbyWxI029lNvSnWxJjW8sEsiCA/50X2zU+PHK9Mb/uj4ucxdsdLF0jH4R0wfONmm/KUpUfz0edjY305uPeKZJAw67yCbOnEPgOY+1qR29pk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788387034; c=relaxed/simple;
	bh=uAldBrGsqrsolDpRrQz3yWsInQo96GLqaHIID46rXc4=;
	h=To:Subject:From:Message-Id:Date; b=C6AvBJlyZnmP2sR4fdXoIrxdHdFVDL69tHPXNhB3Hn2Co0kjsM+37u45dKxVtCah6uYNKqQ/JzbV+ItUIg/cubPZEiypgrfJkX3D9RwVDsAZ0fVDqB5E1tfJwROMH9wTJS+chOG3GAttx5EaFl2aN7ZPGFy75uKmvjwJn22Exf8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dL4YZpUg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dL4YZpUg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAC7FC2BCF5
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788387033;
	bh=uAldBrGsqrsolDpRrQz3yWsInQo96GLqaHIID46rXc4=;
	h=To:Subject:From:Date:From;
	b=dL4YZpUgJQQ/hughn7us5i055pmf8uOr4cSU6AY840abG8t4a/kG1Gg412rYjn2c9
	 VHepZW7ZxGU3QETbt3W+HhQ+LgjQoj67uroKsy8qM7HRixk9+O7OZgPgiT30EBy5Ke
	 rC+8L4c+V3gEiiObLoqo7z5MRkOFB2z3NpSkcxMgxYiPL0bma09UcROJOtmcDJKwRs
	 LCAHw5En1+AnEmbpb2f5zEGpI3mKOwyqylk7glv+fyIN89R2teIpcAotgxqZhorerf
	 hOSjdo5o5aKUQSiZ4cfkduTwHBqnbxbVUmmfpwolarsAGmr5YkWBrB1CQCK1e1Dd9i
	 30q/Lxp2D2jQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3A8C624D4
	for <ddprobe@lists.linux.dev>; Wed,  2 Sep 2026 22:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178838703368.6426.1955135174278202274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5bdec5124539ad0d7bd92bd3288a44ba88e8f8847c884f17a15cfcc174626b3
Date: Wed, 02 Sep 2026 22:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788387033
