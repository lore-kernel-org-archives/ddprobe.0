Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37AFA156F57
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738020954; cv=none; b=XIeze1st9KOp10akIJik1leNFytRtRXc+HNlvyypfyjJr59B6WuRkzfhFBHm+WmQFatmpYTXTX3iw/dLh3TCj01JaKBcU2z/n4qJ73AytDTxyqWU/4FAVzrl5jAeF41OXQXBzAO0SFZ3gkSOSxysgQM4HDKpW1ELl2qiRt3QydI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738020954; c=relaxed/simple;
	bh=53Av71kvXjNTOHSKd0reb5sZpN6+d/naGmb2fIMNv+Q=;
	h=To:Subject:From:Message-Id:Date; b=rI66ftFdvipgVBM4/40lra+cbqAq4Q45bebz/UNLVjZPqpsVhQr3tY+XbhSBTqdKnID4/Fr31CSvXFWzzQH03LFYfdcLSEP5RxxKTfbjUoCBXZYwQxdMatLFh3Xv8oHQKfwAEyq3y2Cnkc3+3fogtN5I3ZuKNZ0f0eQzEXOwBuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dJUT6QtH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dJUT6QtH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2A07C4CED2
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738020953;
	bh=53Av71kvXjNTOHSKd0reb5sZpN6+d/naGmb2fIMNv+Q=;
	h=To:Subject:From:Date:From;
	b=dJUT6QtHhDD7mobph9xDzyJhwznqEWtRKHMbh5zN6nHzWen9HES9ygbx5cT7BqmBM
	 zwYSZrYWsfcGrze09mTo1WdpN74h0mUYSMlbvEk1z+g96ImXuHJkHRCHH+sY3MYvTK
	 QVrxvBZpYCmXxHiWHWU2Zh+Ye92eSrTBk94lAxfVVY9wiLzmZ2lcPCU032OM/ItqZm
	 YQ7/LLRV8oy3YrsqOSeobIHlWe/xJ4NOqbrhN18g9Jr4x0ZnvIoNDMWPDmVCgHxUvW
	 D3BYbIkSbavm0jWhmM0UAGOU6K7BJrpJnVH+ryOA3fIclYz0I/3rSciE/tJQ5lTKIT
	 Olk3Q4/E1XT7g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B327C02188
	for <ddprobe@lists.linux.dev>; Mon, 27 Jan 2025 23:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173802095362.24356.9876534404200990992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f94cb18c6d2e7a7f9893747a725b59af7a19c320eb4afafe2e7e7a92aac4767e
Date: Mon, 27 Jan 2025 23:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738020953
