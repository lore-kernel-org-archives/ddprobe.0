Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 303D04D8C7
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:18:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718054303; cv=none; b=Rs3vqecoCQfQdmtIyzHoUEtTY+w9krY0BTDliv98dLEufMJJJekkv+6t3x84J3oMggIIwP+fEbWpnEdD4AZb5997t03vhBR9Dws//sE7TlmYgFaQgbBc6805xYZE3JaJyJe1RWe2QFfWrLka6/9BETjjYqXvpbyO6gY2B8Xw/j8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718054303; c=relaxed/simple;
	bh=N7mEytknCKNqTzLQeCpvhR5MVkz/Le7DkfbAPOVgVus=;
	h=To:Subject:From:Message-Id:Date; b=mlyxnrrp6K19vwgeM6MmV75ZJp5I0sl17OR8V/g5G0FtF08GwUq+MjBcQCtJ1uy7J7X4V0wNV2rd+TzRCd/hnB0dTD0YK9jWJiTHYJOWwP0wg/jXcIrUCmsKN6lVlamMkF1qILZB9q/tX4nSxO1eH2R56aGOL7yfWFlYRetXi8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GJtwQpYZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GJtwQpYZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA0D7C2BBFC
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:18:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718054302;
	bh=N7mEytknCKNqTzLQeCpvhR5MVkz/Le7DkfbAPOVgVus=;
	h=To:Subject:From:Date:From;
	b=GJtwQpYZBBHDFPG1GHVMiRO0qNaDa6E/O5f3zMOZ0SOvC98XYhuRG1A//WZXTNwx0
	 Bsu785Kl6/nrEVSzceaT+A0HqB6aF+N3wjqVsQbvUthftjvW1CmC1z1K+Rq6/iBfTD
	 4dM1ANdJKzLvV5YXpHTR7Ovy+33auNv7KZKncA8H4be8ZOB1tPy5t/eji5tPft7Mn5
	 7jILP50CFH+Y8b29Pf4BKGqwRyxxHiotuYZ9j6Q9R6AAyhWidttaMN3yNLwsOMzndR
	 10k/4Forsc2ndPCBvrXJA4xjVMn4oz/0vHzSINsbC4mYYCT8Og+yN+ldmhcgMT/uIb
	 CPeH7p9t5diXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA3CBC27C55
	for <ddprobe@lists.linux.dev>; Mon, 10 Jun 2024 21:18:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171805430275.5522.1513208859553299536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b4008e822538b7643f7e75beb8bed22c4b26310a05638e3efff1a2089dccf21
Date: Mon, 10 Jun 2024 21:18:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718054302
