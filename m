Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A792B9B7
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767068034; cv=none; b=HZ74b/PbbfCpcZaKufuA980k21KaqwOiI/iFfCgxDvffF/AMqRJTGz7bwx+WatFHWFArwzkHciCdXrvPeRwil99vjpprswEqPeD6E4E+oJ/x0YleixfsmaiMIqrZtlIFjC01Si0x1Prx/m5wXVCBQoUczkpqORZW2fot0Yqoaio=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767068034; c=relaxed/simple;
	bh=CG2qM5Avu0WK4cfWNl+YwXc1ePTUTu+W80VOikon2zw=;
	h=To:Subject:From:Message-Id:Date; b=fxia1Bktn3qKo9ACwDUYyGtm0+suB3kejHFFaZza+AJzg28e0NE5oPKpsIdTSAyKaol1YdKmOtis0WaNgm3WdHItGClQ8jX4i/QptAXPujl/fnCAcPyvuw8H+qgTzxw5YCrPoX/IDr+DiRJ2fcWPqp9FYKCnLO1OwGnYgce8G9c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vs1Y0mRe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vs1Y0mRe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A568FC4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767068033;
	bh=CG2qM5Avu0WK4cfWNl+YwXc1ePTUTu+W80VOikon2zw=;
	h=To:Subject:From:Date:From;
	b=Vs1Y0mRef/jk0BbOv41OD9+26Ma9YzQCNo7sr8A6MuspYLbZASpV/VEZw0U7lnP1v
	 6oCFD7rdF1auluDTamxkKjtKWtirVwpzhTO6em19Y2k7Ze4nY6KYqviqIgGGY/KnNL
	 kgKu/TM9bn64+zrtmzIj2douxL0o43mXk9ilUnSC8GM1otTAH3JaNxf4OCnqPlMVT/
	 mSpt6MKT7YcIRW3t/S+csQfAUyN6oYgF3lQWKIItzyhhdSogdPeBRyklcKv5IxSrP+
	 fD1fSQkOIzqMaNv3eKuUVCNsUJZfdKRLlCnrvgG61wRbCM3VyAPrU+k5vNr3zSWXRa
	 F3cC2t3wtM6vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 946D6E9410E
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176706803357.5817.10265274979953133041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e28dba71e545dd9e2e7bd45ec5e6ff0a4c439edb40a6b49837e0c303d9b0f8c0
Date: Tue, 30 Dec 2025 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767068033
