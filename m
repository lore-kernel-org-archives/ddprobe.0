Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F43F198838
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727267154; cv=none; b=F1V6i60mV15az3FSvNfxA5uwq0G2jx097c/pq9EO9m/yHDhCR1Py6DU1a7fWBqnS+DYzBVW4n4iKUYWA4SHIzbZIfeN24gbOJfsvNxWeBIL4WUwBOdQ1as9BuscukHrivDY383PFqgyEXBhU75K+kaWtZln3drZ+7bJQ7BdkOS4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727267154; c=relaxed/simple;
	bh=lD7leHklO/IpA/Y/XkZZxGl01ccuFU15ER5HFAu8WtU=;
	h=To:Subject:From:Message-Id:Date; b=cOt9Fa3gT4EBehI3Af/msmAgBBawl2vHVIfS+UZV879f2ancrkxbj9rgb7qpocQp6mIFkf1QoApMDvhpRfYuC0W2nD9P6Qm6yfCh/OqAVLtLCnzl6vy9yO7ruQvyKulRjQrL4SX5HmBbUhlDsAAXV0hgqBVvwaJ0U4wPG4qooTc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8yzhlt1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8yzhlt1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 989F3C4CEC7
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727267153;
	bh=lD7leHklO/IpA/Y/XkZZxGl01ccuFU15ER5HFAu8WtU=;
	h=To:Subject:From:Date:From;
	b=R8yzhlt1nwQDk3QGID2pI5SoTaRfPr3fQQ4RyCx8DD94Vhr25OPYO8MsuPtCh82if
	 TfAzOoWJr5LD7Rnvb+JLKQocWBfUWR6id9vYFkBPnl7Q4UfMf3rjLmOWZqcfcyVHyx
	 wh4azwUQCKHbHXc+4IcRGVnS+33LiO6lazwxvwJgrejQDqGhlZoLv8fzYtfsc5QgjF
	 NP5T0jU9DbFSSWmtOteymuPjVI/SbiTlgxZNyqryOmQJqkemS+AWViiUqcEKe2T8dJ
	 jie4E297+jY0V3Ds7CZOW6etuxJwQKnd+jsNZezTjj9XOg/aoB3xZAp0Lk+Jb79NfH
	 SGUXQqm1eKFPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91404C369D9
	for <ddprobe@lists.linux.dev>; Wed, 25 Sep 2024 12:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172726715358.27822.15366972516086611195.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1f6cca0ac50af283bb4628815356ebf18421ba14a44d4ab611c39171de3d082
Date: Wed, 25 Sep 2024 12:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727267153
