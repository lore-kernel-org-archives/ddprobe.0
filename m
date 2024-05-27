Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7290910A0D
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716791063; cv=none; b=WjtqxVMiZqmReVOsT8v8VnrdxzI2zx9kHfomMO8bmzA/acTAGfVglSccjv3FvLprPYtOnLSPwOC8IbxRG0A/jJOtHATBYzsndrQjGAyrSJCEx25yikWJNuk5X//0usN2PY5jBd+zpSN8qcjvm21hZel2iH0nAa4YNsHUjNMudP4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716791063; c=relaxed/simple;
	bh=AOCXevpj2qXz2ciahoDjYY3n0MHMGrb5Gg0x8YEpZ+s=;
	h=To:Subject:From:Message-Id:Date; b=pjP4T0isItuip5v5i9sF+zFp3RB2NK+5dFOz9Zi1sG0qLTxggPknRvz0HL+r4puL6GAhVtTWfaK0wnGoYfXFp3ExiLz+lio3wZA5JtvGBe9RyIXc6WMhbhmwu8Y6+4JgBWsP99L8pQhzaJvZtVj4A/5wHNFXtokbHGMclTV4Lsg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bmTqaTpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bmTqaTpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED40FC2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716791063;
	bh=AOCXevpj2qXz2ciahoDjYY3n0MHMGrb5Gg0x8YEpZ+s=;
	h=To:Subject:From:Date:From;
	b=bmTqaTpW8r8apH8ez9mqB+n9gY5MF038mwT8fWKJ/+mbK5uBIkDlD6rmy7hhjuqZJ
	 F1YTPhoNCdOH5crKwrLOfvAp5M3Be3tm8CAjwWduE/i3u/GZ4ZaZMGwwdLFTXOD5FR
	 sJmVrdLxCfYeGyrY2IBIjHtuDZb9rNdY6BOJ1+TRORweU/qRE1ULVuzqHJMi7PVVnv
	 4MznZnuWOWb9n1eXbdyFFLYwuR3DPHtj5fTy6hlT6f4RTxnqcVfxXjjMApgSwsbnYD
	 9pHTyNyIf+VEEfQqlbxrr7lh7fZAI5Fhql45Om+pzqb+A4r6KXM4LjAfgnSMDrP4Eg
	 dsQ14oA3vGGVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D6E29C25B79
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 06:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171679106286.11644.16765972540652174913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3d682ccf8d04cef52a2d833db62c6d910cd3bf0cf3d83fd12447f4595444ea7
Date: Mon, 27 May 2024 06:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716791062
