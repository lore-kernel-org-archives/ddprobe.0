Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254548F66
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721660154; cv=none; b=qwdSG1umeQ/ruHSo+gMFYltQSw4VYDL8HfZZhmEDEujBc1Ojg7PUOX2b+XA9Mc0XfkO02JHk3/K4JlTa2sIUDfIt1/Y8WcwYRJd0MgUVBnhLckgjELJ7qq57UUI2RH9BMZ1l6hHTpy4SsnKFYE/raO4bUK5t5LJA0qciUf3I53g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721660154; c=relaxed/simple;
	bh=b2SzGoN8395J//mXRi6Y/i6VkmA5g++a5NmmM2tq7vs=;
	h=To:Subject:From:Message-Id:Date; b=OsMBytKA+mD56Cw38cp1ugr3VHF180s/mg9F8pQuOGCzWXUpEXqrVP1lR9SwVSWZCbZnh3eomN7cPjLrWUU0M0mE54wqITwmMDEyVOl9CeqUPEQKPaa7QPY5uLLPHmWYu6jaJdRkRETlG5o1Ia4aE/sI5j7p30zArcpyL0y56nc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxbNqGyn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxbNqGyn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A484BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721660153;
	bh=b2SzGoN8395J//mXRi6Y/i6VkmA5g++a5NmmM2tq7vs=;
	h=To:Subject:From:Date:From;
	b=YxbNqGynXPV0EgfGeIWabl/XA1QMdJUVmlREuT7xca8SbA5ZcGPGq04Ds3eIBgXTK
	 9jC3ZVkqu4cz4AhnHCISsbAqDNyKosBQHtYEcwVW6Ep0hmFPeS9BVYfNyG2gUOt00W
	 lymcEy1SgrRpfR/V8Egc1levPEwvU4lBjkZbiNltkjG3BWTm2LeKE/t1DK1WExZtW5
	 3I13ykEEYCjpkQrIDq4pC3V6Jg3JbX85/TfuXmoNXsaD8XIBdxNK4VPI/stMBeySq6
	 F+v7GrwVIJeM5ch+SrXP5W//j9LHC/DPPwQ0Fo23ojnSXc2nWQLpnHxAPdxetSFnVr
	 UjcXJHtfOCjIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94164C3DA5D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jul 2024 14:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172166015359.25753.10840312432506551072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af9973ac25f0ca0bfcbdeab77ed2925e077a5efc0036255d76395bd64fcfffaa
Date: Mon, 22 Jul 2024 14:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721660153
