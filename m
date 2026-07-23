Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BD0132AAA0
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:59:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784775574; cv=none; b=UIu0JR0GOl+ba7G7TjUhk5uiuer9qIeJm9ix8FkloBHzE2XVBw7TwhXVB2swHNyb22i+Lt/q4bZ3zJgxxdf5y1/JV6sDMgDmY3yKQaUG2brJ1FgtMYVissZ7d/pTJnoiQ6gZ5QMzkPeC52gmM9l/Du7triWVWmEMKZUm9wW5Z1M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784775574; c=relaxed/simple;
	bh=kaZyWmKnyOG++mOaa8x68GHk2VrcDIi4d6iB6ik4EzQ=;
	h=To:Subject:From:Message-Id:Date; b=Pdp16wMxGetedNNadZzcQJJy1akSeV85Ke/3CzF9YjfRQmcHNJRdXXSL43L3AqUzZKwHAhJVCauTAGQAn+HmEzdUSPaKK51A3Tvh4gnM04SUFUFe+Ku/UFC9urK0KCAhWOv2vt68bruqs7LKAOGrhOtYfzcp1X1I9NrczI4e588=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VFLiZeZs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VFLiZeZs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCADBC19425
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:59:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784775573;
	bh=kaZyWmKnyOG++mOaa8x68GHk2VrcDIi4d6iB6ik4EzQ=;
	h=To:Subject:From:Date:From;
	b=VFLiZeZsPuT2z3NIXjWKBEdYaJt2bZQVky0lwoQrEPnsQ/8ZJiWr7+bmVL7JbvHAD
	 qDpv/bAdrOjLGLxiqtx70Srjhy476jy49WIjur6tsnYSO+hrnNb7I54gPxoNtuDhjE
	 f0lbgwKsv/eXslUcVGq3HuPF+jWDA+zX4aoKf33HdjfPYDd7ulJIqcoIFMvmmn0lWt
	 c+S8OdNMSCE2EIJE75NRz4eg8R+qNxf6vM/AHHWyOtVypKZCLqE8XVpP6sgJJseaud
	 q/fNYOX/Xt+PVvz4b1/1B2G4BYto+t07r9wX7hnNWs0UP6y5vgWAZMMk/iU3fMCuIy
	 awfyF/fy2KpZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2AFEC531C9
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 02:59:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178477557372.22496.12291135270565087903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f89efb1f9249b26b93d24be26292983f3ccaf63f7d2fd4ba9e618468e5125a71
Date: Thu, 23 Jul 2026 02:59:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784775573
