Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 098EA2F3E
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 22:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729377354; cv=none; b=jXreFZbYby75z1qcedsIsVuXjmgoKpIiI7l/ZtKmKEkntXy5+ouAWMG+WeRFtfJzU5WeM9Dy8rnld7f9cXmxVpeNxKX+ke7zXDSSEh/9XvHHP5HQsnb10zp9zn5blVAtKYBXgSTabkMg2s1Z1jOhNeExb7pmtv6zLD/GadKyMNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729377354; c=relaxed/simple;
	bh=UCoKad3Ta5EHV9zTF8mYdv/yAduejdrfykP+v0CXhyc=;
	h=To:Subject:From:Message-Id:Date; b=mmwLizCJI0rRGC7lFUK638AKrYIqmthvwdMsa9f1KoQDbvCAtMehLGbdl43B0Zavhh3g5neqj4EmYwu6l4h32v1lbHljVzBW7ynKOKYZwGe76pZBBPPK82H3PXihHsa9M+a143GoeROIdfaJbdvuKQEn9V7Zdz/BFiwxpNO4Je8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZePYycP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZePYycP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6E9BC4CEC5
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 22:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729377353;
	bh=UCoKad3Ta5EHV9zTF8mYdv/yAduejdrfykP+v0CXhyc=;
	h=To:Subject:From:Date:From;
	b=VZePYycPBl0gt/Sc5oK8AgE1ZcziCZgpRdKvbpcyItuO8YhtXaXdWeXVriA1d4M9v
	 mSnbTEBj/zxHnZmeRHXP0tdrVpPgcNtGV30oZlNZ5OmJohtuXkEjAf8cF+ELO+0tPa
	 mVImme9oLoZZbrsXV0D/qQOJOYZmJtvPHKYPCEbrW/MxiYiPbVac6Zp6i5QunOze46
	 skOjuJQqv79YiUrDQDDQfBsQJJPwMxr9B0h2XyBKfpuRHdCMO4WhnHNqnmbdxL6XmV
	 Syl0v06v6q2TIxKrRPKyPayGiGtaSleN8/ZKTXd4Zz0knjdAw7duvPDJhhZdGcng/R
	 Vr7iuX6777RBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917E3D3C92D
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 22:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172937735357.7949.17088872280845442277.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d0f76a62e534498ce9da31a2b4b41d74edcadbb8e497553e8e631c8b0a3e99
Date: Sat, 19 Oct 2024 22:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729377353
