Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1955623D2B1
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:05:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775711134; cv=none; b=q/D/osoqxpPYcmHBcy0S5WOlQG2NyY4E5LaXvlXRRVi2ZwJr+jYJW7qOjI4qYfc+4OeKUAC7vxKn4HYfPOST1JzYewfeCQcaopFuZupPgld7vWs3FMxtSDEzPx1/B1u89+Mq5a5SUVpuiNU3CvbYEIG6eSCNGrVvdDDYczCMNsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775711134; c=relaxed/simple;
	bh=6t6ypNfzPzO1YsLdvDeXjVE6zNLqrMxr0V9Lhwgm7jc=;
	h=To:Subject:From:Message-Id:Date; b=ECsKj1q+T2l0KjEt5JpCEhVg/6ZgR7OUGR17Jm/rU5kZwHaBFuq5k1azWFK2ZM5ex2B70DV3oeDDiHpZDSMUN+0IvLd93NbUqtfJeeREFp4KuevKqlNcxucuttLRcT+2D+RSpBqZlKrDgDWAyXJW9btQiA3KEqzsj4/ndAJYz7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ig8rxuhD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ig8rxuhD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA28FC4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:05:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775711133;
	bh=6t6ypNfzPzO1YsLdvDeXjVE6zNLqrMxr0V9Lhwgm7jc=;
	h=To:Subject:From:Date:From;
	b=ig8rxuhDo+wldFb9lSpzzvy6WrjJi58eiV0zlAcUbF0MAuoD12TNokDdpWZgzEdaz
	 Tzo5xCsWz2t3uLrkdUqguPowjxGjDGgZTPBAbDI1L+YszIUhNfKooKTnjX3bZV8Hl5
	 At6d21U9iXdSvfVL59BTzNIVfHakNTqyMoCyPBvEXc2qh0xuQyRBvNR9maPOqTX0pB
	 oqc0hoAoTXpI+2bmHnnYaBRzqLXgga34hYF+Yg2qGhG78OLKIPaH0RNgDM2a9fYvuS
	 ayi2y8QMxxIN4uZ8ftXYocvItpeY/vr07vKBnotghFWz7ekbieEk52siKOMgbmenUO
	 u+bm18BfMZ33A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB5E5E98FA8
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 05:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177571113369.14413.9510052907163796052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37e66b692cd757bd7811d8d629a093da2eebf38a79b9fb9f482258c577b4a3eb
Date: Thu, 09 Apr 2026 05:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775711133
