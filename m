Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 462D615EFA3
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:47:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717620443; cv=none; b=Mrz+AshxLbJj1o4si8S8AeEoh0QY/0cV6ItdtklB/W7/nno2Uq7EjcJP97jXLaZxZkRqgI7GbpFkYQQ459hOu+RwPeY0WfqUYuyTrMj7OKUmu8PgfIRuBrJH8So6VtyZq1eaSmVA3/5TrHqYypOnp85lEtB2YBIoPYayrtZi0vA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717620443; c=relaxed/simple;
	bh=Wp9DGVD+XeLJYi8aytIZhXLCobLArGWaH3j+Me92qN4=;
	h=To:Subject:From:Message-Id:Date; b=gkSbLe9ZTNf11XDcVDaA9ahW2l0hv3Fn74wnmYk0M/+yZXJ2+nVzHZXL/WV8XgF+UcnRrWU4sKLezGLaUiRsLyu7rLo4ygdfOKAI6RHQ6kC9TkojxtFFtChbunnJPI9aDPN5F/XFgjauOrbtBP0TpMOzz/P0viYSjpZc28vy8bY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ErrbwDpm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ErrbwDpm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D803DC2BD11
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:47:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717620442;
	bh=Wp9DGVD+XeLJYi8aytIZhXLCobLArGWaH3j+Me92qN4=;
	h=To:Subject:From:Date:From;
	b=ErrbwDpmGp30AEfGBMXW0l65cAE1Ufs+aMg/BW18jrxLvu+QrswisfrCwbBSnBmRm
	 zPAKCevI7S0DtT2NA3L+nqj34IF3q7pF43x0UKsLJp5uubAcESSd6kn5QF/5tspbaR
	 ruZzXnXxtq/DKtOS5OWPtFdxwpJD7G5wkT/9fHgfsbIWw9+eSE/D6kT+62tQlFNUW/
	 wxF0ut40eNhwSvUOrd8i3rGjeVgVGjpAsZZNO5CvllMt27z2Y7PIum2JC0UxLvEOkp
	 Gj5NLDG+ShprqzR9SdoGJUEpLeDPuHCRXyZ60PUAEMRwuCKUcXeEPy8BnH4rqp/VwL
	 3BnkSQ34lYUWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6C52C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 20:47:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171762044280.2037.14576897235884414419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 06fb3a7c6a6a9dca15b90e6a4a36bd690ddc56e504e2a87fc64bc4ec5704158a
Date: Wed, 05 Jun 2024 20:47:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717620442
