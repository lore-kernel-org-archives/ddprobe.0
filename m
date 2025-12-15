Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E9006253932
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765821774; cv=none; b=ArT46jTy+1asRPwJX95IDw5pGh7X5Do99oGKtsb4MXhGjc0AWfp/+9ldKVUfZ3QzCD3AOcaPJQ9ZoMFKpuey+6s8Ia0ihk59sAMko74J+Cm8G2zF8B8JRxeiV8wRMKiZCQg8UINvQL3pYnFbOPvbSglteERVleP5LX/m3oqH2x0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765821774; c=relaxed/simple;
	bh=NXU8paetK9gD9y+9V85UjrQIVgwb7vnts7AS7JEsXjs=;
	h=To:Subject:From:Message-Id:Date; b=EZbzlUoVWiOM57to/BZCKpktvnGLaRGwxE0z3RyskTqQQAMu7uX36o/vT1M0XeCPOuGnXoWYEVRlKiiKtD+uM4PhGn4ivtdFPPFeo4sqhOKTunZ8m0fLxvRBGIdTLNqz7QrC4wCCcTPR/H4vDWci2emShnOBlV9FDrMnQEDIOrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RyBliluN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RyBliluN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB7F8C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765821773;
	bh=NXU8paetK9gD9y+9V85UjrQIVgwb7vnts7AS7JEsXjs=;
	h=To:Subject:From:Date:From;
	b=RyBliluNeavSdrYnEnsotAXhVg7Z3MrPq3C1/QtGb6tx+qIeWw0GI5a5LJ0kmrqGL
	 ZZaQvEmGUB4ipW9OavepcMOC7nFIBQkfd0tA7sAUEbjoWhSSLMqgk1Npo2bsieEYKl
	 Rn8tRn/jN9tjGIwrnfKBuck6IURzmEsPBwp2q269A8WvBnWX24OUTN/b7v6whyxvf/
	 tTaZJpQWJEq4hS8Wz+KdF4U06UznM4Hscq5iFxc7K6u61bx3cw4PzQptdX3hEQdyr1
	 PHJQX5Mdd/nci7HMFTlUJt0ZUEd35mAqDUNmW0oZayvJymFa+YowuMUA64gzaOQ2TS
	 zS3Ahz1qwjc5g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F6CD5B860
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 18:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176582177360.28265.14101197171686719429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec32eaee3b33b1494a63ef3d38f1ba5ed53b5f6c04467af11578b32f8c1357c7
Date: Mon, 15 Dec 2025 18:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765821773
