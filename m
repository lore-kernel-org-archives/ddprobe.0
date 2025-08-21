Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1895E22A4CC
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755752994; cv=none; b=oaCH2r9MLT8IUIwwRakFQSjB5wcAk3ovIeul6Otlpo7PcH/49QOztbd642QYzevpDa40hC31gnWLyja0MJ+qMYndPSKG4xLjSFhmiTg5c5xlDaUDuYXYc0CE4dHXpsS04ku4VoxzBdnzL421YWCdDE7EiwG7VapXF++LzqprOGk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755752994; c=relaxed/simple;
	bh=KvwprW27svTO1zPjccfAY+41zc/Z9Dt470k24otb728=;
	h=To:Subject:From:Message-Id:Date; b=TRYVARp6scn8ZE8t8mSjodnl2KChzTzVx1p+qoMQ4oCmGPk7wyACU5wyNPcmBQkbPoGhIVVbogmzfe5Ii8Znv4FDUUzdUrOKvnl5dNFBdFkQZD+xHXaoP3ic+ensnTW+TyCAhviiACnzXSsF2fzipua4Stm4gCiEU5n7SZkQE2A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pMcwrwbZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pMcwrwbZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3EC5C4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755752993;
	bh=KvwprW27svTO1zPjccfAY+41zc/Z9Dt470k24otb728=;
	h=To:Subject:From:Date:From;
	b=pMcwrwbZSAgVhTxFb2RLSegiTSI2dA+oAhTlekTvtsD5zAB5PzwfWOjh0tBVNFajW
	 3LnVEPftlCzIGN1iXc1aY2BbavuCZxMOmykOetY7Jt4jIEDTLYvrXhCalxNiCUhuLT
	 iXs6DSrB4oX6WZ1o0+T+muOqO83dP6YX9QyRos4EovOE77d+SzsoMeusn0Uqr+htlV
	 gwqA3dtR+SaIZfBcvav3MJVVhXber6mRmmgxIC1uoGblnXuYghAA+OE7XJry32VFjT
	 z1WWGqDbJcdYrYj9CToyqCls/0x7VUTA1vYu6OCfjvrly7TDxb1YQH0kvO2LA5RK9k
	 0Kkf3y9svtvRg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91713CA0EE6
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175575299357.15182.5656707905480214844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 569ec5d82a4bdc257fe159faf117aadf92a5e3ebf7222a029e8d6b3f7e035fa8
Date: Thu, 21 Aug 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755752993
