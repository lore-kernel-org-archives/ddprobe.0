Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40F921FAC4A
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748185194; cv=none; b=hUHgKdSv17sVsnbIm0JY6woskxdOPtIvS2p+cDK1kva6gK3D4GkLe8d0RjDSwZLB36rlyjqR94dSWb/c12Btg6Aou/LZDeqAyG7FWJOKoe13H4gLgZ0bWegUuOmhmzKgFpH/vCTbCwpLk622oRGR5w5QRVFlNHKouKAbjWDWUUE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748185194; c=relaxed/simple;
	bh=t4xaQphaGIEwlXh/ReQ0Sil+fsPQU+E/rXvei1f45mg=;
	h=To:Subject:From:Message-Id:Date; b=JSPcKYGo9cCOFFpzrCN6ieQBpBSHJNCp16/+kC9EeWS5RZ1VGER8l+ImM42pQ4qT2NxgFBbhFK96OdOnBeY87TbmduwQvvJivKFqvFSKQEuoF5HhjTx7xwhdp+S7FMOBRz6hWZE9IvcxChoZtXUe0/4Alq4Db05KdrGtk+nbZJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kq3UHw1M; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kq3UHw1M"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A93F4C4CEEA
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748185193;
	bh=t4xaQphaGIEwlXh/ReQ0Sil+fsPQU+E/rXvei1f45mg=;
	h=To:Subject:From:Date:From;
	b=kq3UHw1Mv0GvtnlHZQArPXeiiX0llfquCd1WjEtlRvOSsokHy2uiNmEii9LpGpsN7
	 2P3wUxmXSLuoQN8s5j+9Uj7z2WrxZD0fn7O7qhWkw91NQZBjc3CiM6hvUl+jbdmtea
	 /62AKKHtdxYRa1flQ99av06QEpp8oMA8TOYclIGbfvsVZqas1T580Z1UvzKcGHzd+E
	 ocwi331I/Fnz7yrMqJh44NOE8GqYePc0Vxzi9T+SiCVPhBl2n5P8w8Yk+P3dYAyR+q
	 8KGE5ZmLZcR6kTGv+mQH7s2OQNVSURG9JIs7bEpXWS3/169+NH1rMUjitRF6S9dzfs
	 GkTN22oPf6Uuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96373C54FB3
	for <ddprobe@lists.linux.dev>; Sun, 25 May 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174818519360.17169.15270533840327167308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 51ff08dc6bd2bf5d25a851cdcbf578550523e0daeec47a88c96472273b52f382
Date: Sun, 25 May 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748185193
