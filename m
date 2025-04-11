Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E6300AD5E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744339794; cv=none; b=eRFgKLgsF5d4lrlwinu2O2qCz6URyOmv4uP60npaC16/7wFK3BAo3/yVwypbq9HJBMxaEfb5RhePvnelxd+I1hpDOpcm/KaZua8hg8v9rmlbg9hfe1f9U53GCiUjabkQ6D59pZU1DoOSmnYlPYqKe5Irq/Do1wkYKRZLwXOtuD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744339794; c=relaxed/simple;
	bh=C5CKeC1SHpVt0FBoDlZebFSjlBJKTJ1vYWpnjzHEMkQ=;
	h=To:Subject:From:Message-Id:Date; b=lODe3G6iYYXeCWTVgBjosKxBzVK+ehPh5HOoUG00fxoV8OqocNg//VGS0kSr94TgQolju+BGgU8rWJYB7R5lneTJu6nAMaojvVrAwh51xq485mm27adwBEKpejB7G5xeTsYQRMc4RMoEcioS3/zVpEl7/n2ICZFlfiUrsthOlms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MNw6B9Zd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MNw6B9Zd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7ED5C4CEDD
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744339793;
	bh=C5CKeC1SHpVt0FBoDlZebFSjlBJKTJ1vYWpnjzHEMkQ=;
	h=To:Subject:From:Date:From;
	b=MNw6B9ZdcbVHWz2WWnOTrFHv12LPB/ptOxMEPQWRErum0uLZb+jLB+6Sj+A1kB1zK
	 /zDpV3g4gpDfqrua+ryM22ob6KKRVmsD0SdVJAXDeCjCcfK9nXW6WUe5Uk/xTcm69u
	 urWay8n0YThvpn1kcuBOlIxzU+3RIE5S9IT42oFAJjzVKynQWCsYvSC4gm0HtkwO1r
	 SL+4G+mzGTXNLnIdcbaze1eFc6GF27nYVMXvvK/3DXB/Sc+v2e/bfBKkyYsc6lJJ6N
	 sGz1jBYgYiFX09XxI63MEKRmWKoz6XrbiS3CM+za8TdrSUha2AZ4x5pbzC1fYzb8QV
	 He0uWE8wF1WGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B69C3601E
	for <ddprobe@lists.linux.dev>; Fri, 11 Apr 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174433979358.3766.5335144521180817281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b375a763e578b49d7c7a6ce2fe7bcb351820ae6c59cbe52306b63264d3cf42b
Date: Fri, 11 Apr 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744339793
