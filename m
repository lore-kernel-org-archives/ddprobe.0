Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6EF35254B14
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741115334; cv=none; b=P+RKvZmVepiNiHY4XJCbJINawwlHS7GK5Yl4QrLklADQpYlouzMzqHK9M50huylqsU/7+ueNVt7YXttorcVb0WrqkBlj3sALTDPypQLebvWPkEzEhJ06NTa+IzF8k6Vt+lmsPFDODrORAXaV9WdzrX67V2tH9NrUTpmbuBlSWuo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741115334; c=relaxed/simple;
	bh=3x9INnhcIuRolM5OIrgVs8i7+hN5fEKwKm90QyuEHMo=;
	h=To:Subject:From:Message-Id:Date; b=nUdYWaDetkeVGxJX9iNZeFKvTX+O6TFQ7vITbNpATBorEnZwH/YPkyJ2Cl9Ci9QWtgwYE+V/xlN/ssU7nl1gmIZN6b5pxX4bXdaF5Ag6/eulhwYdn9BvkHfgGU5F9hMJum+f7EJDhxZQLVXEsQBqt+eNovPWYlCBQde9JVQUHy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m2PouRRo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m2PouRRo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3E03C4CEE9
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741115333;
	bh=3x9INnhcIuRolM5OIrgVs8i7+hN5fEKwKm90QyuEHMo=;
	h=To:Subject:From:Date:From;
	b=m2PouRRoGTlsi6i032aAubupl4rzpWeqNQPa4lZyBZ3RQGGizS8PLVIn2h5yJ6Ngp
	 nHUgH7rWeHrgpEVzqkJ7wBL1vd833oOUI6KIvzS+KnDMwL7XvqvUV7wRCRPl6N7xCp
	 hQX7aOX2KqinzSta69qjSjAq2KPqRUyw5nSQ/sK5EH7boEG00NdhTcBy9J0Ui0+MUG
	 HQxFtB1fArYFuwqu4ShoJYvXeoyn83LqJYkDUEDXop2N5tk1YgjUI4Fi0yJZ4ACzY0
	 Ht/mLY8BMfT5TCZRVj7hswRxl33hPaLhfpqjZzBHCPWumOFoEKnUykao5LRMuIQtVD
	 rzM7PFtllKtuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF86AC021B8
	for <ddprobe@lists.linux.dev>; Tue,  4 Mar 2025 19:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174111533369.2633.3796392850092638926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36dd359516820f4a00b8179c441fcfdd3da920da75381f4398ef3e232c75ace8
Date: Tue, 04 Mar 2025 19:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741115333
