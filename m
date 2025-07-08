Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24DE37464
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752005394; cv=none; b=jHhN0vQHsUd/gemiNn0eZZLnNN//r4W0SLw56zXKkrmGweECjD+dhA/pmS3a72onHOrrGnvrU2HzMuZbJl4tJAP/NI3dtyHoyDB2CuwPvfSJis6qM1d5XzTrjSZq72xkugiHyxYqnqa/+hgJpMIqB0aUUi0iB2DqHYpPN3LT/HI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752005394; c=relaxed/simple;
	bh=a8EbGoeZadVRRqDuVGAA3VGa19NBW6X6MU1Fe/wpHDY=;
	h=To:Subject:From:Message-Id:Date; b=W8g5LrbyF+H6PwURrdEfNux60H5tbXu+wLdq2KpWWr7ODPmNAv0xY20XN44pLVFqDl//ByNYfCdy98NKNqXmu6ojokiFBNrHdaU7ifRKOsEc+dtzyRk0zlgOATmWLbDgXWwwiMBMIaTg68dhvG1alV6JfUsnfCUezLb0hoDbYRo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PuSRZOMr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PuSRZOMr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A084AC4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752005393;
	bh=a8EbGoeZadVRRqDuVGAA3VGa19NBW6X6MU1Fe/wpHDY=;
	h=To:Subject:From:Date:From;
	b=PuSRZOMrrSuLJEvZ+R4At00Fd2hOKxfNWBlnVMBAM3+5KuFIFeDoOnenpX4HpefQi
	 TzxRnLMfmhkpM67bXkd+JSAk9NvwOOAingUFyrrmu+7+IlnxxqTqotaRGoNPs7z19A
	 g/TXaQxkkg6In9CkrXG4AHKlsh39BjG0ArPImfyDvoo8cMXLXfdf9Puh36atbvMGpS
	 tvRqiWe01zrQczRJPc0N/rkpD7MnchUTqMHmfHhsbf5orBDHZUrAsXGsJrEAJCKq6H
	 eMlXRoR/Nd5KjSu+x2EbnJvbzx3C2Y6O5/UX3MCmbCVs6ijuRcO48JGHV+pBWs6IB6
	 JTQV9EUyylrRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CDBC83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175200539358.27922.14929022069504283182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa09684a6b819160b1f77e37cd21e20051f52ab342fbdb49db5b16bd09efd8ad
Date: Tue, 08 Jul 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752005393
