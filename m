Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18B9A8462
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770599634; cv=none; b=ADm4vi094ZFsBMsgcAR10HuTY2Ytqa0seJZiexpnQ0ipin6cvyieRQfKHAro90qB8540p8L1fjyUYIhW9dtsXuj0xijYJLUbeabLN39hdQc68g6495ifnk8kKqFEN4AOKKy1DOtnfSQKalcyCv3siFvDcZytAVU/4afQfTII/bI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770599634; c=relaxed/simple;
	bh=ACwn/XEzHt41/qky917Q/9W3lkLyLccbQdQmvD0OvY8=;
	h=To:Subject:From:Message-Id:Date; b=ggTRQcheDkuZNhAXJhNcauKwdIBaZfFz3w0E1yHckNlM0pJWQZTj+iaQ6l6C9s0ZrBAacRrtCGwKVMoTnMhp2FUmdE6yCkKCpH41bf/4XbT3ipR6Kukt0ESsIlb+HDcvtryhNH/GDYrddI79EHk/ROGQj9GklTuv7R/Y0ZzFwho=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xg4EL5Pw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xg4EL5Pw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7935C4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770599633;
	bh=ACwn/XEzHt41/qky917Q/9W3lkLyLccbQdQmvD0OvY8=;
	h=To:Subject:From:Date:From;
	b=Xg4EL5PwLieVcvXFf0GhIlFFNBUx0ixOIMGiw4tiaTq/tbWnHCKE5iu9t+uxUowsS
	 Inp1HNAO82Afu6Pqhf4U21REHKKK3tLMnWZqYhLddZU0fkvZJNzlJxf8zyyheiwwcZ
	 4ruX+t1IaU3gdXAn4ixUDiHZBRJtjSwMFtBs3dvcC03Cg48kFGqe6fTGJlyLyV+T20
	 97pkxUyer5B8gnShSatAmgYacAvOUpzGTfPoGvL9+E7WIsHLWFctM9/iuCDt8PBIbY
	 g00INlnxeE06/lA+haoTXTZFxpwcgxBjx+PG3dFKKzGES9H1FPuAHcaQN4zIlHuY2P
	 uhbMFNHMIYyuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92EBEEF06FA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 01:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177059963359.31136.9275447073896243318.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e3e7855ca90bb91b5fd0aba46ba6251bd65cd2afb276b27121c7fdc1b6b028c
Date: Mon, 09 Feb 2026 01:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770599633
