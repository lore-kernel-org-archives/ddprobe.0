Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B75D2F3B
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 08:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740300534; cv=none; b=Zks4hSAjJxSP06/OIi0KzrFj3FC5XidSooZ0+A5+cA8bDSMyjdAW4Ts9qwjlDlJgmHet53W6KTO+KnOfYXoLi/I1z9AUJTvhRtPjTT+UaHXh/e6ooPGK7kCD1gg2pOqubuac/wqTfI44a3xhTRO8ePrN6JUc43Z9EuZKZ8ORjQo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740300534; c=relaxed/simple;
	bh=+ljUdgTpAikkl/Xx6xxfJ6VfKyhiixs43ooj6Gcur8Q=;
	h=To:Subject:From:Message-Id:Date; b=qgBZed3kOTti/zizZX0osG2aO/HOC8Csudkar3XGNwopoyu8aqSNWxE/vdaH5adke2I2UgrS1Lb5YhId58GXg7pi/z/sIVpYka0EpXEpRfwZbPgqQHs4/bydbwpt4td05XSarsPCt6Vi3d46pNxyed41pVgM+iMCWO+XIURO8Ts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OiwXJaqG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OiwXJaqG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94F8C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 08:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740300533;
	bh=+ljUdgTpAikkl/Xx6xxfJ6VfKyhiixs43ooj6Gcur8Q=;
	h=To:Subject:From:Date:From;
	b=OiwXJaqGQOA0S5GEt14tfTbPvDaXsMXcUScs9z/IUG5ur3FERVSQqLbFD8LLy/IJu
	 +PqujljmUF27AuNB9KQTuceMV+8Ed8hO2Kr+zUTGSBhehOK9lyfc5IrQAYIf/2UDcr
	 K9UP6h4/Q6GNe52oer1w7C1015nleddxunfVyKsMbTYpxJlgxxcowddZ9zHhAYnHFs
	 Jy59GE6blWDto7lOMjt/epNltmMnHx8FKSPXNJ/P595Thb1nL9sWT5hAEkDxcdMV4d
	 M56uRC2BavbuQz24FgqMSsy9KjvUAQN7YWlnFOrVVUJfaQvwT08w3Uzs9Mq2zyJEch
	 oOChXClhsa/Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E0AC021B2
	for <ddprobe@lists.linux.dev>; Sun, 23 Feb 2025 08:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174030053361.14508.14762013683875385321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f297dd142e9a3ee73e436102413c0437531440d9ee1997c82cac2e956b9738
Date: Sun, 23 Feb 2025 08:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740300533
