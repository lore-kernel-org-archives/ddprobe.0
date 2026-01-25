Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F68A221F11
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769385234; cv=none; b=fGOEAQu2fCl5X2a4NjKOcdiyyQNUmLSkfqnMRG20dJtu6PKifSjjykBBp53YF9W9lJMtKYXPCOMECkq7Tay57p9NL7JizCpx5Ri/sBKvTFRib38K1+FAycJ7DoF21pP68SKLd0jxYbtchFhw1snP3uLms+K2/k2pWJpSkcyUILY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769385234; c=relaxed/simple;
	bh=GywsXuYYG1lC8ZukjYh8YKuLmhe8jGdUVre1BN7uprU=;
	h=To:Subject:From:Message-Id:Date; b=cN5E/LnskJu99nsYtWEvTce5C3x/1PzEZiOK3aTGHc+Hs7xXiuBspPzRt7e+m2kIxtddihjNPMU/1WWVIUHrBzGPNl2hUgepmqkFIwLIaf3AMSVckB104w35E44aV7yEd3TbSRk2ESzvc153938vowiHISkPL4swAwBIvoW4L5g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3zJ+OkF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3zJ+OkF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B9BC4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769385233;
	bh=GywsXuYYG1lC8ZukjYh8YKuLmhe8jGdUVre1BN7uprU=;
	h=To:Subject:From:Date:From;
	b=h3zJ+OkFSKwIPM+3VvrWyyD6qmAG7KMhpKTCXUlE7cs+4UrJkgF4KW4GAZa48GoKf
	 /qA0ubc5JqCY18OpANbtrwIKaOB1pJUNnR/QObcLRFcj+NV76XYlDo3Hi7fYVT22uY
	 +Ae/kMKrHAecbgI8gJrJDkwvcQa2s7aBx+NSgkE6lJfKTtNgAO8kJcc6tAfHHdah4h
	 0zJrkjw91Y/i5CSI2FsdEHIKIM5geN1lechG2gotzwp3cRXX7GHYYZ+kMCI1oxvujy
	 RyxX5ULo5zYcAw8T/B36AJl9fMzQ6mHWda0gkiknKvg0hdpvwjxxp+B5/tcwAAor4M
	 uddMETcXFhASg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FDFD7237C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 23:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176938523357.5640.3837361577735152209.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 618cf1b4de81c5679d159d8183f899534c776360c79da7e628b2ca0eb5731a71
Date: Sun, 25 Jan 2026 23:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769385233
