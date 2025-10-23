Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 257701459FA
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761188394; cv=none; b=j491bYcnYfcm5wZzf4T8hSt0in7ayKj5LIuJbzsJR8hKhQWErMf1MCRXSlZ5Hwko0QpkyfYuoewJlvMF//7ByVY1F1mBt49MsyDVfRiKZkShgJsdF8KBsZYML/+pCi3ltJUf9QdsUMj74tqt4UH12yRjDUFX32kzTGd48CkcJ04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761188394; c=relaxed/simple;
	bh=TQ/HUkTv6Iqma4DKHxJBsy8qyKhzP1JsjT31BKrIokg=;
	h=To:Subject:From:Message-Id:Date; b=k6HVYwlyB41JCKLGgeC/wfLyiHUndfaGmegW9WHOA6lFQKvS7a/puAPuIou9W44DCk8ClhiFQ/ZtFe0kSI85jGwv0a9/w1gIds+HBKrYvKMMa+ruZtY9IxW5kFq5AkmGkXqc7XwvmtlSKDSmmwT/vG/mYuI197INNAYckmClAq0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hQ8M+/PJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hQ8M+/PJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A443AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761188393;
	bh=TQ/HUkTv6Iqma4DKHxJBsy8qyKhzP1JsjT31BKrIokg=;
	h=To:Subject:From:Date:From;
	b=hQ8M+/PJOPioh3GFn8jitbL+e411r7AqMOF8+Fo/1CNT0Pb4s9837VCTcsrq+Zu+Y
	 eXI822l7FC7dF08SSvnkNa2WjIy71CTfhU1KxJ/UuhEInRhE1o+knQj/g7hRJLWfVE
	 hl1eE/lmu0JnrHCBIziWpSq2zErOLIgTeqoECZKgVUukdLQ7mJeR7ME3tkdPq71PhV
	 d/ctdVGaRJ4V/lT2co0Wpu63mIml1WM6vKe+I74T60/tnCfJEIn7XEsvGCzphdE7vb
	 i15TCB9a+ndnWocS729/gMMjt7nEMso3V7rI55j+p4D2SZFGz+UfNFewyhmIFIRYGR
	 xYt0xRGz8eJXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91CFACCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176118839357.25301.9174275964155698799.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6831786a465c7ce2ea197b09776ccbd90c40db337a9677cd384ca9e06667360e
Date: Thu, 23 Oct 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761188393
