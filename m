Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39BAD26AEC
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758376195; cv=none; b=aveQ6X5dotg/cfpvrBgGsV2c1UJgMkMwvRV9iuUqCS6Tp5/3hBOX4LJiRv5AdTHb2OcFILFQ8E4ZUh4pVgIu1PKcQdCKAXBqUj4uKP6B/JTqnl0lW6Zdld+qJJAibswaIASdIGLag+QBBBeld9f7at2mggBtNX90Mre/ySa4IOo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758376195; c=relaxed/simple;
	bh=QIsurn+F9jEyjePLbJlltNtAkDu3OnnjF16W5MuhvWo=;
	h=To:Subject:From:Message-Id:Date; b=Eh6nFry2OVeb/D9Q66+ENcKw35DIaOyG7zzvnznKCTUguid873xVkH5r20sbz3LdEWaao2NJhb9h3ME6XZMOpsium3ZdjhCvjVp2un3Wqw/y73XO6+inGsoUn3Y+2WY+WWfQBsybVssKkSoCKBd6+z70IhIld1dMG9EpEl91/eo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qrPWP9wc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qrPWP9wc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFAC9C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758376193;
	bh=QIsurn+F9jEyjePLbJlltNtAkDu3OnnjF16W5MuhvWo=;
	h=To:Subject:From:Date:From;
	b=qrPWP9wc5Za2hWWELtUFQjawcfjLVJg8ADz4uw7lFRYN6vC6mdnveGlA2ak3keEi9
	 RdHi11jPnSgSPJmSba5M2ie+RM0qoGpReFd9tdx/eId56ZF9pxKh01hB7KU2dFMVbx
	 FCZW6l2X46ThHx84TUgZFjwFf6CcjM6aZwLPgljLk1Sf3UJPx+ffeEhIvdY0SELW8b
	 XlTRUp2tBwAhCSOMV/QhsrrpSaGbb62Yn5cGv75fguqvgbtXiwxkYCM4P/3dLQQ9dd
	 acIQgG2d/968Q+/RRpPZC3ab5oJj/JQm9TNoPdL8VV52EPOAOK34RwCHHFZYip8Rep
	 B78YMnplz+Wqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F759CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 13:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175837619362.5481.2477215072509148471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d761dd8de6d06a6027e3e67ddf1097e8647e1da27ba110bc71c481f3267f01e
Date: Sat, 20 Sep 2025 13:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758376193
