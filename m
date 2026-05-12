Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17FC0395ADA
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778582434; cv=none; b=cS10e06svnF21l+bgsBGGCQl2UBu9is3OaqMUsCBdBhVwj1Csj8QPuUM0FxaGka7EEAxyiyclD5W0dOI4ywlfrcmI8HLDC7cXyfuYn2AhGTsgH7+UgqquSdc/N2bHvBki30OOVOUhzbdwOD+lVWoLmSotYFSMh0OymEicegVvAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778582434; c=relaxed/simple;
	bh=mxDCHKWbsLqCt58lAx1S+P5YVAIJPk4FF6pXQDZefMI=;
	h=To:Subject:From:Message-Id:Date; b=dU1YG8KpEdMORwWhEs48+ZBoZxft1wC0TfMOPFLKPIlqAFutBDgkh1uIJPF8J6V8pxo2hDjyv5qCl2Uzc48ToHjcPmW42hV4gkvlRsLKZtXEFkrFJb/SyQTgy5doRCxnTT4NhyhBXjCtJ0bVD3bTTBjTrHut+nfmSQkkQbJLKK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YEk5QYtI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YEk5QYtI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD5CBC2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778582433;
	bh=mxDCHKWbsLqCt58lAx1S+P5YVAIJPk4FF6pXQDZefMI=;
	h=To:Subject:From:Date:From;
	b=YEk5QYtIrmDAx52z7xsb4cn9XNpENN5bmFc8rQBfWm7NjlAb8RuCjHJDutQwvsA/W
	 SDoEhFzEYb9Y6Asbu43T6RLKqw7EhPqrIKLM27aBinqlcZIBrba4qp7vwVRhTfks+j
	 YTxKAiCOWnbmzVGOyBTxLoXIamzTjdff2oVqjL4/jHDKQhGoo/rqpQJhrDXNDrUXxM
	 AgO6QduE5AxwVs/s8ZoeCNk63AsRf3vTutHjzYkJs/yk1JbAQZB1NRRzRvubG0W1ah
	 CluEq8NhRXR4nbaW16rSQGyxSTzVsZL1mW6qIAeHYZGLSaQqHxnK9AAk4Z23nnbbjN
	 fjUjoirAfr1rg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8B6CD4F21
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177858243369.2844.9616610910826213484.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f5ca98efb894e9f264d6ec179868089d78286ae24a20fbb00333793a0e796c1f
Date: Tue, 12 May 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778582433
