Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68C4127462
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714935743; cv=none; b=J+sawufosYV254q9aK+5yLQfh3ENH4+rFQxvyw6NKWhrET/ubPXKRbq/GlMjiukLhYvppb207W6oMf7PpKMDmXJv17bQuTgQMoXB57a2KRN8XCRrJmhGD3giqSzCfYVdmu9l/6ebDCXgvTPT4szrDH4NaTtf8bbCA6empkx2cys=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714935743; c=relaxed/simple;
	bh=hNiUTga0IDoud1BmOLqtBb7MxZEFrNF8UTAUF0hOhk0=;
	h=To:Subject:From:Message-Id:Date; b=fw24ahGir3OjErNN4rQG7y6XKYniKFWvc1vdr27jPM1O0YGtxCeUnonkhPDyALfImuTRRkdtqW7vUkNu6BdLkbk1cdtqMWvXgtLcvAb1bx0H+w7OqLv9MCKYHXWLsIvWP0J8Svxw562LHszlLcv/Co6zfKpVdc0pzneoDdV5zvA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Osf+Tknr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Osf+Tknr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3E87C113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714935742;
	bh=hNiUTga0IDoud1BmOLqtBb7MxZEFrNF8UTAUF0hOhk0=;
	h=To:Subject:From:Date:From;
	b=Osf+Tknr/RDkNtO1bQVCMz7dIcN12ymD7jU6A/SKAiP5+y6trz2YLaxuXIkmTnUaa
	 CpwCVitFBNwHGz+J/3KZFlPvfqStSUzVs9I8JEQjCoiC0P6CK4wscvS+6/+FtZ70lU
	 uDYatP7iVDD+XI0VGMUT1GSqrMylmh1sVZwUsCbyozhmSw9o7AYibHW19VbEFDOI14
	 kvAhU5a1PKX+m6P9VE75PhJ8aLO7J6/NSIhjqSw6CNxqOkPGIiN442KaptrwSFGtVm
	 4RCsvzl2auhxiZOE3Xb2zsxXHVVLXihqT39pClMje3E7JQ50K5lRjeSoRZjSEHJ/bM
	 CEjSVtZow6M4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0264C4345F
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 19:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171493574277.670.8338145883805403414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dab377c2f1376af9593006ef0e1f0b82f62e6c25f53a00c5816687c1c441f95a
Date: Sun, 05 May 2024 19:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714935742
