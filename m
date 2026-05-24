Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ED0E1F4180
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:42:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779651754; cv=none; b=HWW4hCj+uNqchnX4fthidHmUt45kdC9arP8DcTeJSeePEfks6oKpIASoRASCs3XJiuYCwy8ak9hOqXH0bM5P7BE6a5L3+MOvTQoLC46D/UwC9jIoeJujqmMg8t1LPQFcrG22K1jU3U8Lc6hj6RR0gF88ReNoIiGnE42hp2t7qi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779651754; c=relaxed/simple;
	bh=k5cI6S8nLOoktBRX5fjz+UFYNNcVxqJHZYXgznheUpg=;
	h=To:Subject:From:Message-Id:Date; b=gg/0qutvLWpa67uu8lRHkvXnnBRs+drmHjrsoMmUETt3FONwssPGzUUFG8pSaNI3tY8CvEoQeUk5bjwQ1FBiBBakQPQcPXJm6qr0TWPfhMbj2ShCvVR3U576RrINMaegKr2KThkF0Cv3RzFRxNDO5MoExZieXIeOt0DA39gKi9A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTOrtd88; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTOrtd88"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF38FC2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:42:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779651753;
	bh=k5cI6S8nLOoktBRX5fjz+UFYNNcVxqJHZYXgznheUpg=;
	h=To:Subject:From:Date:From;
	b=uTOrtd88PkHMeJRWV/bNRLNpqQE18wfNdjiZfCzSRo9+SwBWgZdU9/f+dqe+Jxvuw
	 k6hlL2HOCvqPLkrJ00sqE/1sgvW6Z7Um1Is+OsL0isk3SSX0yK8GXuXWt6t5mmh2Qp
	 +FfxiS6mEMuHLFxvQ8sFvs91c+Ng5bpvlNCE9pOiW277IP44bjb/FSa/Jd8tmCLjH1
	 KQlo2g6z7o9GBrlkiKUlg+Em0SXN8ujh8pEuTNIzIiTKQrDFHYCqaJ3hIWuT8y0Ib+
	 XyZg6StjU4it/FQwSnSp6jGV14aWpWk7ZZoUkYlV56MoPBsvqVecMhdJbYkSmdHy9j
	 wcBMdl27Gglew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9157CD5BB1
	for <ddprobe@lists.linux.dev>; Sun, 24 May 2026 19:42:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177965175368.17703.16553104702243447054.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec2e438729b892cbe2d3ae47b35251b5f8b3cc9b46bc6a4895dfa2c435ea72a0
Date: Sun, 24 May 2026 19:42:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779651753
