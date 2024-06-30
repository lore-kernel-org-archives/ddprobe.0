Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 751B1800
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719708263; cv=none; b=CtDMz1IgtU9dDRJb0pujpzFl15Y9XpaPOHZxWadt68wKr5yu8/thcfnNjQ3Iki1YIBw+Y8ZNUUrIkuMnci+ocMVyDWqzaGIruwV6OD/8QVYOHqpUkGj6LBzBA07yeLb+e/F9QpkRq78oOnNhD2/iwjdP90b0/HHDWMoJ6vDOMfY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719708263; c=relaxed/simple;
	bh=eOGIkey+SJ3U3BGw4vEO8tJJlG99jBEPEKuICZI6yD4=;
	h=To:Subject:From:Message-Id:Date; b=n1GhSv//ZWKA+LG1eRHd+KBJ9rrKFkAg5aBBGkLIIPXm2KBTFOk1PG3K7UIWfbAYAYdqlA3dDMnX1D/q25LR7CiyZS/ucS5qaJWHNn8IkIE7Py2adwqeZumvUZUPdw6z10ikl97ab5+AYvzIbNG/0wxVpuML2Igf8Z3A/CnGYJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KjPRAIn7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KjPRAIn7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4795C2BBFC
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719708262;
	bh=eOGIkey+SJ3U3BGw4vEO8tJJlG99jBEPEKuICZI6yD4=;
	h=To:Subject:From:Date:From;
	b=KjPRAIn7bS6zBtrzIZmSVQ6xixA1VpkJnCs/j8ix9JqeXVZ5/1UxeFrrXsZ4YrLdR
	 0F1JFAm/8JK7EfUA+oqydv8WEIQt+puODiOEOtLv8kJoJ7YslR43KoRASv91mJkKVQ
	 8BPaKULVNqastCUb8+pv3/nfYfwOvrinJJgr1OwEvXhSYq0KvCL1Onh7Kkit34iKst
	 PKC7LkHuytGbg6pRI2yrPDxSeHg9NDVJ93HnViPiGuAteWCmOTXBnkY8dJfU0DuR8X
	 oNuhrd5dQChUsoNZvLnNhWZrzGnm21dJVYB1VjopYcxd/gvdMZQ7acZKvMpRffmh7h
	 rFbnUDRDLT/bQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF5F5C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 30 Jun 2024 00:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171970826277.4960.17205971204127105950.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4872e254a60122d0a7feb8f8126fd92a45d9827c862927fe77c273122a657a82
Date: Sun, 30 Jun 2024 00:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719708262
