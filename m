Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 597062264DB
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789356634; cv=none; b=jJykQRy7141RPoonmFmNSg2jbDtaByTK8/f/+zKUgTRlDJwBMQUYvB3m5v10eI44O7Qa4Iieecb5pW9msqydp6UNTJLzL2EdR0YQ7KfNV1B+RbZgrLJr9ZCYe86MqgTDdotCD6fM48L/dw+R9bkgFLz85Vy+tuBrAlQOi8iL0VQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789356634; c=relaxed/simple;
	bh=joG9/cQ77CFWFkUusX9elukaJnalAnIkZFYxKGSloDc=;
	h=To:Subject:From:Message-Id:Date; b=t4wH6UVZgzXfMY6RlQe4y6awo2a8h9oIl0Kvs+sp+otVkMUpI4mrWaoT7a0tsy8IVC7ldCeX37T7cjq6nJkcuRGr36n5zw31vD2urncw5lihMT55SbfA1v2BJRJ2uUbpPckbeg+ag7VJPYTHA+qxIP33i9x1StyJB/IHawNPc7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GeleQRph; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GeleQRph"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D321AC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789356633;
	bh=joG9/cQ77CFWFkUusX9elukaJnalAnIkZFYxKGSloDc=;
	h=To:Subject:From:Date:From;
	b=GeleQRphc9xa9JIGCVp6z50vdSCqi9+ffEQL6E7nc7KYw7aAAlA82Ns9dZ7mJmVgq
	 F92OLJ8BNCqoyD9A4M9ALUWcxD1JeJuKE/XSQy2qscXBelkT1e1yA6LvLsxfgNYy/m
	 Dt0GhFRmpr2DouU7k7Zl9TvsnLdDmBuwwRxVwnGlZ/J8D9vCj7ns7uIcbnayZ/tCzD
	 fuYRv0Dj/URe+Z5qQfLk10f1hQIFzaA6kYKCsvPJU0GKvu/0lwhIDT4jFnOIukL3dB
	 7AiFwa0C6W6pcYK0hzQE0jZeb0+xxJnghpmb0v9s9wIr+pLPgSxWLWOj4BeguR1X98
	 nedkpml9lxhUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF66EC88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 03:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178935663368.3149.1332407739854406818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8612c398cad57bf3c6fc8698f985a234ccd5eb751084ca727b59e8d28fd23b
Date: Mon, 14 Sep 2026 03:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789356633
