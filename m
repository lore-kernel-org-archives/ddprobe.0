Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06C5D3D3324
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773067494; cv=none; b=BPQalidw9bghEjDLeqhkgrOnsJLIv9x3nlNxJTY7y+PNiIAZ1tsPor7YweI8JqyNh/utNdIskZAH7QsSoFFobvvgZV9fnZ7S+f3iCQ+i/b4Zd3hLtI+ff7gWUCybiGHYbIWuOdf1Wsm79s4VKUpau/P+bexzbLP+kdkWfbDQ2C0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773067494; c=relaxed/simple;
	bh=juzMSIM+YZ5J1lR39g2lZ0r1sCiNl1cJC0uToHscA80=;
	h=To:Subject:From:Message-Id:Date; b=BToIc25hW16qtDqZ4OBadDnnYMAbxr0UI5N7mUVifN7Htn95u7WxbOr2o2qIigaPSn5gXGcfqTr8VXvs+tM+/rXQkdgEnGRs8xY+MXTlUFYGLYzYwsLHYL1YYXiH/Qaa79n7nnoA+PZAlHHZQLm4ZflLBDGGkx0mS9WabyQHOpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=peLAML/p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="peLAML/p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C68AC4CEF7
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773067493;
	bh=juzMSIM+YZ5J1lR39g2lZ0r1sCiNl1cJC0uToHscA80=;
	h=To:Subject:From:Date:From;
	b=peLAML/p+wTKzysbUXhiv+T+yq+FUnaEzDcL/JCkfZwkCidlczFc/g+0zIdgqqNEn
	 RXkOIuaYdeeZltLd+E8nhlEXSPB1PSZxMF6wCf1HNR4oYtawSIzfXdzyjkuU/uPm1V
	 FTXYFTVabnUAB7KzegzSs0mIwvrR2JxBK51zaMa4Xz/68VXyLppHv6xt9xr7xtOBpJ
	 D9LjGKoqhRAa5r/GVqh82/E8iThMSyP/ORNkpzvPvRdHUWBFrd330epYwnjl5C0nO8
	 Vmpt1/L/Iyf2dS0U75de1o/N10Vc2pv1OrzrhCkc4kpqFNqkZEFDowulNdE8lLNL7z
	 dsu3uBys+BwYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F634F417EE
	for <ddprobe@lists.linux.dev>; Mon,  9 Mar 2026 14:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177306749358.27583.2340052741901389324.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcbb8c82b062b3eebc1e5250490b30fc380cc6fa77049ac7e1261a7194183b68
Date: Mon, 09 Mar 2026 14:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773067493
