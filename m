Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F380623BD
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 01:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710034097; cv=none; b=Xe0E2zDDr3ZfGpnjMRaaquM7H83kC7H4UoEKWYHCAIzstr8wM6guSxJQXY5Ud84aqjd0eaUP5BqR49AQ13lLojKJtxUoqOOVyVCvK5y44eScbUCNE0ipZ6eUAcqHd82xkaaG4aEqXhGtMTAmom92nyRRkYsbD07wA5U6o69NFuc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710034097; c=relaxed/simple;
	bh=PJtXzFiec81iJ25wfcu08z2ow+WdiMS8D4rCNdS3AgU=;
	h=To:Subject:From:Message-Id:Date; b=X9tjKhxImpi4AEMKTeE9tapG/exjl5NKZ1kkBqgUiaRwprK2YLOdX8v/9VkWYMFr+Ul4NdFHce7yKr4qWlDpCjN13pLIsNtIi4iGsw1qJ9ROdS1Rmwstq16RVHTQRc7VhhU9dVxwDyGVFr/uPZ4eaZrJTiJODT/P6D8qppOJC6A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fx7gquHM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fx7gquHM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8170BC433F1
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 01:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710034096;
	bh=PJtXzFiec81iJ25wfcu08z2ow+WdiMS8D4rCNdS3AgU=;
	h=To:Subject:From:Date:From;
	b=fx7gquHM46KaW1g0as2q3UIEE0Qq0YqgrXXL2tK7WTGaU5ShLYSaHGNCksSEhbu0v
	 iik9AXO89U2sjfa4k8RF7HGUwMl1qL5tmeopgJl5C1/dJC9Z1mtGVWoj8GHBgR8fmr
	 6uHZ8NiFlk9bRjECDKstFARaPLcD/iolmvv2Y0E+Nw6/AHLt7yVoHh4psbKutlxchr
	 nJMj4a2BkWZTF54OCoFD09karqcWgU+hPBEDHoI0zasjBjlnLb0stQX1TWef5qEsDC
	 SoFyBfFAshzUEzDThH6CKNlnmnix3ozO9Sxi7kjxn4DHRda1kEK+yJxSle0aXUAb6z
	 qqkJxbyr7myxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64076C54791
	for <ddprobe@lists.linux.dev>; Sun, 10 Mar 2024 01:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171003409638.6182.9531811085501873685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 323b96ee37e3f200d7825688a25d38bdf81cdab16a48e678dcf0e38f0fe53c50
Date: Sun, 10 Mar 2024 01:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710034096
