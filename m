Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AFF17261C
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754485794; cv=none; b=lL5wMKFv2uDqVNG1YdOn1INVzT2RBTxSaEUNGY6qjzV154HuJiTnqm3vny4+q3DHvY0Dxnb22dK9YDOOugjd8QUOzfqTVNUEnD4g9T+M/p6HWMLvV8ZaT8TrVrRiEqp31go5sJL7UYXwxe01DzV/7dJfDVEo0QOQCtO0PV8HHsQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754485794; c=relaxed/simple;
	bh=SNanMm7j8OHx35GtPDlnyCGFdJkln+L2Nh2glzS/768=;
	h=To:Subject:From:Message-Id:Date; b=M7FQwbRm9O4Z/vheiV/WRMScoJhx62wYFcWNQ8QFnWFa22ZBBHn77XF+HzTGaAJVPhKJ1gTx0sT5P2NxSRSNulU0sD4UEXNMXvmQ0vSSCWXrmFEG7dqptpFwlYelthm7RaKsfpGd7eCGzjGD10BezuFZ/F7N8BzRGgDnrGi65O8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWKbVeXp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWKbVeXp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0D1BC4CEE7
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754485793;
	bh=SNanMm7j8OHx35GtPDlnyCGFdJkln+L2Nh2glzS/768=;
	h=To:Subject:From:Date:From;
	b=qWKbVeXpYw3I/DfpsW7suxG+oFSxJibjzOhw8Wkih+5r10GpRipQ6gp3GNVHznYMB
	 nf7VRd7HKxYz3mTB5mqiElGnm/LbKlfVroNZYV1oqor/7/rLva0NBn1A912W6OCGvl
	 a9vDT1lPGqQqZChNE3ecJ0+trnFWm7ou3EHAFKmzCohnZiGH+Zchgi4SMSq9E9T7Lt
	 C2JR0pgZCU39SwPGkIBRRT7xbbRA4e7UwnJUjN7hI1UOvcV1NkHv0j/v5yfLgMdVvH
	 pJ2Qf/6aKEICmrtpmYfNyQ96FnooY8G2LuZCtUOlVaXeO7H8aUiP5mLRVeIqOGBYyx
	 hqikJoE5rISEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB86C87FCB
	for <ddprobe@lists.linux.dev>; Wed,  6 Aug 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175448579357.5823.2872201578541060020.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21e07fb7763cfe0e9fc106c06eb0dde984fbff934f1a44d11d5a6f0e63a28bfc
Date: Wed, 06 Aug 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754485793
