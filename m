Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04A2819992C
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760965794; cv=none; b=dQaAy2Q5VQh7MYS/NjLF0lKPptLmCFNxpg6y1sj6dEgUMvFY4OPsEu0HE6iYpstQbPY1F+9g6TxFLLIEcCQAKHfpiEFhxY8trwmfZJdLTjJCMNlfx0IClyIukgVmx9n9hznBi2ItKnIWvP5frS7I/XbalUyxCIF+Spx1+05ADdA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760965794; c=relaxed/simple;
	bh=dvVQauHBRyUrryKhCy4WHP4ZAeZeKLOFX5yCNlkw25A=;
	h=To:Subject:From:Message-Id:Date; b=bz1zYWaN3pN17w4HCsKDKwYdJ4XChMdNd8O/40iInseARjoIeHwHY71bq+TSJZhS5vsPKBofDiwAmckLR5w0sGfmvJCx4/IzeQci64lSIRNKCDGdbcwOdWfobjOLikezDZf0skxqlOtAeL/mwKOUJoVyiXkRbCa9Z0GEE0PTSRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yvwi9Rgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yvwi9Rgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1490C113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760965793;
	bh=dvVQauHBRyUrryKhCy4WHP4ZAeZeKLOFX5yCNlkw25A=;
	h=To:Subject:From:Date:From;
	b=Yvwi9Rgny+m+BzP8iQqYvd/6bomxuTuBU7jSwU+PagD5Z1cEaRSOcVMXg5gMzbBvI
	 w+ZyslwpzcpsKL5yRU3IkPWK0XPl02ixrVPf9TyZ8s0MypMaZ8sFMuYEGFRNonkVlI
	 WmqpwzjmQRBdOENvUOYopRnMQ37q8THmT/KkiBhoCT6Z9Z2mNTNh9KWDKT6LrqOWQR
	 oqzTLLmhpp5pkKawlgRSpYKqK2YzhxC2SOBh7neQx/YvH7V+OvNecaVM50g/AqEf0K
	 bA/dAVae3O+DfBRrbQgd9abLk+VLlB8/eXAeFRwtmyjK0nbPvwAn0ieSCtfARPgW1+
	 H199kW51uIklA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F53CCD199
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176096579358.23786.14718534878411300700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c91ffbd77926cf4bd5fd26a8ca96ddc6d2fa0a8be0cf38a58d732bf8c76c321c
Date: Mon, 20 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760965793
