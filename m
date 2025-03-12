Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2FA6B15CD74
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741814934; cv=none; b=Uh4ZRvouHNgq5BeVEdpR4g6bHH4chhifsrMqcXHHRLk9rXMqowrtavAO+c+ZV75apjjl8ImOePCs+JnHVRlPD+MscAAOjjma009VLw+GOioZZBRBwI+V+62oYaSz+yUXaAzp6EHkTXJOIZKSoxuBU5uAkvuDliiwHectgCIncp8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741814934; c=relaxed/simple;
	bh=HofSvFcd1ECMuQUNxQZRgY8mC4wZy1Lk+X+nrFrE2+U=;
	h=To:Subject:From:Message-Id:Date; b=M7f/8EhvQj0maaZhTV4RIzpHUhMsNTPDnowTvK8qeu9wOKv9thIRubapKeovq10dGs6GnsY/saASf0cV+rNcl9a8yO/iejv+KYxW13u5mLeIGA9M+yxg8MdwuOtCxdqWsRcXPrZyawvB4E2VvcPrLrtygJEDYXPTo6GXbNdO1xk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbynBmF9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbynBmF9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E14C4CEDD
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741814933;
	bh=HofSvFcd1ECMuQUNxQZRgY8mC4wZy1Lk+X+nrFrE2+U=;
	h=To:Subject:From:Date:From;
	b=GbynBmF92ebrdQYYW7slMGU+N/L2PSa4oo//1VYgM+QfKjmrRbjfa2kio97KIkLD8
	 c0Wu1Xl3OZai0DTg8YfFPmT/wC+aZr/QCp5STRO4RzoafnyVjo1VxCGWF1p1Kp/vIR
	 Z8EyyXA92jgnibilBTe09RISx6Ldcm1XFR5ng5UBJuBW3/PiHsiI4c9cy0Mpi9fOYw
	 hVejWraIPjjaOltb8uMK57Wt5+i+HV7iQafIZYeGYn4O3WbUrFTEQ4qnGFkMrAxD6k
	 zlLNi0siP+DrUaBej4BwJBGgi/sSjcdef7z5mRp7EAhyiOc5/qC57ZIqqfoy6+wmBK
	 Cw2LTkD0GexhQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 932BFC28B28
	for <ddprobe@lists.linux.dev>; Wed, 12 Mar 2025 21:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174181493359.11271.13945850183910131795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb583736440bce72fc908a96c2918d09b181b46ed4220bf895528e26bf73c17c
Date: Wed, 12 Mar 2025 21:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741814933
