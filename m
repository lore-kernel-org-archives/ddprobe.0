Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 247ED3A1A35
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770127434; cv=none; b=Z2bNhwshGLQZloBp5XRWyNMV4viLzuIgANkmSwhhhGnwG0nWZhMSO1f6FQJuvopX7x473im+lfoddh5Tarhs28rwASjAVffrx7m38aozoDtdwZncvB3rHXFpC9qoq+OE2ivx5zsS1CmRw20gSxB2o/lBUGj4xTg3eNbEyxQ2Cpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770127434; c=relaxed/simple;
	bh=vv/YdTejYKAPVsIgTX/Cw7ATClVuLCW1kffMZoJETp4=;
	h=To:Subject:From:Message-Id:Date; b=cgt+lmpATHXD9b9ehR4ASFl+k/GRrYVBH0jF/CzqFURFkPr3TiU1Fyxo45SMoAiMWJkbHoEljgnov8ffx9jRmbT5yQopCdjltH3NTzya+jlxSVJ4Un9DsJQ+gFgyPKFvoWCe5LiLmbncAcqTVM92iduS0MCRzKx3+E2pXy3HN/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LDYmMs6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LDYmMs6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA9FFC116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770127433;
	bh=vv/YdTejYKAPVsIgTX/Cw7ATClVuLCW1kffMZoJETp4=;
	h=To:Subject:From:Date:From;
	b=LDYmMs6Fyl3U6RrNrAGWAk5AXmv/JybgXLKz7skKwTLtacji8GwNmhWCH8Ryf4Mrg
	 4nakJoiUQOq4reZsy+41Xuhi5J/St9ZT9KGRVQ9ehq7j69kojwfpgCqf+oxKZgxv+A
	 Ss3PNZ4wi9g/tWBfpG2bsL37eyWSp+qqTNsfeZSUSVjdyuZYj6xXhchce9Ci3nVc0T
	 6VfbmOGDL2lumwHKKBjbVvld3sXw6ruFJtvhYEm03aeU494yzL1EArAJOrI3e09KZk
	 Yk3O3CQ389eNeulioWEtmzUPAEgzKBefqbdEnhh8JYOIKeCkRLVgqHuHzTAOpBAoNw
	 cOGbZcaOp11aA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F793E8782C
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 14:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177012743363.4716.12986466514141191066.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ea4803aa45017f6455438a89e69c1d65e9d54b13562c79368d7d3c2e8253ec5
Date: Tue, 03 Feb 2026 14:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770127433
