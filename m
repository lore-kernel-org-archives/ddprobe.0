Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CCB302857F0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767206633; cv=none; b=Ir+o4BbgqPSXe7xoPT4Dm4FOkHieghyr4Q07Gt2DXwEz9YcRgly1YGpBpgdaFcTWdFYYRD/sudV+uR9QH62TM6cZH7q7qS1rfnFZaLH40Pfvkol7OxW1gjj6n6BFDCu7njpxFOfTmqWcNcNGLsUnqysTEN7WvqwRnK2WDu23M4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767206633; c=relaxed/simple;
	bh=KnJ+cFtAXw+wkwPSBoikEkTocGzU2zokPMnM1bHfw00=;
	h=To:Subject:From:Message-Id:Date; b=RlY6NQRHlCnJJtMpn4yuxd96Yal6X5a3EzjwqXp3nx/hhia12Qp5atJ6rzAw+0mxGgWvX5stKp9Mr2XWQvAm2KlkV9lH/1ivVPCQmfYEiPvXk8U4qdaKaSGWQaGZNfQKPRiokpnWr6gmDttGkpKJpxtk6I00p2B5ZhloDrKGwLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L/T8O3Oi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L/T8O3Oi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0EE2C113D0
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767206633;
	bh=KnJ+cFtAXw+wkwPSBoikEkTocGzU2zokPMnM1bHfw00=;
	h=To:Subject:From:Date:From;
	b=L/T8O3Oika7hSgsX5EWhWoJCMYUC4FKZ82UsRGGn8CcrsQFISlaRzCMjeo8Mg2y+4
	 zJ72AI4u+p08l5z7QfM2es9vNvGrlcr2Tgkdel3kcwk79HA6nEJwF1REY9a/4QIob1
	 xdPXrWazYZb5XXfOdKhTff9IRxb4NR+9XWzlV9XbYWUSfzoSAlek/rJIpRKVKbLUMT
	 gd7pX0/a1GOqX1MjwiKZOryhuPWgut4L65STUUlpl52IvEU/RBUKdOmXzRrNJIAhC1
	 9spIS5/uXK7oLKPgymxqI1VhSVlpdYabAwSK5TYDyYRNBnqxN99tTHbvfTr0RXxMAw
	 Bfxw2HwOS4d8w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F7E9EEB569
	for <ddprobe@lists.linux.dev>; Wed, 31 Dec 2025 18:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176720663358.6304.5404774040905167848.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad72aaedc3cd714f941b3088601422be75255a69b6a6d12cb0e26965dc0d792
Date: Wed, 31 Dec 2025 18:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767206633
