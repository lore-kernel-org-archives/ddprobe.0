Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4864F1FC7C5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742054394; cv=none; b=qBRdXSvYDHLcC4Cwt34S0P4jWGMHY7ijRzog3ZQdgJf76Mgl2KY/ToSYLBww31OCi5g/Z8fb5T4pe6tZqLCz+KZUKIlOx0wr5cwpVMdGQe5KbDWb3Vb1F5PqxBckwtAzlbNNc/XePdpzCJ6IRWvvxeqvn6452kueWE8e49HaRgE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742054394; c=relaxed/simple;
	bh=QVu7m4tHkIZ6lC5mifWyNRefaSYnvswIJ5o1L/kfYAc=;
	h=To:Subject:From:Message-Id:Date; b=bXjBTrqv1xghYTO6XDxFkshZDEAte+iit8mV3QsJ2j7aL/ih9hOuLfSEs3PRVwzuS1mJFE6RynfpJEnzznSi9MwRL5Ke0ZMPg14vYHbUsHsgeu82yKb8mnu0A+A0RC2bbDiQOuj+SiYfZSzPB1kKLmdwJ4cDSFHMx2oZVmJAQRs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OFebYs1v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OFebYs1v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E4FC4CEE5
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742054393;
	bh=QVu7m4tHkIZ6lC5mifWyNRefaSYnvswIJ5o1L/kfYAc=;
	h=To:Subject:From:Date:From;
	b=OFebYs1vS7SWzWqEOv2ZCD+C5nuNyAwE4DwStZVLmjoiP7caTEsL+IPcUiPZ63ITb
	 rmbzPGuLAXUePkj8JGk9CwnUbOLxeJCM3GyPjtHhqup/yGI4XbTRm71oAwQ5dq6ZZb
	 mYKJMJVVQ72PVADDkldKnzBZr6k3tX1SzxXnN2Hf3DkKak3IQsva/qwR2vI/fGyhLk
	 hfl6mSsYJ9KZI6tksrsNbtRPfpX8jQs5p8k6ogldCnuSzM8CEIUTeI1AjX9AMXqw0i
	 A/Rv1K2jpGlO6KTNTWYsiY6SBdqcBDEUmvZ0kErrhKiCTdghvWcrXZwgIBsw5XCHrP
	 uV8xqRi1OaP1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DAB6C28B28
	for <ddprobe@lists.linux.dev>; Sat, 15 Mar 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174205439363.15249.3587597047773120461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8827f992e9b30f4c4750cb72bdb64c23b7a249bc26d9903fc160307e7b20f3bd
Date: Sat, 15 Mar 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742054393
