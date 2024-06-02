Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A0CC10949
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:35:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717302923; cv=none; b=ohJ/YRIaB/MB+mel3ZwZj62j5jF9FJ5lHG82be7vBVlxjNlwrS/XfIb6lh8iTcEKWmIv1boPzkhiNewIEKNuY0oYhwqfH2TfuUudLrh66OEnx4MefXyVUONdcEENXMFupXRShKzwHLOX2yfr760PY3QI3/fk3eCJahhlguSbkoI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717302923; c=relaxed/simple;
	bh=02zdy9ccVInZ6lRIbj03sobuT9E688pjbYFxDpohgWI=;
	h=To:Subject:From:Message-Id:Date; b=VVLpk5PEuL7tMHKttzDKFXEP07buYAIUHRJ7ZRS63nOrIKg1ye084eetQBBY7dIb0m29VoCVbk/D2uCmUHmw3HOIy+84xaGUuMAz5igGqbFbzUC86K5HtyQtyglsaFvOAU3IInDDq0eoQKEFdvrKqz2nZMoNdtbkM6jb/2+3XtU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=limJF3+o; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="limJF3+o"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D359CC2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717302922;
	bh=02zdy9ccVInZ6lRIbj03sobuT9E688pjbYFxDpohgWI=;
	h=To:Subject:From:Date:From;
	b=limJF3+orQ7qE8ulnGvu9/ZdxH2CfIDN47k+gVQYBQpeo/dTZX+fuac6Vlgfi3DmC
	 DxZSosXGVXLEdWDM1ptNH4V+zxWcU6CIdq6CM6UWYJMb1uYZWcbM91Dm5X+cg49wbE
	 vp5pbkH9mRjsqkh1f97PrEdVFc/iqDyL3n9QP77BHW2vCMnSk7GDeG4/pmpN7QWiEA
	 dP0h/AIfDXAS2QQrkiHxjapUzDDQtxcZmBwOVMEr1esaEsYjCkLBljl8SYwAsVWpnW
	 0ZttparlLoNA3gDL+WRALccvwv0sfQCR6X+eVbrkKZ2AEuvw2OwttBsiXB5BSycwtA
	 5gHFZnXHqGCvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0545C25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 04:35:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171730292278.21427.10207393431366752676.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5f4c8880ca905f8e3855dd6d7c42143cf45dda9a91b489272db8de901e062af
Date: Sun, 02 Jun 2024 04:35:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717302922
