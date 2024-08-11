Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DFB14C7E
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723418154; cv=none; b=XJnjBFmtGNyhNzqpytChqOq02ukFAHyjsbw/r4Hv0uAo2W5iM5r3+2sJgOPppos/JgzDLUm+9HxWVYwcsq0K5O6gMWIv7I6vQ6klIUBenHaR1toe3JAXxYP3fzwx77rvP4Uv7h8TXVbAdJB+80KvhL1cOZT//GRbZYz8wQnWqNk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723418154; c=relaxed/simple;
	bh=uaeOCgjDnf90ONYT4ZVdd0KPxPkNIzl8ysLhsQ8iD44=;
	h=To:Subject:From:Message-Id:Date; b=QDLP1ulJ9sTogJllsolyMHEefmQODUdJqG+oFlzxfEj2TrkRG+oCzeAtl/EzcqrDs44Vc4CwWHP6BN/HmpDa3RvWhd6IUe3a1mKen9OZHLoXyAvYUydmqn7XkKNxiN+olTfXX0z//WxDXQawHhwWFEBM69A4GZBlKcL3FZtH49Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hZNO3V6l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hZNO3V6l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD2ECC32786
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723418153;
	bh=uaeOCgjDnf90ONYT4ZVdd0KPxPkNIzl8ysLhsQ8iD44=;
	h=To:Subject:From:Date:From;
	b=hZNO3V6leVKGXB4NdFx2ghBDNKB6aNdbrpm0kmve2d9H6UEohpr4xchEeD/cSorqv
	 ExApszWuUXPw33pZHpz+CDhrNCQVxYt6ZqgcdtPeBL1bL6qtAgt6/REQ26AlsWb930
	 DHMY7cMkaGQGww5tK0F/6yuZeZCiTqrqPd0LP+vatA0GjGVp0suT8ntklMXy4tpUCj
	 twoDgfdtbVWq1B/7IEJ5ulWoWWN0EC2MEFJ7Q2Tj0l/NEp5LaLX1r3gHMkNu0Ne1kX
	 fhdeFOgY2Fbjkb8PQriaS1GJ4Xs5cSWB/tH8Fdr+dIISB96mcD/tY9QcelR+nIhsET
	 lhOtSbFPk4dyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A42C3DA4A
	for <ddprobe@lists.linux.dev>; Sun, 11 Aug 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172341815359.18225.9321076290304571527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53ce453ea681c20d01cfd9baf8587178f7ae1b3773ad91b096a5fe42b623a0ec
Date: Sun, 11 Aug 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723418153
