Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 311B0D515
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 05:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729403754; cv=none; b=Ct/w5ZwWsFJytf9X4FyhSXWS6bPXxcKEtip7+zkg07cS8mYHGEZqP7gEgjoZGnuFv4qFPiKjo72JPzWCAN6oykG01oGGPYac3UjC0fw07lji8C701i/weOB14PbvDLF0HgpOlK0kWFrlerrtcuLSuTFcLtT5X0YQWgPdc8gb4KA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729403754; c=relaxed/simple;
	bh=/0wAPy0Z51KGrGGb/NBgtfDGVVKHSh7DfumryJqshzI=;
	h=To:Subject:From:Message-Id:Date; b=Zj4Yf7tf+fS4PF+5l4hfmFtPO8lRgGZbSm9WehxTYRSU1TbGk5uq4XVypyvBwJsWj1Y7kfsNh8Dc3jRV7A/WofSRlQad6P4EcsXqK5zV2XjMpS/RcyaEyWw0PgvsLsOpaYh49IuhEGFc98NAvE848E9zxFSRCshFKq0Ov/dXXPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJGZ64da; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJGZ64da"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B30EEC4CEC6
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 05:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729403753;
	bh=/0wAPy0Z51KGrGGb/NBgtfDGVVKHSh7DfumryJqshzI=;
	h=To:Subject:From:Date:From;
	b=eJGZ64da4j3RQ+IrOxJpywwTrC9V/k2I9R7i9ed3w9QLvc6smapo8R1PVP2WVKY5A
	 H3W73KAk+X49Ca8VtLJvJ/V1T9/PR1moWiLen+yDnGaoJXUBig7R26tpByk/2HRoku
	 UAaqjSY9YAPQO+pH4xCUGG3vbTDjCxoTyU+vBN+YM55mqgb1SLhKbaouohd+ICn5t4
	 ruvc1F6GhEDIiwzgDaIvhtcUjfUxGY6kkP52YGVgXGUjaUklm2m2q+lQDBPap3MSq2
	 sOYKPqAf9CdqmUM/lMzl/nL5M8Xg/ZU0/WxzaX0C7We32w7IFEIQI/VfaoBKcqq5z3
	 8JtVYUaNF/T8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DD55D3C927
	for <ddprobe@lists.linux.dev>; Sun, 20 Oct 2024 05:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172940375362.32154.11090655444995156358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9727cb5005ab4df2ea939b98370b41ddee389be89581c5fb665e461ddefc5e40
Date: Sun, 20 Oct 2024 05:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729403753
