Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DB602367A6
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745738994; cv=none; b=RJl+sv1hn5stGNoJ2v3wjvd7ajf5wLQyLwuRULeS1JyP1TtOywpkcZH6n0pkWGPM46nZSfG/sVK/y7n+QsxIu8cCMF64l5CJY2sC01uEc9urbbP2NqRaY3hpdpBchLFppr2nnkr6N0hMMye7F1+h6pIKerjRhzwvIHPrKVpqhdY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745738994; c=relaxed/simple;
	bh=Eas/kwHO//Ba7hx+2mTCkcnLkJcbrPdAv3qEVgYJPIo=;
	h=To:Subject:From:Message-Id:Date; b=tpItVEh7fZ4NHqV953YX+dsPIL9aAhIYQKJV6ZSFCapaxPfjk9KPoFZ5/lSu1RjaEg7Nmqq5jlcyNgzhOafQ46Vt0L8VVfdNMM1/65qc7vd/9t8yUbOvrgDwoufP6E/T+W4CINsY4Y27wyK+qKlbXXT5EFXyWhPxm9RG4MT/kZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g7qfWDeA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g7qfWDeA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C5F0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745738993;
	bh=Eas/kwHO//Ba7hx+2mTCkcnLkJcbrPdAv3qEVgYJPIo=;
	h=To:Subject:From:Date:From;
	b=g7qfWDeAoyRMLtZUQC1MR+1gC92uOCph2ZWZs7QhuA30eFBE2SVYvVpYA3TUOQLGu
	 HNeYqHfzEnCV2y9jVMVu5ZaFnvjE8Wvq6bEKQrNhdT/2tZytMf4BsruNCXnjZrdQI2
	 MHtLUqMhVokr9gcp1k3LDycyeajhC4hoEYEmIC8bO3waFJL1ldGw7aV45BOp63Z5vB
	 rPifILQs4eQgmURhr5z/DMCP7+3lX8cZB0fW0IwiiEeDOcV0LFFC8L234+tbOAJ/Tb
	 RsGIsNFczOpKye4PFfvSiMYQCqDJp8aMOdswuoV+3QVR5PjM9vpcrIU6ald+FWIbzI
	 MSlvds4k2Rabw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB43C369D5
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174573899357.13849.12301090542851627835.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 726cc867e75783bbf9e26d1f40e718277f439e500a8d04d0433540f9e38d340b
Date: Sun, 27 Apr 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745738993
