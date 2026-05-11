Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19F6431283E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778512834; cv=none; b=eif9Ie/jW/6+0Oo0BVUmwoAedRwyb4nexfwtrVU+6sftYazDFMg42Lwv8VpAURzupooC0LlTUqBO8FM2VpjnklrmKJA7S7Bh/KE2drV6MPbUMYTQ4auS+fHVrekrAIzWKkJ9osjcMJbtjQDA+Ltj6ByRXttYVHeynteCVCFw8Rg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778512834; c=relaxed/simple;
	bh=jYg4KzgFZJotwAV2ILFf9cRD68pB0tke5A+PXol72ws=;
	h=To:Subject:From:Message-Id:Date; b=YY00X2QGDyqcLtp3ed7/Mcl4//TllWztx44Ksr72OmM7mOZNIXQgESA78bQYe5mZxRLctd8YXlP+GVfGxLmaDqW7rjYTBoOIXGkeQ1r1imEh1auH9lJeQPARklE6+zlJhH6uZJYpTAGQh2ZiBM3ne8M4c3kNgyFGGtXJwBhHvEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MElfecX+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MElfecX+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC893C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778512833;
	bh=jYg4KzgFZJotwAV2ILFf9cRD68pB0tke5A+PXol72ws=;
	h=To:Subject:From:Date:From;
	b=MElfecX+tahrSg2HO/nmgoHrpUVy24/kPZrxOyiWgWoPD6qWaISU/wAh946BaTjA+
	 YnWCub+mLqIekyYQxoLg0FsV98gpBgxlTRfV5SUq/4qSHjcSONXJZzt0CbaqFomPrr
	 n1ZQjqKlYJfcb76sS6SjRL4ggXzRQ7LSi7iXGT3+TpgCy+Vw6aV0sE4AitF5DtppFO
	 lhputfjsdJSOIZKLx0Jr4KqyeOZk7fWXQBZkgULfPTAwSX/ulX007hm9jJINfwiQfe
	 o/kckQ7+c8LISqTTDiXJl47fMT2Rf2vg8Thy7amaNp4kpbX0r1w+nuxngq1KXdKrAr
	 kZqnq+Mxbr2Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD203CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 15:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177851283369.18565.14354772016684562690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30e9be62a6cd9b71e336cb93f20f18a1e84c5d0ab40adb4fdea9cd8af27c4bce
Date: Mon, 11 May 2026 15:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778512833
