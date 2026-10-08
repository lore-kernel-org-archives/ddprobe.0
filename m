Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 403C2466AF1
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791460834; cv=none; b=XUgmecaQz7k/3yIt3xKF+tPkZjAZsX1uwMR+zlKrgqtoYXpIhYNZnsI0NR+aCBsXvHktn5SkGI16rnp1hZbYD73itUK3Rx8hS794e2hEs1hsgg3hI+jKFcZGj4w+GWo+h1GGDhB3O7EzhY/cbl8tNuKw7ZrMmFptE/V2nOEo9U0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791460834; c=relaxed/simple;
	bh=8ysa0vIsvltdFD/iem0PRmq1Y2W7FvveqKbpd08Kmbg=;
	h=To:Subject:From:Message-Id:Date; b=WdeGLqEKa2cv/PNcWOd94dQtIvXUjs0whVnpShoFOXAoaUwmMzGUfScnoIZQQpsoFxiict2rxSUm4Q4cMhRhFS6jlMJd0twib8/KIFnB5ZpHbnDJXdKoQldwqrkwFrqosj5Y+byS3ZjgVsVkfXjqqhddlDY81OIDFR1VdLB8QlQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeIFehxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeIFehxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE918C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791460833;
	bh=8ysa0vIsvltdFD/iem0PRmq1Y2W7FvveqKbpd08Kmbg=;
	h=To:Subject:From:Date:From;
	b=qeIFehxIv9g7JrXGGTML494WKewKuKNieQXB4HDK2raaA2YVwc3VJ57EKWUyEwmjh
	 9PUDFCOwEeJZN61jhkWcxjmOnWSzyjQRWax6OU1J0bb+aQogahgwWfGCL4bjY0D5Qg
	 HgGgm3GUe8R49g2J3kECbJoMeEB2RFqKmm0GzXyFPUmT+0GsLyr4bO6V7alEphoMce
	 rdivepdymajSXmBXDb8quCu9YQjbI2Ca4fe/0pLwiaX4+o1GGYL/vtVeo2s6MVeYuR
	 sTr3Yzt4s0/UesRUNsBguyV0eaioZOWlyfl7dH+4pcw3lQbWtbatEoFUk38sCVCYbm
	 CeG1oc3m+DFIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAFC4CA6007
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179146083369.10418.8080814536413837380.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37fe1d570e63621ad946fd99747d12d0abda47b72dc154ff950eb16e660f7a97
Date: Thu, 08 Oct 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791460833
