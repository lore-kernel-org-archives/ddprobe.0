Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D4BAA7DA73
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743966593; cv=none; b=Z9ZNssoB8sxfIT4Fs7oKX2S5OXoDufFANXV4qnsRsT/SnBVMNbn+dbYAaaXZAb9/Qnj/MCgHiex9k5BMSdnUQnLEtJyLUteVK42NkfsjZimYIWJnY/Y9PzdHVg6JV8j4PG7zcrlIJpR9UDnuuWwJS6xLE2phdnKpKldnVwMmDnk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743966593; c=relaxed/simple;
	bh=ixMJbdlBmTARBp+fk4fSMVl5hfS6o+cg5AofrsQXks8=;
	h=To:Subject:From:Message-Id:Date; b=pUiswh7Z3u9EYaSU0iZYdrXJm+vVPjzILrqmY1RTAgNm7xEelumjN1AUM/su64e/36/K7Cv5gMOaEiDeXSWUbTZ7UlLXWIsGPozNBmAs2gwAe4OxxiiKdZpyclxoJfqqRdoXszxBIAzWEjNOuY1y8w0+KHIskbIQzz8yJ4eZ98w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=u9LgeueK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="u9LgeueK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE455C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743966593;
	bh=ixMJbdlBmTARBp+fk4fSMVl5hfS6o+cg5AofrsQXks8=;
	h=To:Subject:From:Date:From;
	b=u9LgeueKmgbvZo5GP4/lAKu3rujvbR/b/doRFvyugvLOcYqiHQB6YjLx/zyG0Lh8Q
	 xCF7WT6UNMOhTThpu83ju+JjH3bTANrxKDMzkHWA5FbVjPcsk42slofVx7ncMOS6Zi
	 d29myQ5OIhcJ7cZU0uhcsDBku8kF0noSLSkNIodhGJlzNbsnDExdOJiKiZCucEdJMc
	 jd57MAz316rmb1+4TYz/pg3vdrBq9gIm0JrUbXEaK1m38710I+gfukRnTdWvup9qRK
	 nrMsgisn3Tkjf7ucb7XS0hnpGGgAH6f+okrRMg52KpGbgRqCkngq7A7bo8xZrLzwMg
	 vVMTxEWm2Xy+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CA52C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174396659359.5818.7156237275519359572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c17f307e26729b73b7100dcc0cd500430196f9e2d6dcb85d029579b76bda2337
Date: Sun, 06 Apr 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743966593
