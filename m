Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0068BE8
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733446554; cv=none; b=EEChXehlXIU3uPjSHTgCchYdynO8E320/0Ph9EU/482Xz2CobXhOWChHe+fEOfA2qDGjxnDvLGiPteYfH9FGbJJM2KWFweS6H7CRiGhba4q0dL48KuIYsK66wqcE/iIBQuQzGbyEMhsMwg9fX39JuoIC01MYX9RmuPneQYm87DY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733446554; c=relaxed/simple;
	bh=YjxISwe3CqvnS4zkFLqUJr69U3k87+Lrkp+sJFCwasA=;
	h=To:Subject:From:Message-Id:Date; b=KFklU/qs7VgseItRSCk034iNtDPGjRJBDs4/PTDenFwcrD/0FNv9cqw4Cmda8vlec5diHV9DwES9ggwCHkMj09BUke9Dveo+OODoD9cg1LQmCf2Kk8gMoYzDoXyImtk3Rxt5/MPPKHbGglsWiGLu17yYaju43J8wx1HnAMR1i7k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OyyLj+HV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OyyLj+HV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA7FCC4CED1
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733446553;
	bh=YjxISwe3CqvnS4zkFLqUJr69U3k87+Lrkp+sJFCwasA=;
	h=To:Subject:From:Date:From;
	b=OyyLj+HVcEDgfa+dktVFQ3qkujj+fWSNMLLrUWbX8YbOMYh72OmUjnKbbl37xvjdr
	 W+ol/TgQQEblfUXitrP6nLmRQ5ZbfFqdwYFJnz16nbln3l7EFuogdqHRbPo7VD4Llq
	 Vs5xgnAfyUo4YyeLMu5UgCMrH7lC8ba/XQ3oeJE5PlgRUAR6KCVKB43GR3ndAmj2dF
	 0qfVwjbvELjJLpAD0MbiNikge7g2kH8pqYDyGASWl99EPkHhr7d8rB7vsqGjPVbGtD
	 3h2dAfWRucYcsVpRavKDLZIxDOv4Z3m+zz40CZTze3PXv1cftp9QXLeVni8y+g+PXt
	 O5awYY27awr6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8EBDE7716E
	for <ddprobe@lists.linux.dev>; Fri,  6 Dec 2024 00:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173344655365.23678.17432887201017832200.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 914331460f2e383b5f90ecd8900e0ade315c6232a26552a931126a723c360b78
Date: Fri, 06 Dec 2024 00:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733446553
