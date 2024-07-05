Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BB4F13C809
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:55:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720169723; cv=none; b=YKDJmfZX6P2phufh8CHDqmLtemmeN5mWX0BNbD/Sc7dC+9IvMp0jBrbfHzWCe3ClvDjLujjYK4rixtFz3o5I+ZzDECiu5Hnw2WusQRNOWypZQsJgbsNdLt6XRONyI1Oqx/L+BAUedzTGQ6ywrT7rPc/Cgg/hK4B3d+CHGh1Q61k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720169723; c=relaxed/simple;
	bh=NnYLk24TOKAKG51mBlm596LO9BPhEADuXN6YOyAfL+Y=;
	h=To:Subject:From:Message-Id:Date; b=HqIRUusT5ThSSdLOsvS+Ew6tOmJD8Ct1Ka0uAxfVq6AHeZqZoIGg4LWpJaPO9gh7UT/RET7fnesKYng4AbLKn6jwmEkBHsBy2evTLmtjVIk4BhhZRZijliYIJ3QzqqglCY8FHNp1foGIh2nbj6OcwQCTBhbwJ7Tjmt7rW9Q0u5s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K8wOBOBN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K8wOBOBN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1357C4AF0A
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720169722;
	bh=NnYLk24TOKAKG51mBlm596LO9BPhEADuXN6YOyAfL+Y=;
	h=To:Subject:From:Date:From;
	b=K8wOBOBNblQjk9MgwttAkOiVIun1GHgYR16M+1AxaN0SCqKFIf8T1uSMogOrL0Koq
	 TqrvwkAXIHt36AL9P0OiTPpoVW/rS0zDLnaKOGrjAjn6u7HBD0P1dB+NzrqFVSM7P2
	 S1mTEIgozZJu4u20JsifGPLoRvfTuicDQ+HQpym4uIQj7rPdR3t3IY2brzcHPinV39
	 W+2waegbOsrSqfC6qizcAu/cCNt7taMI9UJVZC/oUxhwWEa7JGhdNAw9XWLfNszSGY
	 di7I5aMrmga9KkuJ2R3eK/vO9v4ES6ZzTxUJla8RqZ6IC3SxUJ3atpZbknaNshFGO3
	 rOl0ZXi4JIQEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF702C3271F
	for <ddprobe@lists.linux.dev>; Fri,  5 Jul 2024 08:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172016972277.10828.14556013154685410806.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75a72f4aeace4f6623e9a95106e45757e83f7847639bb7fb2531eed3aac0104e
Date: Fri, 05 Jul 2024 08:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720169722
