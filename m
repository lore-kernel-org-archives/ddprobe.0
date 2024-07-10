Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7716439FD9
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:16:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720610183; cv=none; b=LY/KdxJvLJuj5hvwfc6W1Wjv5kqL1WEQQuv0jddR7zK194dfB/RbMXdmIfrm9j4ucbD3/nsTgUd9Lv9aXGbou62hzG8c50dtnToYAnwUiWUixF3SSzgjr0REorBaaIQmHtkClhBL926iWACE/XxcEZue1hF7Wx/+xJOHI/l+Ymg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720610183; c=relaxed/simple;
	bh=QZRuIbb6RDIYkB9pbdnf+GS7xH7f1BqUqLzUKLqxgMM=;
	h=To:Subject:From:Message-Id:Date; b=lzJA1WzcnAnH9KehCY5odUt18G8vrNPOT7CPPyTwtAolOVPTv/k1VwkmgfsnoXIhSyzp+lnrhXAFGRdOuQ4AMlM7OyiodXxXPN4GlftzVc8i4kr4nVGkWj1G1m9vNaOM/q65tlSTu1zn2TsRWPx4Ql9wf9uMthEsRbKaCTXyXr0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u8Xu2YQW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u8Xu2YQW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 05470C32781
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:16:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720610183;
	bh=QZRuIbb6RDIYkB9pbdnf+GS7xH7f1BqUqLzUKLqxgMM=;
	h=To:Subject:From:Date:From;
	b=u8Xu2YQWXuqjdwzAOzrIfOzcmLSIU3fXWtoxWU9ESCW5JeAMWr3Yi4+W6qWnf2kbx
	 4VPfbMNO1qBY7/gYIFEu/IPA0B0iYhDLMNlqNC06gjYcGFCbiJydAX7MMSTKe5f4cm
	 sc9HtC9F1gFAtvXmKgAjxhj79bc6x9Hw7QWyKj8eIoPA+FpIFZ4uEwoU1ZY0ZQPpqN
	 dwCbVeIZ8Tokv0TCpbsZJpsY9iwPAG3Ybro+2aPScuMQjD6+pzFG5ROfSdfEG5rPyj
	 LIdqbAX5ysY157G7QWLmVz9ouAIzMscNDtptLzYHydMBzxUTr6yn5PxXhkTRMEa2ZX
	 BSfm96Nki8MoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DBF36C3DA45
	for <ddprobe@lists.linux.dev>; Wed, 10 Jul 2024 11:16:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172061018285.16355.3869943368870644822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4e07ad409f26f01a738aa38ad8695f52e65d3b72ec8d43424889619a708fbd15
Date: Wed, 10 Jul 2024 11:16:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720610182
