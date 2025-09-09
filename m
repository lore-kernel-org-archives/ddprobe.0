Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2398D24DD11
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757456994; cv=none; b=OwXHHSTo/CsIA6YDjonAUZmTEI9NuVZaQ+Ngmaj5hclucBFdg2KHbSwe+Sz8JeSmnaxU7+rXpkSeAbnImpuFAKVcphapw5oe0Kg6lBo0obfMygzZzMpELWzGInVCfszWqdKD70Kvbvc9W7efzb9Qb/ceYQ/uRnmZuu967RuD2k4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757456994; c=relaxed/simple;
	bh=07YFzYgSlJWdxhfXkTXxCex4n+SChGYHdKnOqSUCwwM=;
	h=To:Subject:From:Message-Id:Date; b=CedalWZpjTKx9H2gfMmYVgUILfrv+103ONNvNlNxTOTHh4RPHmcD+MH+IRsuclFcdTkoluTFS5edcBTWqg0/DOkgyPdtyO6Y+dDSMPh44cvozAz+EhX/ZJjQxOovTzHdELLBe363MCWEiu47I12tIfGxQYu3MYmfDg07hpHMN40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qbGnx+85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qbGnx+85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A89C3C4CEF4
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757456993;
	bh=07YFzYgSlJWdxhfXkTXxCex4n+SChGYHdKnOqSUCwwM=;
	h=To:Subject:From:Date:From;
	b=qbGnx+85vh+NBvU8GcqaMw2P2TPV5FzJjDssKPnhb4NALYsVAnqdOle5ZpAO1/l+Y
	 9KU0NYhh5LWAPeFeyH/lvOIGs2usE4wM8/Z8IxcC+mz5nCdDowLiuwGisU6rvh/A6J
	 03G5xYsOi6IM7eYbXJKCRdtJIvRzV+kzQnSGgLvhGeuLhsw4Jf16hNUy0rFIb9t7nZ
	 DeY/fWDeURAa7LaCRKPXFUtlfojbznjvSrzQi5hi6nts9MX/C5KzvHUoCFrECxbETq
	 Tf630QM4XothPlGNtTzpRog2NST8ZDi5gV7l97JfVfcAAUCUUKM9QEhG+VJOw7rjdB
	 BfZ8WXbnqRMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95FA7CAC582
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175745699358.16367.3031172553397750355.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 070506cb1b5078634034e8170ed4442708fe1fbf7343469b4c6e19d83cbc47bd
Date: Tue, 09 Sep 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757456993
