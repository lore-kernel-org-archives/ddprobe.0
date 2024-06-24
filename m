Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0F7F64A1E
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719194543; cv=none; b=Ng/S9GwJGAwsyix91d//BsxplzD04Ji1/6L9zicXHRfJnImF/g5M7YhDeLId1DVLb4x5mL8ukyPk4H0Xx60LAvd7HEclM0XHXretmcwCZAnOgF9J0M88bAP6Tf+KZr8p2oqI+0bI9HC7LJCYlnxc1eYtref/ITZWLs63WgMCpx8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719194543; c=relaxed/simple;
	bh=tD/TRz+BGp+nJt26TIQz2gKZ+eYXnYBjyTyUXcCxj4E=;
	h=To:Subject:From:Message-Id:Date; b=vGP4q0f8i0FvlmyAT/tgcxqnZUHuK+VRWOuQydKXhT4qKyNf6h5F0Yz+3GnhCtoxA2aqy6najYi9DSWwNdWsiAIeMy+5dPzsD41JuUrXaLfQHn9B80k7tvK27TrNiAp7GvTvGrS7MX8S79u+VdXWX8xuLO6pOTD+lLE5LJ3imfc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hP5ESuo4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hP5ESuo4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D849CC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719194542;
	bh=tD/TRz+BGp+nJt26TIQz2gKZ+eYXnYBjyTyUXcCxj4E=;
	h=To:Subject:From:Date:From;
	b=hP5ESuo4JnVAyiKfxkEGku0S/5BzAiSMaZ5EvOQIR+hQ2ifFQpUDKnccsU5YYzQ6Y
	 GLolCjiI6+V9tfzjcIQVvo+yxhXLmwG/5rO472fnjB2yDcifHAnZBubk20JsmE1NF0
	 N5lwJkklDU4euUFbGhjAKVUbD1nvQ1KEGN7MCYpoyGgKUN39Q2TE4CuhYQR9NkqsIg
	 qKlffEp9EbkQih/G4cRE1ux3XoUFJ2EM1bAh0c1zgw7gIkflAIvWjt0hk1SWGzCEfF
	 lmFIeNpuyRCz+3BUTNAY+InuwQpryZbflZBwsibhxO+LpC1hWG9S3J9eIO7ifWmDZq
	 qOKMbWqZTwy1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0131C27C4F
	for <ddprobe@lists.linux.dev>; Mon, 24 Jun 2024 02:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171919454277.1051.15116504369424031405.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 79dc2f726544e6d4018ea0d0fa3478ff0ba81d6780ec4ace34c9a1e558b7df35
Date: Mon, 24 Jun 2024 02:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719194542
