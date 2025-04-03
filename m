Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40CB0161320
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743718196; cv=none; b=FYdRey4Al11EKYvqPY+ijMbHq/JVsUYhKNqGJ1FF2J+MmfggOiCTAM7WoURUwHSVyW0nr86Yz93JHCA6wXwm7IzUeaaaFTXU1gduGJ7ranGqEdj3CBTUKamnWsOoXJ9L64DVaay6uEnKjpL9noY1j384epWA0GVUEtWhxi7ZaUY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743718196; c=relaxed/simple;
	bh=rwjmrPN5QcRZpM3eCBmYl7OFL0oqk84cxb+6SfV/Xao=;
	h=To:Subject:From:Message-Id:Date; b=evnfpQAvkkKQE5VFE6YdfaVBSQSyKq3pY1P/wDX/idwa6O3+Y3A/8AWnJc6lgt216dERrzmCmkDVOqJihOfZqVmyIan9xl3Ay2gOPBQQkCEt6ZqkTJxDjDvUBDXiQjtvnlt2QbHVz2Osg7rbDKWM+KiX4sjDazQ3+/+t5/+nqek=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NU0GKD3r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NU0GKD3r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0000C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743718193;
	bh=rwjmrPN5QcRZpM3eCBmYl7OFL0oqk84cxb+6SfV/Xao=;
	h=To:Subject:From:Date:From;
	b=NU0GKD3rg9c/Py9qaK3ggiqrUuhbu6wPPh3aD4wRmBneW1IPLIHQlvmIxu4sJYkNg
	 1XfW9FnQRD+CE1T2so5NomUlJpeDeJY7l0TTD32dqARm8cYyXQEluAsEDSEf4MMjlp
	 JFznNhbSYqJIeDyd0o+cEkvr0vAw3dZp3c+ID5/JA1NjR+2LSrMy0wbm9yO+P+m1AM
	 BnF9NDyWGM34ZppJxuTHDpvdXaNmlDn/u7r2iNp3ZL++jzeTfHJjvW5FYdGJBwhZx8
	 s2i3NISdk+6mNx09PSLUifNfXLjwMQCKqngu7CWD/+NhvCleRnkHgKYsv2mCin59nN
	 x+1giy+KfOUsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98BA7C3600C
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 22:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174371819361.18975.12292468668228865306.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 798046e14a5f9083dbb88b678389efbf00581055446d8da65701f8a8cfd37550
Date: Thu, 03 Apr 2025 22:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743718193
