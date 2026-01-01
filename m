Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA253A1E9C
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767264234; cv=none; b=TiOAHhEmkK+Al2HbF7rh7tBCTf5ZGHvYmdonc9QCPCf68xaU4Bwr6ZgScPcbKzTEMKQoU1Dx+ZhrtB0YqkxCVMlCTrNmQGQw0bsxpeyr6MxWa1yKg479G0nG7DunPb2gd2JEtVjl9gKd5Plaj0A9MRGZXhnA4GBSVg/jaQ9xPU8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767264234; c=relaxed/simple;
	bh=Z2A8vsLk5v9qVEaRjsp7Nfs77hGZMmsVecKJl5PnZ6k=;
	h=To:Subject:From:Message-Id:Date; b=WnJ6q1ozYfUjP9GNvoOp76RPJRSDdZ/iGLZITLFS+ZtPD4yD5fQ2K1YiZEtKRBbIjyMsOPojuWzZOUPbSFR8+w39HRnyR+vT9zY9TfbGHCEzj3Cd2GdGLazFhMyxZcJFwaix7So6mNun9hIO0d6nAS1r+6GLvkirK5dyVlsnGW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KD9GEv4M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KD9GEv4M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5830C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767264233;
	bh=Z2A8vsLk5v9qVEaRjsp7Nfs77hGZMmsVecKJl5PnZ6k=;
	h=To:Subject:From:Date:From;
	b=KD9GEv4MkjeWa+xFyU2zD7zDZUgmS7aQLL33gMluiAmRwkbwiTH3ICjrxjYInHBp7
	 mEPApih8xqfEuB7DNPDyFiDpkqp4uUH4yMbWTgEz8L75RgUCM4OoQtzXWdaORefGbH
	 kL99Ex1sjEZBRUmVVG+bGp4fLzhPWRNQiI0q9gAbC02np5hT5gl0MyscGpLtUXhr8z
	 o8a/KKqbVY21nNE+WQwMHIOvekWTlINL9B6A9WmWnmRDzacX1UMRrSUkP6rTv2mQAx
	 tqOWNxMBnp+Xz/kuONoXTG4EF2DRQjeQlCcTj4I4a+iOfCX9sSG4LmUFm1rRUw0kf2
	 F3ylqZ6mEVWTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94738EEB57D
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176726423357.26133.5407062739821305913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2eca4d46def082d6df04b259bd6b819691540b636d627ccd1b85fa32168aa948
Date: Thu, 01 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767264233
