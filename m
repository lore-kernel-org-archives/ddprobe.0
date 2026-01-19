Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1896B25F99F
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768855434; cv=none; b=Lc+GHJyjbkoHNbedr7+HWi/jDZbJ3sdQ7jIDEaCUVfKx1QAmsCAc57IA9xih9/i34rljksSGZdZhoOBlygt95Z9lqgPfPtqwogAlcCLxJJ0ZqN3zSh+1B7chtArsr+K+72GkzI3KM85/JxA6J+QhoDSifD0AGjspHKqqjLcQoSw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768855434; c=relaxed/simple;
	bh=/7oG/yFlag2xBC6S7iu89/WGoC2Wdd9JbrVRe6ytsGE=;
	h=To:Subject:From:Message-Id:Date; b=D/pXdH0kbHJ+ZSk5tWX29QQ8YBKrNKTdP8NMeWkKBF0j8GHLr2z8Bf0q/fzveIRi0qlznw/Ovhanf3YKO66pvR3DFf+IrE43GWAOuSd/oq1tLmm7fzcam3/E29g/DGBTcZ92AKP6ftRZemMP3YG3ClEQ8TsLsCnZUQCwA+mACwY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=f3q8XsQh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="f3q8XsQh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A757BC116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768855433;
	bh=/7oG/yFlag2xBC6S7iu89/WGoC2Wdd9JbrVRe6ytsGE=;
	h=To:Subject:From:Date:From;
	b=f3q8XsQh2pC11QgwWmw028ezfq48fQBGw73ZxEOu/d3F1X/gSVtlsvjLxRlnHuUO+
	 SvrkvIdVLeBSIaZZEAfqWcVkSX3sJqbLLngE6qHXCQNvwTrC59WLSLp+EbOQ8os8EU
	 fKzKMIw61jq+vcuZfYr+3WB6MInUs3YW8EUgUoTNEWN9A5y7i84RQzZmBSev1JLZij
	 uBHWRtCeOKFYKRZhrSpDITFk9yFERHK0DdozUPXfGJbDTmXpX1H640nVGpXPPYHuVt
	 FGG1V5VAsUS4om66n29O2gPAt9ILrtHtRFWH3oEotfQBhGjhxKSgqpVCGoi3GEDtaR
	 RH7XlWTxrU62g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 962A9D2ECE9
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176885543358.11987.12842555203586086535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1998fe4e38d9dfbbb73e70ba3887da5e6d08b0f7838a5c25071e20bc8efcf550
Date: Mon, 19 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768855433
