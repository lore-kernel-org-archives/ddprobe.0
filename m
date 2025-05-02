Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3622D1DB546
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746181194; cv=none; b=AE3X0Z7Uc/RkGdUjRjv/Jb5YlBmnUkwn7DMz28c2y+M2NYYSfe/cFtsrQcW6NtTd8wTdqN/DcA1jIIMD++jgk0cG16rF5R9WlOUHDYEog1AwHDxVFc6TPuNpzaNKuxI43DZdbKi/oTP4IBTyaQ4YfZbmQskTFUJGT1Xq86s7tXI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746181194; c=relaxed/simple;
	bh=jzwxJ7/YAdVpRpeVT5b+mFRZ/t03o5RhbAiUMC90qfY=;
	h=To:Subject:From:Message-Id:Date; b=YkBAr4sTMzvEoZs+M00IBrrNiPNkfmh6fhVRFacnroCvaACVjTg8mGlRkLZaTBlFvJPqyHG1Vze/VJCcHPI7HbwY6DOTtpATL9/OCDQCOcRay2bLPFk3TNJH58BLf+QVjYYDrHcsxGQO2PDdXm+rju6/7w7LrXcDtf+4vqk21sw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mwWe1yGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mwWe1yGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1996C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746181193;
	bh=jzwxJ7/YAdVpRpeVT5b+mFRZ/t03o5RhbAiUMC90qfY=;
	h=To:Subject:From:Date:From;
	b=mwWe1yGxEO3bzWo4lN6+xnJCMtTXCmYvMJ1l2eJ85Fq+xJaAFLvfeMP/E7faRnX5J
	 QhlRgmfUEkbpbpkg7kP+ixeUDZC+Udyofwsdrf5IvHXBPT+NlBO76XtBpbA0KdBDlf
	 D3GiLcyO0vXdpEBkAW5Ph2cKY6JrDRuBvpzGg4I1qw9XlOOhPDuOiUmXSl/4QvRxRO
	 DxgsDnq37iUmTGu0lCa34nKoUhrP2etXV85qozLx6wWipIMtmZzBGVzidtddmzZSQq
	 90gEuu2DIGwBcAW1iTELY5A4nWXMlr7eY7c1X7+jVZP3UQRhNqrYU0NxIBKdwvPvcl
	 x3ClNUNhzdyvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9035AC3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174618119358.8763.8992735848669393710.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ea51db886b8f8089b3b31f497363be8227f14232c5b075f6d43e5589d26db4
Date: Fri, 02 May 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746181193
