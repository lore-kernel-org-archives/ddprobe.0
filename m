Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49CF218AFE
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783469314; cv=none; b=fzCBzqxSqAYUHCrnsqz9VsGPBBCZOOAW1xP8evxm9yWKasA5U9ZZiyQ+uUPEr4CA4BJrjl5cDok2n9TMSYiQfzBUDIIlKAU92Foy2T/VQZAd1XpBN+HEMyFe3usIhtkicxY44hygs9Z404LfnQLi5fF+wV8WJakybXZLbTYYL/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783469314; c=relaxed/simple;
	bh=G0jiqvG+WDyhLChPJ/dQA7D8AS8xmalTmetBeYi1zeY=;
	h=To:Subject:From:Message-Id:Date; b=LSU1LEu9MUGcsXGDvtWq20YlUj0T+1XxkYc7itm0k1+61pMvyGH3yfl280uMOco7CAOr1IdX6wwIZBZcV9n60UMN6DG+uCxjRynQommLmXz74Fw61Qbwq2agZ32sSHF7axmM3qHG5uwsdwoYYVQcTrJ+InRts4qQX3yD24pkuLk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M/g1gaDJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M/g1gaDJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAB6C2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783469313;
	bh=G0jiqvG+WDyhLChPJ/dQA7D8AS8xmalTmetBeYi1zeY=;
	h=To:Subject:From:Date:From;
	b=M/g1gaDJNgnqvNx45w40DR2dzNq+Z/JP4AadfbGCMGn9Rk9WrkrmkSMh45GPwQ1xA
	 XS+xN/YUEVuHYmtBc/Qzqzi+t4KNHsWvpoEMHyccXn7x+jNEVbt4s13LmpP2IoNteJ
	 t950J6CM0/lSY0PNu2jeOEKW3yVglnV25PbMHUy7ry+occjzozcBQU7AVFz12OeAXy
	 q/r03hSwWvAFTQjofgnRUiKkfxSpbArBtfrD0A19ZsTfV/ArnSzg5xnxoeTcNZLt/0
	 Zi01GkYLa89pZ5JX5ciIFtGr6I7WNvBLQE7HG4dh+l1p5t20vdwAXHIAvap/n2vNuf
	 FrJnuEyZh4qtQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADE17C43458
	for <ddprobe@lists.linux.dev>; Wed,  8 Jul 2026 00:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178346931368.32588.15093087273460523972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 63ce355f2085c9adec3f183a70f5c40eea9945d303ce250a7ef76460678e40bb
Date: Wed, 08 Jul 2026 00:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783469313
