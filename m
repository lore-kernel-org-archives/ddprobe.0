Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7646516D9A0
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:59:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718751563; cv=none; b=s5I8U8iYFcW6Pj+EYxWuNAb7LE+Al04OFrF3eZbFbUSxuy1rRFajspB7ZHL6NuHZUt0ioxIzfbb4PbDubLwKPSc7HQHXpnmD0to26EdDlVMY240s1ynRTaPqi4fUjRikHMSelRJy2epLKH5PQ7dNJzFTYtOGBHFIl3DM1ytZwm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718751563; c=relaxed/simple;
	bh=jwduD1GjnzHV9VUZt5hWfWCNrCEuL+QigpZB0csjUjg=;
	h=To:Subject:From:Message-Id:Date; b=HzWcyZgEbRT12Rd20zgbng7qQPPIw4TvG8lrXlHYl9D24huzgud1CWVCK+cJNXhKJB4ZCKmv6niDBJROQg33HVmuPco7hcBhIynN6rAoXTxc0w9YfKedzzSA5KCUWwJtgDtSEHAAVciSqpgyDacedf/MAA0Rzuv9ZcXq2cBeTTE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pG/HEEK7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pG/HEEK7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED6F6C3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:59:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718751563;
	bh=jwduD1GjnzHV9VUZt5hWfWCNrCEuL+QigpZB0csjUjg=;
	h=To:Subject:From:Date:From;
	b=pG/HEEK7eIrAC7gaWFDHl8+TB7BWOC7j5VXfujFhOJNzAqH+tS+zmuQV4k+VR4pnZ
	 q5JfPKFrvDCDtjvwHDN1YQNzMRbrLVKCOnACTNBlZhYyNrKLht6Z3/d1Ot1DjyGHEv
	 Cz8CxXjSrotOPjLTyzlXlBITphipv8v2FL58WuqxF60R7GDjb9z4wQkCNqftI9TaOF
	 kEacfF7OHtAgJde0knLRz1arXfRPjGsjhTzoduZtULkxAhG9L1EcCwSCsDDpwDAtrK
	 4uh+S5Ui7tt6kCautXMDTWeA8Kc8zzkrT9IYwqX3kDb9uGxe+QrZ8B+4EcP+L588D9
	 g7TFYB8Z4qvvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D127AC27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 22:59:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171875156284.3679.11038689715054754050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c26ebb994daa2fefc4636cbd780ff9b46eff55f51c737293f43ba24618e510a
Date: Tue, 18 Jun 2024 22:59:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718751562
