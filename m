Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3246EA927
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:41:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763862114; cv=none; b=iMXdUGUEvreuvGmu1/USzk9tatwQiBb9aZpyz6VuMLKEFHVQn90WBzjzNwaP2QIPKy+DVLWrwtQg678J0wqpYF5pD78zJw5cwZE55Jdbh4rLNL6wd3hSUoKkCXc+hfFkW3vMknfjmerTheG52nDGaXK3Bj/lZweCcaYHIuUjc8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763862114; c=relaxed/simple;
	bh=a+WCFFmbDAn9YX2NKrc/4F7d5RNXNlIy0fzdB+5WHEU=;
	h=To:Subject:From:Message-Id:Date; b=Vz67Fkry9GcsNIL787pZLFNaco+OwctK+QxNAaPDLSGy6J+9BuPnSaTePG4dvpfhKK8GsvTevWxBjggE4PBKL1PmoKw8w5DI/zvs6nIsQv+shqRrQ+jD4GXN0xd84V+zWY+ZEvRz/ydWsNcg+Q5b3Ruve6eTnggCjafluLxzGxE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dqNwlgYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dqNwlgYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE456C4CEF5
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763862113;
	bh=a+WCFFmbDAn9YX2NKrc/4F7d5RNXNlIy0fzdB+5WHEU=;
	h=To:Subject:From:Date:From;
	b=dqNwlgYVisjuN1IfQD7GORAsL3+OO7hB870yaJHhJL+NexAhICt++MfAbnGAM3mcL
	 jj/43lUEkbftud7rw5Uo1BbgeIyF+W1jRfhkDFUTbZgKh+r7euMzHXixmAaF9ZJ/hE
	 W1+54bOKogkWsgYCOyCLre7CjqHeFul1yCApqTzLHYjeexJrJRlg/Do6ymjOmnt6wI
	 bJQxJVHRZnlcvlyprlN37gbkrX43C4n/2+5C5FY/REhmGZ8Po9vyGzl7XZP4L8xaOD
	 BEx4BS7xF3V6N6FWEkXabNJYjCIxzJJzzRB6sefhfvuhGtkMI2SWvenfxQU8/Q+Bde
	 dWK1zpH0ovDsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0B7CFD315
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 01:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176386211359.21539.6306367550857335268.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4b09f45bba9055b743b452c464664d711b947f48bf8300017e4ad2634341cfe
Date: Sun, 23 Nov 2025 01:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763862113
