Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BD0981732
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756605594; cv=none; b=Z0eIM9ZJSVR/mZIQlp3s76RMtzGl+i+MyzEJrvdknZ9TXt8kC+m/JLrdOtVP7oQDmPd0GNxeG8tuLrNiIuGn+B2ty9KlQg7/U0QW+wp7GHrRwQ32D2DF3lOk9aBRrmASFmcBPZftxwrYFnL6mn0uyG3TexNLyzj1MJdiq0E1cmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756605594; c=relaxed/simple;
	bh=V2SB9JaHv3HVz8l6JcB6wHyPjiXZ5fFglDIrQrp0tWA=;
	h=To:Subject:From:Message-Id:Date; b=gcEnWqZ9bSugSZpOSJDhOa1yVtT8ZBZviGaH/8h5rWzad2fXtVrpY1y9xBQab/sOVqOYajqBfpvkWU67L+U5g8TZW8HRdWof/ehg+1EApc02l2MwhtrGR8L54y2L1l4oc/cjlUL9o+yxzZwVCSSFcRuRL0NcJIE5lYIHELFAeJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EwBL7klp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EwBL7klp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6B6EC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756605593;
	bh=V2SB9JaHv3HVz8l6JcB6wHyPjiXZ5fFglDIrQrp0tWA=;
	h=To:Subject:From:Date:From;
	b=EwBL7klpvGROjXf35hw1KIrnIjBAcPz4e24hRItXvYpOCGld8kZem0vBW3UaHeIpa
	 79wDgypg00PFekMFjAdJTJ8A1kZ5Zz2EDmJ7XHPF6hCbRRnFEM/me8/GjDhnWRLRzL
	 fNr5nzYUJE6+9zaPf4G2kVtPdZjwESpjivvqjfOAP7UM1NqjXoJUKarSJ44UVXnfcI
	 LqK4R7ngplnHftMpKtRmFk0BuILW6dWCiw7MPBwrpL0/cn/cN/NKYXuRycPPP/zhjk
	 P++zp1QLAj6ihkX67pdyPsDri5U8KHbk2Ypod6iYH3eesgpSbZrBW+jGnRGJD1cNB6
	 gxe4XfF6Zz50Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1DCA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660559357.25059.9945683767234841141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b509e253eb7620a64ece3133197ac5e68fcfcb41e89b2ca941f6ac0accd8b4cd
Date: Sun, 31 Aug 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756605593
