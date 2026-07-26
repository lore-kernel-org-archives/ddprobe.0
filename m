Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BF92DECC2
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785037234; cv=none; b=ac01JUSZzb5YRbmn4qphRFTyupuL9YYWdQSmUN5EX2tQCD0Lj745xPCuskE6qeTsMqB8B5UkDqEZTRfK6K5YSL62mi+tnxXbfrB+bdbslQlA9RnlGH0ZFHJ/KPdBRK7/KxreenZiptwVtPykdrUXcJMfpNS66bVhdsvcIQS9IVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785037234; c=relaxed/simple;
	bh=xaKZFiU06bmTUY9fH6wvqUYUO1O3RGyGCJx1g8TB2VA=;
	h=To:Subject:From:Message-Id:Date; b=qP/TT4laNMgfFbHJC/M1rYZ5kQR1j4lAn832XJaCpXHXnh3Nq0SIzX4MShs95gbmrj86qhu2fcraMnqsaxyddNyazuBmWfkZK3nGGhyc0mQ7uP7qFC8kVlA3nnAELIUN+Fixv/WWUl7Jdv0Z0Y7ZI1AS7WF+690y8CFHpFI/DT0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=huGKAS5u; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="huGKAS5u"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C9BC2BCC9
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785037233;
	bh=xaKZFiU06bmTUY9fH6wvqUYUO1O3RGyGCJx1g8TB2VA=;
	h=To:Subject:From:Date:From;
	b=huGKAS5uQdE1z5W/uDZDk9RuLsA+auScADzQtm9bERFDlVKYinxDQQeSTMGnlmQid
	 F5qZYsuEjy7Ta6DCI+Q7dEBdFh2Uvx957asW5pscPYJZi2gtrc436hi+lkR3l9BgZA
	 nCCqcZ42goYUTLNDo60m94NWo2RFdtE8RaKB19otd/v0dL8SPV9vZsrHAIL+dQ2sks
	 /oCZ83Xf+oWBBliDw0Az5ccWQ9X9uC0K2Mle2iARpdOMKFkFa3Mg1bweakAxPL0gE+
	 4+4QRjWCLHY1i4ceHlNskQd0ckB28S2a58AGQAuIA3yoFffzdVYlM24zCY5219f13s
	 1h4QTu6wHVnXg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF014C531CC
	for <ddprobe@lists.linux.dev>; Sun, 26 Jul 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178503723368.22366.14185739471679976179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 073ee1495a263b40e10a668cdbcc5929223326e8ccd502be11ed20e0929940c1
Date: Sun, 26 Jul 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785037233
