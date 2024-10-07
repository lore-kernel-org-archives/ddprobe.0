Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 475EA184551
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728335754; cv=none; b=NsILRZwXX4bu+nX0SmLKsc86WQBshSH8t+VagmQT70Yz6s53I5UdO+9zfn6yTTwPjDFtygm1bZ/96pnxYfRb/v/IefOo7zI6TeqcRtFGo6xHMPiH6EUbeYQea9/BxZPT3f7YoRZ7xmKQrehB+OtkVnyHox/aBLlpQ+HUkFHWPrk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728335754; c=relaxed/simple;
	bh=jZiluovoTOYodec6PlTrKn4/nSAD1l9cuDC1lcEFyus=;
	h=To:Subject:From:Message-Id:Date; b=X322a4XUF1yre78t6YTGNp4NBwHqKFRIL4k68rEXHdat2P1cIJYPzr2XlsOLwLCYu1VCi1HL7LcNlxbw8EB7sJgj343wRJzFg9FHy0IoV1N6kVT/y/8qvO0PsIh8ZONvRXhrv6Kgw1yLpIbdVO0J4bLPUFGqG6DmplQV78g54z4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ub7JqolQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ub7JqolQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2AC9C4CEC6
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728335753;
	bh=jZiluovoTOYodec6PlTrKn4/nSAD1l9cuDC1lcEFyus=;
	h=To:Subject:From:Date:From;
	b=ub7JqolQa8p7M6CNMA1UpcqaZzALG1soAjyYt8HYKJr9q9BOLMj2WrIB/VcWoVmiC
	 lQ6IBBp7n48HgieHTdDD3hmfde0Wc0owXAiDmSu4dU54xIXnjGJZ4zsuI7bV7eENcK
	 eRkEdX4lqj2fu0Fdu/zjTc9HDVw6RW0p5WkC5oRJOR06AYirOts305UKbl21r1JMOR
	 A+vdlKXS9e+RdsYpw59m2eEW+8FSTA0Gpz3tIj1y3FSP3H/M1e2hf+qXT6XZZQGiTY
	 5YxOWWTjlT8fXjQlO/eodUtOYRKvu5As6ttJbosQkabGJUj29twL5S08uUnEAdWWzT
	 yS1bee5mYOWIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E90ACFA754
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833575364.4269.16398454659698208829.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4950d79165d8bf52982fc3e0751c882a7cbba0e39faedf1e4c4ce7b7b3aaf639
Date: Mon, 07 Oct 2024 21:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728335753
