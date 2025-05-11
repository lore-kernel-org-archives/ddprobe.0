Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CC4F1AB6DE
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746979795; cv=none; b=J7w0ZsZvC2cAadAk1ZJYuabCZtMWi8Vh0M5LM5342QyoJyfaiUY78TFN15QvM38DjblvSHBT5AkCpHtdkQy9pl+3zSNw2YqG+xXjPVQv5xr/SIzOtCE6erfy31g/I50dalbDuXLCthwKiRT5v0IUUNr+wmwMfXAZ9mg/7vI4IrE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746979795; c=relaxed/simple;
	bh=ar9rNPLNBpsllvwSpL9gKbQsDI7K5Ixdzj0tDbVySXg=;
	h=To:Subject:From:Message-Id:Date; b=F4236DzMP0l+MDr13Hwwb41qna19RU5AFjsLaUPitvl7q5NOdx4q569btManGnh6Vyl1ZxmkAjoDI4AFzdkYObxJ/+tWLtVXk+80x9Fbs75jGUPh3vYYl4X7KsFVpRXK5StvFTxYIRD5SReDW8yLXsY76B9pVz7z0TUXnu9ENsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOVcS21d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOVcS21d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C07C4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746979793;
	bh=ar9rNPLNBpsllvwSpL9gKbQsDI7K5Ixdzj0tDbVySXg=;
	h=To:Subject:From:Date:From;
	b=JOVcS21dvLVxtYQBtnHrTGBvef4q40qJrY8TNNL3/ssM1K/PHEFUGX12O8fGl8L0q
	 TSX3SNRePgkP1omvKiiAE9MK/DtbFwrIQumzoIalNHPAxn7XsiNhV9OSgI5InH/WJD
	 jU2HhNzixdODqCjuXFBHRfRYMLqzAANNXTbvi5qbZ104fOt+pyKaBGPvLStRwNNQpp
	 jVQ7vyMsxiF/Ux/nEPSmdn+AbPs3lXYfMsqjkIoLR3gA6aBBAjw6F+UlZxqVAOTWxD
	 Y0+Pk7lqp4bu+Sbmil1zdj9RC6LFBxfohYxKcM+zoC5nBtXtP6X3TZ5r1N3bI2Tl/F
	 mYmBlKoP8rJLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 907B5C3ABC3
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174697979358.7676.6511259912354471957.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3afa2744e05a969ebf755fbe5baeb592f64efaaf928244fc0425b0f4e269b0f8
Date: Sun, 11 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746979793
