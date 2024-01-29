Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A4B54153513
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 14:58:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706540296; cv=none; b=DIiUUfon2dmz41Yt+RsXhQpNoD3V90KmUVi+XA6bUGqdL89S9j7OY285a4jJbvLua/OwJtoyyac4fXkJjzF9rsXhcnurNTNNfP02z3+Sg/fmksQGMBOvYiuqPEt1k9MALoHJ86CDnmKLB5QgiHNBEp0z9e0C2VQ3/qeK1agq7gU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706540296; c=relaxed/simple;
	bh=su71SH5IC8zqS7X8CneA3uYI/wIfvHTvmPHDS9NgDmQ=;
	h=To:Subject:From:Message-Id:Date; b=GDq9n1TzaGf+8PRz9gjr0jBE048MB18H//zbYqBNEl3c1+nxT2cQ9quoiJ4nRXh1luct88kfxbY+Kkt4/iCa2JdvFmJpgYvNFL53CbR6LeyV3B1ALG7vvkFXhKTwIK0smmvkHFLktT6/gG14EFf8DqSmAKUQB9OC3SVD7fxbZWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1j0NF+1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1j0NF+1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 798DDC433F1
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 14:58:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706540296;
	bh=su71SH5IC8zqS7X8CneA3uYI/wIfvHTvmPHDS9NgDmQ=;
	h=To:Subject:From:Date:From;
	b=D1j0NF+1s60wyOWX5hnJZc77ErhezVln/mtJFtvWcEO4hQHqlJOkMTWaG+t00HxGD
	 xlNWfk6Assz+RqTFxb7fnlVhUo2TOH8ueZKaeA9GtR1YDXw5AbBz9NCw4VE4PsZEYz
	 8GBsuUf6UWsStL8FuV6ps4KCiwEHE8MpWyd+Q6H9LDPWy1AGPVHGxpKtsWCfjZogfn
	 uKbW/FvujPDOOB1t2TZ63TmK74cWwBGJBx8Kr4Ny4w3hp8eRk5z58hQJzGIlXcq82y
	 A4gkGPnLNmtrpl+PXsEv/FAQFh+e+Fm2uTJU9JM1Ls5DqIyTgLgJhTVnvTLfdjMOfa
	 2OjcRnOm4CdkQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 62F66C47DDB
	for <ddprobe@lists.linux.dev>; Mon, 29 Jan 2024 14:58:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170654029639.23193.9462517520232143606.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 052b097e57b797cc0d97c386dc559390a8ea5759002c11af4b674fd726cfdbf7
Date: Mon, 29 Jan 2024 14:58:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706540296
