Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0344D1C7B61
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727792154; cv=none; b=JO15bUQiA0z8EsGl0PzzGsGWp4BBrkaIYFQJslFwqld06vIMCp59pWi6emHjSmxxTgtrmFsRSIHuG1kX4dBQaFTUlDeoA5j++tqudfE7GmhRtMcwj7+qP1giGcWbhvs+eWo4axi1m6+e3iD9qtBTPtCUo0/8Gl8q2c+y88DPDNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727792154; c=relaxed/simple;
	bh=a1xLtaFf7RLAYKnLsel7FORnlxFpkYe90kOcm3q5OdA=;
	h=To:Subject:From:Message-Id:Date; b=Sp7FOdUc2wphVWKOqBLHCgWidHQ42DLiAcaVj7BStHenIBELR+zt0aPk7csojLLkGcPiiaEdmtRrje5NDzzHmLWyUyJ6IUe4d3dNW+HGVdOPoEvxVYTuPJmbhQ6Ty/CPlED/J37vXRk32Bhr6Y95xGvgwMXwg95Ry3ysChM6NNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vv0JUcHT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vv0JUcHT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF419C4CECD
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727792153;
	bh=a1xLtaFf7RLAYKnLsel7FORnlxFpkYe90kOcm3q5OdA=;
	h=To:Subject:From:Date:From;
	b=Vv0JUcHTe1RBBTK2QYC+kZudi7IxXauDrqULUMfEqU+IWZI0w0oEL7yoa92A7sWYz
	 8coVFyi0+GLUU1zdFIDii7L4hjzaAqqul3qswhtjZBWaTR3KBj+YdtiYXXjTbPnnZr
	 pOctT8ESxV7VMrWMs6TE654zPhF9Vu8QoMw46HVQ4ROFwnt3sc92tch08MIQwcTx1f
	 uTAQ4Elnoyd8xsRvHkuLIH4cVZ7tVKQrdWhiLk5QM4FT2dl83eV/67K3QZe/Q/p8YI
	 T3guhXGcKfWF4vOoXIfO4X6t3/+Y7ahWqcdln3Jgup98Avsmaywhi+YSkq5EznwpV+
	 9CrDmBXD3UylQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C663CEACC8
	for <ddprobe@lists.linux.dev>; Tue,  1 Oct 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172779215362.1793.2041152539910039206.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9946b6ea288cde851ff56cbb783190554219a57877d8aee496449be5d6e4fac8
Date: Tue, 01 Oct 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727792153
