Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52BBF21106
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732490154; cv=none; b=BVxPyATOB3Tn3IvrUS2kYdhNdAf55t107Gop5ILMOdOn2YRtTebPgxUKCGBeoBEktdcJMuvyGSiOPaMKVLadb6lJ/8lhgp6/lhRBpvM4fbS7YauB2srhMNFcvXB7/TlXuoZJr9/5NUJ3e0jhWetBxDYCynrjw2r5V/FWC7Pv7Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732490154; c=relaxed/simple;
	bh=oO+BLE6271mnggyVY7k2Zoy48B1rW0FEXwJN3fkG5Pg=;
	h=To:Subject:From:Message-Id:Date; b=HpDVzLWPQ+T8eVo68+M1zdxXMtdUATlgYA7uoCUktQD4jznD/myDOYFy+h+dEFYPnGa2kC5ObI2Bi6yx1l5xXqohQz8nrpP0oF+WohQkIJxi94RAUk6724a0/Tbgyn2jhu2Y1b3t0syU+SwznGaFvkmXPHOQkg5Oed9iuSQnD+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h5spsuXf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h5spsuXf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD401C4CECC
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732490153;
	bh=oO+BLE6271mnggyVY7k2Zoy48B1rW0FEXwJN3fkG5Pg=;
	h=To:Subject:From:Date:From;
	b=h5spsuXfeBNDtR5qjw7sO0llicxz+ozBfErzs2Rp94NpDKonode+MB4g8j2EsalNj
	 VQq7AZD+bd6T/Egs9EL70gqab+gk1s0hJSdM+I4nw9lhMFkv9B6KfxLrKSwX9YrDtn
	 VE6mpI9KCj1zvb2ewF29dw12j333I5UXALtS84OxQLg74sQJWMGQp4HxHOp5B3xCuc
	 zgAscihsu/bu5RgofFSlRFf0OthedCwZWjiwAnnPS4aNpPBCdEeNHNNNx8niaP7CCH
	 zdrYCUe0UV4TFWFV0CrTguNUeHS6CIhLMovB2Q+VwK9iUALyWGGI9JHVRag5b1+GGf
	 CN2ISveNpNiMg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97189D3B7C2
	for <ddprobe@lists.linux.dev>; Sun, 24 Nov 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173249015361.26929.13426052910131690042.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd80558446bd05d28b80aee03e4e71ae601abc3e9c2f8c349e56309dbb471e49
Date: Sun, 24 Nov 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732490153
