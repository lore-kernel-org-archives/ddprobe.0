Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 102901DAC87
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728066954; cv=none; b=q8j28X5bH9yHrqTOFyFvHTXUFYnAkj30mvwzY65l/mbOQrSi8iCa2T6bkLTtbJcGcH8uPufJAbm1UyQdmelpsuogAQKqqpvP5/7hqSVifRAqhDhJCn06tTkUVES1WdXA1o1eE8YH2GEVoSv0P/a/jzFvG1MyWuEmfw1UiKNIj9I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728066954; c=relaxed/simple;
	bh=L3XioGp0CRblxXl00buHHgmuYbv5PNIuuG0+CLSw7qk=;
	h=To:Subject:From:Message-Id:Date; b=F+xzf0F+sBYn/xcBrDFrHVhvGww70PmVo4f1IKbXt+n5T1/4YFPAJCWKG2mmUCuzgyIxYpsrPIY27ndIPYSzMuytQemsdopUZ69oZrX+Z7K6/Nf5MclsI2OfHjWpIToASGNULHrZ3FDZTYQna395axLUQhlSH6iXCwmLhGc4Rn8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ecoZjKj+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ecoZjKj+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5CD5C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728066953;
	bh=L3XioGp0CRblxXl00buHHgmuYbv5PNIuuG0+CLSw7qk=;
	h=To:Subject:From:Date:From;
	b=ecoZjKj+UNsnGf8Y/0pZ0N32KGn2QsjYu5hdeWyeSGvlg7TFthAUfb5ArAWesuUPJ
	 D1qa/pmdVjWQBeyif9M7MXv3GrM+df+N+JB9MGPVDXgYCrgr4+aIXaRQZ/1POBNBY1
	 y2U9bdJ1uxpEVfwOwsdTAUYQ6df8/5nvv1oBj+AIsANXMgsMchY1hd663kGKjWH/Sl
	 UKgKjzLcoYKIdAWb+2EFCGwla2gvTGSk3PDDPUVlLSRAWfHstBzUOSywlsQ+goy7uO
	 iR+qWHXmJpQ+WNNaJFqattmTWoOTUSc0SXBH1nrIx9QwdA56KozqfsE34fPexe9i5I
	 N61n6i85/Aspg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96478CF8854
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 18:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172806695360.7470.15982221937715129322.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b5221734b1891f351e74424a2db4b6e9ac3aff344a87383840a8a48d08af999
Date: Fri, 04 Oct 2024 18:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728066953
