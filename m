Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4718C283C82
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784411314; cv=none; b=ekCQU1ZgGmOneLVLhLWmGSSBk0g8OxbYqr5ZGy8mj3XpeOmEMD4pT2ZVUOQuHbS0lzQjMvHeqoDEkn+04gR/4t+9fcBLoSVqZm5JWG9iMzHS/jDL76oaikozymhWu37TB+0l1DxCvw02Msoo7gmVT/BBW8WJ1xpX5KfE+TyVOfw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784411314; c=relaxed/simple;
	bh=PlOrk6BVIBDcD4uXT2mIEriaFbLU7ZNS52ZSGHpo7d4=;
	h=To:Subject:From:Message-Id:Date; b=CWnDfWDKQS57ifdtEoCzSU2GwoMlDmaisIUWe3qPId+spaSEb+kDfkaw4m7chkPZxm/y/BK3kCQ9TiqAvfkAkTZaheqFAxqdhgGxKtHd91ZxAcIwnO/BZZh/DmHCUNPC3UBc5mYCEHvcSvcIU030yv2nzNrVK0T0S5uZQ/VrKCI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPgqc06q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPgqc06q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE84EC2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784411313;
	bh=PlOrk6BVIBDcD4uXT2mIEriaFbLU7ZNS52ZSGHpo7d4=;
	h=To:Subject:From:Date:From;
	b=jPgqc06qc8rqO0Zl0oHtXphJWiX1dJ30iZK8EKtbZTt3LSE4I/hemu1jP4qFtUxdI
	 fmfm1mOc5KeKSFLDFoCTXVnPirpDok9MWOu06/ZtKMPqMGaxVxD6ufuH01Szc6so/P
	 uYfRRMlNaNx3DkK004j8rr5PgpG+UZ4tbyBwn6hdCoC1AqnexVo3i4VmdgJQ0+HXS5
	 9TCNjkIiwoGXOw7UYHPrlB43DIgQiaM8JXbofbwFF/blUtHL9QTtSRpwrk0PLxgWOT
	 KXywd5mhQmJg7Gitp0yADdpYP1qiaCjx3N76kXSfAepFqdcC1SvrQeDt9OjKU5OMh6
	 FRGRYC0wzeRYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA078C4450A
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 21:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178441131368.4554.7561441752930526905.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ee8c3350af719b7a3cd980d49e7f26a5bd92b6b57c26d8ab617f5440b7c8f30
Date: Sat, 18 Jul 2026 21:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784411313
