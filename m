Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E05A1474AF
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728039354; cv=none; b=HIGXFk9IB8gkeZhToUtJ4Xms1U/uLIxl0CE1u0QUms2SKzL+NSYYCQYRE+xp3OIhcK5FAVLU5iITrls+UKDYir/k55SMz79aCjOPN6R0oUTpRUfEK7i+HbByyzQmAJl+40UtDG+IIqIbYKA9QiFPQJYIxU1KmuU9TAKhBS1Erfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728039354; c=relaxed/simple;
	bh=eieb9AyWXAIWDuXkLJhZfQGWfRjHP7ca1UB+7z4gWQs=;
	h=To:Subject:From:Message-Id:Date; b=f5ddJ4wFT4JT7mPYXc3a1qdotEsmCUYiI0bRTQmMpl3c2TuWDGBWWybky0NnAillNJl+wWCpYMG3wBas1Zolm1dZVpcOTmeCM5YIXEbz3KDFFezzThjxFitqB6D+5Drhf6youf//2urK57rIkszgeQdtHGfbq8j2D0sxv2m9cb8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QIAgWdh1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QIAgWdh1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7CB3C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728039353;
	bh=eieb9AyWXAIWDuXkLJhZfQGWfRjHP7ca1UB+7z4gWQs=;
	h=To:Subject:From:Date:From;
	b=QIAgWdh1c2ipNKtVv9bB6JNFFn2cYp8I1yhy5OQOiJy+E56jx1BZN0o+fzZlMEtrf
	 a8/B7WofucbCmYAEHrZe1TlwAXkc1DJeW/l+dFETOrMNMkPkKWxnOmXYm6ZeRwWP/W
	 cryBp/Wzzg9dj2KrVcCjJ0yE+1dDBKltCjrdV0yN4RF0waxmw9Obk1gkNS1fQ7GrAV
	 z2lKU2v3KuS9yknWHXS/X94bMOytVazSoadjGPjlcTBu+D1PRF/QxHwP3L2WhpWfZK
	 WSL23SqBTlByhrUm+jC2SvrOYdixK1r9phhaM0nqB4RaUcEWAAnX9LwFRa26XoXMNV
	 pyW56jNf5GuzQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9BF5CFA763
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 10:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172803935368.12522.7696529737484356131.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18ac2841f560b5d7ba07daa6c0bec0c0b940d6dd37637fd75ab5ffcc206b5baf
Date: Fri, 04 Oct 2024 10:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728039353
