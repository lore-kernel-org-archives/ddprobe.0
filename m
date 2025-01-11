Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B8AC8BEC
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736577954; cv=none; b=p1pRxgTUFry3hkRHHU4xo0eqVWgGoJABs2+XONupFnvZfEfsShWd0if6+X4Jutwy8uLvVIaKuixLpPvIc0PcBXF5agLwrTEKxm5HS/VURi+E1whWD2d07AS4xid/TwoIDZaGjCh+za1jTpTM2r1wgqMFKiUwphDPKqxZzNF3ajY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736577954; c=relaxed/simple;
	bh=opICZr5x/EiA/Wz79+Bz/o4NPZVK3DrXFMFHFW50Z9k=;
	h=To:Subject:From:Message-Id:Date; b=mnuSqmW7CJyVsECtsG1VOFf/f69PcgQ9EqMIMqjeIqBKMLhtumI8ZFazZTYiFr309UlpN0r0vNxA0mol1nOK6E+S4PYcwWmF9zGB0NY02TPMdv++bh+8s9ulqUwDVCpROzx/cOLNogJjqOfGbb3IU3mClkVQcaTxUkSc29RO/bg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WLSY4Bo9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WLSY4Bo9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5409C4CED2
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736577953;
	bh=opICZr5x/EiA/Wz79+Bz/o4NPZVK3DrXFMFHFW50Z9k=;
	h=To:Subject:From:Date:From;
	b=WLSY4Bo9xzl+vkodig/O80XfM8GmoZuysphyLdI14TA/5W5IpcT/N9YSwSQ1x42uQ
	 bg1dwXwDxzE4N0sRG4nV3pnG+voxaqtgoGi6CvdYlvkTYNTVYcHcic9NujyrPu2aWj
	 ffZvHPkl9VdLgRvENtAWc4yPIb4NaxAlpwpy1rADkOIvM4ElJNp2LBP6cmWx9RXIyY
	 ZN0fR+3QvWW85KKrjQ0F+fNfYsavtmvqGmZISp/ddUYVsQbY4aufNE1UlfxlzwB5Gi
	 y0o2KRHBXoDwXa+0nUqkdfrgSYeYXgxXfQA9HqPDsifj1XeHMWORmdl4EA0T5zod8J
	 qtGTdG3pKupeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B4DE7719D
	for <ddprobe@lists.linux.dev>; Sat, 11 Jan 2025 06:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173657795358.9575.16598895431818270965.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62303c887fa9e25da5aca39dcfc68a66373ef8fea99a3eabda2f67cb7e3261bf
Date: Sat, 11 Jan 2025 06:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736577953
