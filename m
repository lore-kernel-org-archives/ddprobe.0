Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F13A1C3036
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728057954; cv=none; b=Ohmp/HPmNoKd83c55OG9Id8E/w6snQ0GRzWLJgSL2bMagHPebe/S55xsegYbAKz0MSt1axsoOi3AB7z88PWml2tPCLrkGKR7kzHHPtVZ9PiM39lqSXTeRulPPmhP5Y6a+eKYwU4q3RlRC4M75Ec8NnvTTew46FS9QJFHbZDpqeU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728057954; c=relaxed/simple;
	bh=L1TF7NiqDs9H0JAhi1gOy10y4YzrL35ipir5mPcSIfc=;
	h=To:Subject:From:Message-Id:Date; b=hW8Grz7QIM64xG+clU65eWOBMV70GO9z8reEdkj7vnJWLWgyqCyH/wWGgYr4dCPYEdiqH5mJblgPi34dvWX9GLv//AZfdNha2l43by7fJwn7BWKw3N/4XNzzzdhtZu4MR6wCLhIwMEpExlGY/JZKtyf/eixejO+T4gAHlDaDZKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=agGonq7Y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="agGonq7Y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D4CC4CED0
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728057953;
	bh=L1TF7NiqDs9H0JAhi1gOy10y4YzrL35ipir5mPcSIfc=;
	h=To:Subject:From:Date:From;
	b=agGonq7YW50v1G/gvmyJAN+RaSLdTJ07cdjW7vmtMNh7/QZTQrhoHB1f00TQFl3Ap
	 sBf4DfUjfE+O0p8B3ngk6FPsezdHTdgu93uAvnzvWOrxGIM7YwfX0uBu26SLOeN+Wr
	 vEe9TDTYC0w12vddqWTDIfjDX9emJ4NqcE/Bkr/GoaIIOjY+cn/1fIY/ev0EI3ECbE
	 5hGqk52FpwOanKMP9jmxIIPPpynkw4fXATVW/i89rYBebp4QtSc3bdBvlrNtiq3VzL
	 hTcNnIAi/yCSwkhZIY301XVfvgaVG7YxMlH9K7MOEfKQbVDSbsILFAjEBSyzJwxbtx
	 35NmcWQMAeDPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96503CF8840
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172805795360.30362.13657494028509780301.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e7465d094d105f6712764cf89c2b42ec6db632152dfaf9540619a72c7821a1d
Date: Fri, 04 Oct 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728057953
