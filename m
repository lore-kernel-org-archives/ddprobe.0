Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 427AE30C171
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784727514; cv=none; b=I4vkLeYQ+KYW8EwqHRr0LGk5YM2v0mGSxpbCailc9D7eU1hBMMpt4ATQPG3fi6ejdyaN7Xq6Lqvpkd7HpQ4+LjvIfqgOxLXJb6VT6zkY8Xf03DrwZoizJ5wFY1uDqPzLF5ph7sAN6B5ST8CImhpJdp7ebNOWb/r/Z8Z3J4JRe/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784727514; c=relaxed/simple;
	bh=iYgHetWfDMdL0ZNCoilGN2AEIMCUeFC3JEqxvwjjTcc=;
	h=To:Subject:From:Message-Id:Date; b=AFweYRGUCe/P32UoDfNe6ogdjHhAwbY+4a+NNT1jw3DKp+nx1in/3dF+wxPdQ/lfitu/4re6IoB1cf73FrEEK5PTccqewrRp6lm6b5NS16TaXGXe9jfqrwA5kdzxzkqaDl3V9Wp5iR6preHG/ODQzTgyI1X44CsEs4+stCcntD4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4ltDJ2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4ltDJ2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7547C2BCF7
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784727513;
	bh=iYgHetWfDMdL0ZNCoilGN2AEIMCUeFC3JEqxvwjjTcc=;
	h=To:Subject:From:Date:From;
	b=V4ltDJ2QMTsJiT9ot9QoHSF6knGkdCxaOkfFQAelgtROFqkJ9JILNzrx5A1Z+Ri6F
	 2NaTnerFqnD5nTDEwPi+kEOjukc0A0+n1sopyAiey58XcGPTzVh5SykBZvtmSnwx+S
	 ooBmDxnnnw+ire0SsQZ4S1hURtd/DR4A4IyA52hvik54jyths3m0k9xT5DvKm8hYVG
	 jlAVp23dEyrx5cMfyQKGG9r6NyIpHmWQJQlzwgAPTq+jpkKkpJXi0xxB389E7LrbhK
	 z+YQzZlrOBI5QbNbyH1Hh5qosc4BX3F3yeeJn690rWFXB+Ixm2J5ixyBlqK8TMzQqb
	 Rj5hQhDHOuLkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B203EC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 13:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178472751371.11488.1787270367042623789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a78d197b4be4da88cc57a62df57d42970b35bc49bc9945b19aa09c14a646e53d
Date: Wed, 22 Jul 2026 13:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784727513
