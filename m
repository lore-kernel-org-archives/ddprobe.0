Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F6AB1DA301
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:55:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719960923; cv=none; b=TP7pwNTlMxdehMZeehEWrdgZACzp6FGkvnyjJOjMMEUL9eU5p262X89/wYQ/pzmQI9OOuq7IVUCR4RRHSNnZ+T6hYoQucaapsX0ilWjI8nyRYytnS4i+Akf7wHEFQDakrIgxHC933CBlf0Y465uGyGHZsQF+tWZQzHHnInXTxyw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719960923; c=relaxed/simple;
	bh=NWKt49VCL/H/40BRCuctm/g7o/W9OOe2bEdC2DVmxwU=;
	h=To:Subject:From:Message-Id:Date; b=lrEqtqyzViUkWorKjdoRmSg8MFUWzb9n8DU+VmnVx4Bi4xfUdv9q8ZazbfidH1hkfTmjmNRAatPKRWHogy6GtLxmbCKshM3PPOP+9Um9aLKJlHc7m1RTT48/NaV/FdsjkLnQ1D8KLrAH2rMVPcfy2fAj19lLbTV1rAGe8deK9bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rd/dhBzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rd/dhBzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3E03C116B1
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:55:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719960922;
	bh=NWKt49VCL/H/40BRCuctm/g7o/W9OOe2bEdC2DVmxwU=;
	h=To:Subject:From:Date:From;
	b=Rd/dhBzIIhEy7XhSkOMFN2+tq6t7409u5UNdzIrEnw57UDxwHqvgNSTNklSHL9aZ/
	 ur/wMT1wRr823WrJmok8W2gLdpC8JG6tNGc/GgrxVFY8KVdEfBgD+L8UNjFMjoQNv5
	 Nahh/289vlHaK+KaBnjGZttp4kGEO7qUSDx8q5tiar2YWrOil1AZQWw/LUurPp9YIl
	 Mbd44YHSpeCWqSquI99wkr9brbO5tZum2Gqzky3yux3TShlhONNGtzIIRZOB4i2Zck
	 uaiJR8aE3rUYHLwsmFRDat6m0uKGPpGPAsVfeoTFAUzKC+rnE7tt8k9d4aluXBPz1n
	 Lfl3e7gsoZ9uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C32C4C30658
	for <ddprobe@lists.linux.dev>; Tue,  2 Jul 2024 22:55:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171996092278.2574.12468126556155540908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 836827a6177bc2c4498f138a2b1ad6bc56c4d6108124d972898af1ce997437bc
Date: Tue, 02 Jul 2024 22:55:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719960922
