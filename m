Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2ADFB40DFDE
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779184234; cv=none; b=QS7ZjEe909uprMsTZDQ8XC9LlMnQOmdfg9xtap4WNP0d6Mx/t3lStNYb3hbncLorJeGCk2iRfjDwtwXNY19olrj6S9cjP228rGNR9XshncKkwAusfr8NiIXWl7vEuIdfJmM5dfivmXqGIP3JYyfwRE1CNHk67F6p7gLCp/jXfwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779184234; c=relaxed/simple;
	bh=AjFwcw+akABlpCPr6QmgpJaK0vu2Y5dpX63XAvT2d4A=;
	h=To:Subject:From:Message-Id:Date; b=FuAw0qOszdeRDjc0zaSGRPlhUGWR0kUiwxNP5GZ06l68DbRU9Ib1VCvyGYUs0X/IIfwk1cc27uUjfP4u+hl/BbyHost19T6BG4wlN/XUvqSgTGt3i3PYRpMVtr6/7elQbZi1SWuO8I4O2AsgXwgP7dJRKiMJDR38QHVkoZuBkZw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l55nGiqh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l55nGiqh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60E6C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779184233;
	bh=AjFwcw+akABlpCPr6QmgpJaK0vu2Y5dpX63XAvT2d4A=;
	h=To:Subject:From:Date:From;
	b=l55nGiqhXJakF8qSikhKgXES7ZjVty7frZRTm7BLqe7d4+PJa2Lt52CXZ4Vk0+FGE
	 O86FCgvphtSwYfWj/YQVzwOzR+Ec/9LVxrHOwEP+CfVaBK0M1MMQ3BZVZIykUChHIq
	 bjjBE2MfvK9QXvcpwDkWJPZKFwiKrb0Q6Dj5iOCNnPl0dlB3G+4scvRhew5nAU6k4U
	 0/mercvIaUZ4Yz1Wkv7I9gmbFixb4TzqfEi0zSPvHb3dhG3gKz1jVQKyxcQQfUenBt
	 1fUgR6oEdF+XMuz4Kt4iwKW5EcKCTv+xmk8952cP1DqLP10Ixt/8FMf3CGBB1kNCq/
	 HZ1TMk6qF0XWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B855ECD4F57
	for <ddprobe@lists.linux.dev>; Tue, 19 May 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177918423374.15847.7249268533628955601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc4953c3c9146591dee452e560a4671b53a026ab943d7887d22a093e5cee0e70
Date: Tue, 19 May 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779184233
