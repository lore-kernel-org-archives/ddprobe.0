Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 161C231AABA
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765537974; cv=none; b=qLQE8nu0gUinfkH8TXZMquhZuSToeOi9aa2MF+QLhExtKdObo6TC8ehOSc4rU2eFZFxKBpROBVo3HKkDOLBjQbG6XMLndWWrCXlLzlRiilIRre4LQKGP537j7uHhHxeeblvn8t0dm6QmOPBKK5uBYzSdvqlNrnvwpMw6y6SPjxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765537974; c=relaxed/simple;
	bh=jMuKz3qESqpckD08h7MGXT9RARu2zPxEAbN3nKwApxg=;
	h=To:Subject:From:Message-Id:Date; b=Ib50XIBv4RnSGjahAeod/yHV/0AL5whz+jbJarWAahxQ/3ZPQmh/zD4EZKT2imlUC02oExGkE4nOx1Y+4o8KodHnlifJmOw92FpCVu90i7t7oQ89/jjdHiQ+5i3StYJijN29kSDslwLTMlGGtuhH34y93qfqorZImYO7vuc536Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lAkwvhYk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lAkwvhYk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8749C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765537973;
	bh=jMuKz3qESqpckD08h7MGXT9RARu2zPxEAbN3nKwApxg=;
	h=To:Subject:From:Date:From;
	b=lAkwvhYkjKfSml43NLLDp9HrH/UrJVXS+kYVt7S8sHmlkk3QkqYDgIwPHW/M1k+bB
	 UVo8zGJ/cDpWZVMkfqYnTgEeZ9lJW+naFSYf8lEozJMyjbwNBZM8ukXz33pfHX1Ja4
	 vjwbXNVkvtXkCzG/+sZU1Y1KoDTKhzXOZ+erOY0NaDnzNQqMViHdkM9/nQ4tFgWWdy
	 J80JkZ+3wI/X8KwEtDavZe4Y1yXnCnSwfAZaIgvoi7DMvfXLwkQqZZIE5rdLpSJswp
	 dK/vpjjP7jePOTwLoTqaMSiLaIkelDwNI6DrCz7BnzVLsnQQmVQapyGuEzng7kxCOz
	 hvp+KBe7b+JLA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9510ED4417C
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 11:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176553797359.31590.7502651549849840837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0099b4f5bc6a8341147bbed0bd93d18bd33f66d744f5ba64cf0c72d08d496f0a
Date: Fri, 12 Dec 2025 11:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765537973
