Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330734E1CA
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728166554; cv=none; b=GDaIpaponGHj4aACDSBTLBXGm3i66bMY7SWp82ayEoKljQ1oPTyJIbSfEXVgaZXslnFS7vUTk3q2B0DkkHf8Lp1IC21H0sjOtPEtyakcgirgEx7AAwB/ochjoi9MZg3TUu+aogo8FczrDDBpHEavqimI2TMbgaP/WUcmiOfTgCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728166554; c=relaxed/simple;
	bh=P9TqfrB6g9VSjY3jsqIn3mnqxROOv1cE8vfpQm3Jc5I=;
	h=To:Subject:From:Message-Id:Date; b=HaIObUlxKYMfcRXqHzbOF58BJWJ1Vi/Kv1+vPtEYDltu3jTT6R8ToKoP9BBa5ETe5a8cdMQuEQsbdUClnbtBwFK4AA7j/DRlqfAKqZ8aAepz72/LoeQxkFDkbI7xvdvVXQD3oBSZFENe7iP8IsQY3RnwKLD7tOhRhdU4jB5bMkU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JaK4pSKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JaK4pSKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA8CEC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728166553;
	bh=P9TqfrB6g9VSjY3jsqIn3mnqxROOv1cE8vfpQm3Jc5I=;
	h=To:Subject:From:Date:From;
	b=JaK4pSKLLghDt8glZGGMd/vwSvblmSOKkLyVjGDLPMj2PGkNQXib6Er3IlpArQwKH
	 PSFS9Fibt+8xfrvjh/z1gJ6laW0mY/J1q4ANEWwLeCTu0jb3AGMCClWocDT1uf4NzP
	 EjIwoR2t01XAj6lNXtEZq5vmJTdP2BxN36Kyh5k5lUCsttbRSYwFLXa+F3Yrl3B2sh
	 bm9XRL+PFL9VwPfDCQCzbLwNiIfAR9v8gRTXQdSU3wxZUXeMKpQAdihVU+TLCvgrhU
	 FpiYBZGPKdtLa/rJst41upBYbRHsGv4l6C/bcsYS9td8di+Yz34yKkK8HPZmGml2bb
	 cZb6LfGkC9dFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7AB4CFB43F
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172816655364.26183.10150578885539399235.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a680eaf42b3b987a1cf2a44df6a03dee61c4ca656e4bf621332b5777f749d14
Date: Sat, 05 Oct 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728166553
