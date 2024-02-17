Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E6CC1CD1F
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708187897; cv=none; b=O7aY+jei+/VkxJQOwQefrxEuYNfo4IPR9IACwvi8exJ8Y7XY6LjP+1a53otDFYsUhTW4bY9qppUwewtCRETE90r8fUTvkZ0fZb3DWqRrl8/rU27yb6BpgRs5GDEP9rRj6RYAJlbLsRC6d49fsx58AV8+ESDw/TakL2iULLPBbN8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708187897; c=relaxed/simple;
	bh=qujy1NTHcLCTMk6uTRRG0oJ6mFYqm74EBjFD4/0pRf8=;
	h=To:Subject:From:Message-Id:Date; b=H7eEZ4RY+MAsvtOQQX3ZuhtMVYgj+zl7ERaMuPSOPykID4auIUFWAN6g2le7u/ZyQtT+Z4ynN/546HX4gAoFM73nLn0H6hula8fgKQ5/1AjMZ094jUPOyFUaqHtOBaRWUM0On5xVm61UyqKtESaSCIJlYuq33I4InNswLNFSRyI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xz5Zyhgc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xz5Zyhgc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 80722C433F1
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708187896;
	bh=qujy1NTHcLCTMk6uTRRG0oJ6mFYqm74EBjFD4/0pRf8=;
	h=To:Subject:From:Date:From;
	b=Xz5ZyhgcgBwX3TtyZDavcIW4B5VxCoKMoi2Ep9pAe0YCY8o/9OvTAvkmolFPDIdMN
	 Z2JTtadAec/4fQggVPywjnUaXd9u0MgSdg1XKDx3pNykuFWehtj7B2UrTAvHge2a2a
	 cNPBkNnojFuYgZeYP0jd45nUoMOtvbg8P7IPc9JMzeuPgJb0sUHBBYSZCHXY9G2rCZ
	 8wJKFz9YIfFs1XEpUNtkmDWdp3HLT+TCxUyQjB7DGz5Wer4FVPyL8GlP+Kz4EfUVtK
	 jRBSimxIZnPO9iIsyjuZliKhQospMZcofG7cjw3Y43mJhXNDNp3G/UKYTmlrMA9qOa
	 avDwIY6NZMsAg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 63740C48BC4
	for <ddprobe@lists.linux.dev>; Sat, 17 Feb 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170818789640.16712.14505967564735055900.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 73f823ed5280a4f98b8203996ee3b214a6a4853cf3449c5b8b36d12b029e4e87
Date: Sat, 17 Feb 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708187896
