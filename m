Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26E002EE607
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771250694; cv=none; b=ahOEZZgw4jFTER9aMYqG3QDL1Ax1Tb2zgNJ2enlCArrNCd0O07Ihp4etFdKvmBcJJP4P3q/KTin4MuT+/r/r97S3xq8TCG7SVGiGWYAtYwzyi05POs9dqmncSeJ9jhtCBQnU0mAStj1cm3AUe2cyuPrQ9yWMHrelZBRwfbtgut4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771250694; c=relaxed/simple;
	bh=bw10y8/GAd9e8FwyqubHPQKdDUzoGFqc6I6+PwzxNwc=;
	h=To:Subject:From:Message-Id:Date; b=d7WTFl8eP7b59KEtlTmGy9vWIxJB7qX66VxQvqWotrh2EbdmmBQbZkPVejs/MUf54chRkah5yFvkf0I5tZAdZts4+SW4m1pBLZ158cV9cyJQJdMZkUNbeVA4uku9eYHkGHiNuXWWdgeKxenm7NuawxVjJqvgE46Ri+SEdg+ZRwM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c5/p3bfG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c5/p3bfG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6509C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771250693;
	bh=bw10y8/GAd9e8FwyqubHPQKdDUzoGFqc6I6+PwzxNwc=;
	h=To:Subject:From:Date:From;
	b=c5/p3bfG6AlpN840KvbZgSuej6/4iZVeRAemDajT5D4eJoHSlerCEBb3DlBy9E6Tg
	 QkJlsthSzfaMFri1ogcFyfC3dvUeITc3oGfjYvd0JPXUrBdp4KPJWKM40D1sHGBDbY
	 vChnoAYWuJIl2lnID5aqt6OaoMdMbiam4YMZIjTpIeJwxmylGxkjMBgOQPRSJsfMh3
	 pQELrYcR8k9BYu0HgqXC5UYclI9SSsxCwbx8MXowexyFO24f+5Azo+boOKA6293LmW
	 zAawgUI/S8PQ8IyGueHFzri/7R3jajMvL2pxSu2POaawq2FQzjMMmN2MEYO19bpOt8
	 lFpbd6FAHawLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A34C2E81A29
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177125069364.8209.4450643581372041818.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6a4337baa08fb522f91e83d5715f44899fd0845a05657d8e0c6dce157ee52b27
Date: Mon, 16 Feb 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771250693
