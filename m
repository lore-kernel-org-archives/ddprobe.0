Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32180360ED0
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791525634; cv=none; b=dcC+T3JrZUPsKlc54sCr5y/pCfl4k3nKbDaNWTEyL4gAkEbAMm8XKDaOEqtKQuFITbHOmueQZ7wfqEbRf9sP33KnkaEiUXRNxpQnmrGQUDKB+FYHH3WaBf48HTjn1lFjSMw34Cji+0qkbOycoEIke4WkdqUgqhz5h4qs+eeUo+U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791525634; c=relaxed/simple;
	bh=41YMnqIf4RbFd06yWPMhs5xpMi+JdRAOHY2T/s89jWU=;
	h=To:Subject:From:Message-Id:Date; b=qIoJPtlepZzoNBoQLcsot3Za6rWAbTDRn1Q/JB4+ibbq3zwjiyPzgRBd3VvAMurZAhvfhlogYZjRz0UnQOgjMTKSqVBH0Wvnauv92L5tuJ5bGWUMZOp90Cz63w1QCma8NnNZpmhCzGyKxP9GHWhxbg6FI4SsVdm7PW2awV9BXic=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A5iPTts2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A5iPTts2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7781C2BCF7
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791525633;
	bh=41YMnqIf4RbFd06yWPMhs5xpMi+JdRAOHY2T/s89jWU=;
	h=To:Subject:From:Date:From;
	b=A5iPTts2NADb/sa4qZF4uR35Rf7R7wZ51NriZAd2UUWPbnHC5yPMc73DbDaI/UVhW
	 amtnVo7Sn/JrfrY2vrAj65N2C8FgfC1ys2wL5HFtO8ZPIUp/6P6ditNo2o8+JYwFyS
	 ldtAyOO7kSJuUrhzm1hO1RSjFqMMh5GkjF/6qkc1kRsut5ZrPhYwtDdCXxVMYjq9QE
	 7yTdWesol30DAtQQhZ48vR7F//XuHN4JbGQizx5Grga4VEvHdZc1FnHetTII2P8/Po
	 EESXDWKu1vsNfaZ2RGDMTh2WhoDKqxoF00nCXAjiZIWHb6TcV9nkINSRS4uI6PLrjF
	 O2IrVkw2N0o0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF68BCA5FED
	for <ddprobe@lists.linux.dev>; Fri,  9 Oct 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179152563371.8213.1843930031267432225.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6fc430cfeaf7b073444cdc5408826da6915f14839d905ddabc92a473111d8a6a
Date: Fri, 09 Oct 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791525633
