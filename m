Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DFB53451BB
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:35:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781019334; cv=none; b=L8xECbsPhSFeGQftw5HovQoZy2C1my+hMC/15arg6Cg9DlOcLjd7eKVR8EKtL20wCPa2VnrrIrAHEkOqHHYsKJNBFsIwwRRGosfdv0T9a29BKJM3GUXivoqEbKVKRg3007wNVSBi34Ak2OXfiUPiVkQTnX0l9cjW3MRTmAyafu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781019334; c=relaxed/simple;
	bh=A5tj1UFD/zOfxEPqQsYpXmf4THOoBWHBAcMMFw2qaxA=;
	h=To:Subject:From:Message-Id:Date; b=E2NNuqdDgPBhl19rZreQqqm1AhN5zK8Za47kccPyvB9NGOgudpeGlHg1kpl/nWnfTCqp2BURyQFkG3c9L+vFEQe8ZtmBZ8JYVnCkGEbZtjfGlwwX0Mkcr4CDLbwUrPzMRWbHiVuQxBN8xLRr960pX8V1rTJ5Jvcf4gTVKfbQP5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fgpBVorY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fgpBVorY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0359C2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781019333;
	bh=A5tj1UFD/zOfxEPqQsYpXmf4THOoBWHBAcMMFw2qaxA=;
	h=To:Subject:From:Date:From;
	b=fgpBVorYgD8SWRk2Bhef7MyaHkAhkxi+4BxMTp6EMLPXEruZJ+wpXm2bgGb8touQt
	 /BHOuOhQA803EB1YfSwooqIio7iTtKRFfL7OogvwDzHiUfpW5Ojg1+g0ueIwT2CvUT
	 PCSX4pqDJI+cEmkqW6nWl2unh84WsG1XHFZrRHWqztM7q5dxz1wnplqEBkcmPrh4ga
	 TY0UOTHnkujMrI82ls7oqDq3KeqquIxzc+v0+ln9RLRPILhTwwCxF0iDwtreYVKjAh
	 xfD1NvchFliRXkwdWItjjApLfaYCnlFk35bnVPBx06ROyWzgMVEo4DyWSkWhCe1rmd
	 bMfnZUaC5cw4g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B355DCD8CB9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178101933372.8872.16752173708511548885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc7bc962a86b744f9e488bd15a332833057fdae37ec0139c09db8ba92b51aa6b
Date: Tue, 09 Jun 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781019333
