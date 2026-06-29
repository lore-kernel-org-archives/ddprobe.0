Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 70D8D3F9A0D
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782724714; cv=none; b=eb/evCYWZib6TYGvBkZUzCUBRa0TvO227nSXHZUb8zY9fRx52KHI1AYpCwiICk/EJhM01bnvtFO2aYLS1+OsiZIEGs8lvQ3ZNiH6V7Bay/OuHe/u7IbK32bpknUqFiP4kZfWacFY1jITzvgfYad6FZu+wYhv75ngoeKOm7mFz+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782724714; c=relaxed/simple;
	bh=HLZm+IeK/oPwo1gTtgRKnWDQjTzpeJXkFucYWfqkK8E=;
	h=To:Subject:From:Message-Id:Date; b=IrrTFdxYJGPS2//6DpXMX1DwLJfAz+lCcTi0QodeiS0/TIN0Q/o+PJHeUL8qIlqsiVft4KhBKohYzumymcwbRA3Snr/oUEH91jQH9Yfapp00YAMGnpuy1aqnyKvdwIm3LljfB7Qv1hshPFFRg36klQllHxKL334TK6I8SLujCsc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pXViY4Xl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pXViY4Xl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 137D4C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782724714;
	bh=HLZm+IeK/oPwo1gTtgRKnWDQjTzpeJXkFucYWfqkK8E=;
	h=To:Subject:From:Date:From;
	b=pXViY4Xldy8MBGvYd6STaC+FIWStvFNmoRtAKRWOrU6QuafrG3rgN3bi9ZiDrUPGQ
	 GIQvqHuNr6nEncnO0uTEp9AVEstJy8P7SENEaAzWuUvNyO5YFTIrXigEVcI8YhYYyE
	 GOCSDrRd/n+hxG5h5hoaZySkHoB6oTJd68uTUdFlU8rMbV0Hgd658fE2REFzU3IZWi
	 1sBT4wCeScocMRc/soFuqX3LAzoIkLn8rISwWjaUGW4/5RH+4SUmhQvMHohqja5z5P
	 5NrRclskZoY2F1KIQFylmO9wXIrv5CmfG5+GR8v5PGcbjAW3HlLIzLn8VWEVWVjeX5
	 zF+1SgpKhK4kw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2039C43327
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 09:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178272471377.16871.6696814957952645445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a91ba555ce3dc4cbb12c849d2cef54e4bef841393eec39f613176b3c87823c6
Date: Mon, 29 Jun 2026 09:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782724713
