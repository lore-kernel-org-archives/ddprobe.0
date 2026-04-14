Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 368B93E63BE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776210454; cv=none; b=T11FbL8SGsRyR1ztAuTva4El6YcZF6dfd5IptTJajzbU9BHxdRsJzauHjGWDlZWvPjyFN01tvi4vRX1Xg8R2zKjlEZASL5NOzzgCX2pAmc8obKYBuwAOA2hpNCvjZUj7KHt3HL9AAVdQA3e9/bcCfj+/aZ1Ucz+m9V3fm/mMVws=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776210454; c=relaxed/simple;
	bh=sLvev/ZHzK2I1hQtDWAY8ThUk1DhExpsyZCdOdBPPhk=;
	h=To:Subject:From:Message-Id:Date; b=OMWndDlnD2E8AGZjUVWoIDHQ+73j+ZYPKl4X+4RA0gTr2CnozQYoR8TIuRVY4JtZOh4vBAvpsufssJnSqWs5Q9J40CVc4fkgmA8C97PCIeknPyUAX/o5qQpANum/8zbPeGWY3dcJUDbeMuFQqk4s70FdytGZvGWe/B7EZ/+NSwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ERBJz2b9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ERBJz2b9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7380C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776210453;
	bh=sLvev/ZHzK2I1hQtDWAY8ThUk1DhExpsyZCdOdBPPhk=;
	h=To:Subject:From:Date:From;
	b=ERBJz2b9vZQAlkd0j1a0UIypFMgyg8h/imv48VoXY46tFU/8vzzXwVI7xJh15NBU/
	 FstvOkJBJ7MHBDM2ZTanDLr2B0+fj2s4OzWv5nM2cpIXrG6crERvMf4By7ThgUMTUg
	 DTjco0Dd3phz4mQgcL6rSNzu5HIDf1H8MFugPCZ7K6Lpc0/wbVhM8P6oXG9eJbwVNu
	 utYeovaqSS3mEL5HTV1mED03RJZVORZkpyd9mMcEYLT+cAAKSXVckb8+X0lA6rlegg
	 1wTbRUlis5EPyuvAOJZoF668ieoYJC0oczWD22ikTdzJzau+SIlZGrcug2U4EbyeZO
	 2DNIfSoA0qTsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0AD7F9D0FB
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 23:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177621045368.24487.8119799895920553211.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4db206860d2d9f8c077110eb04bc5e20a37a268d4a938ef9110a1a9d3150030d
Date: Tue, 14 Apr 2026 23:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776210453
