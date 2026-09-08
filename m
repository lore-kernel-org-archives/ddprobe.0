Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 83FFA396597
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788858034; cv=none; b=jK3dYQfa1CiK9tn5vrdFWqzWPG+xpovvZZMyI1JOyfHHihBe9XtaM/GseX3h4+h83tbe4GMoFEn6J9zrBQLfhdfPgU8bac/O5pbuEMY6ctQoLQnGhZUZ4pkhScKofxZM044Zhc/QA8mn6yFczUJFt4ITPyZpebODFHUPowdoJow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788858034; c=relaxed/simple;
	bh=E/Rr55ySdv84raeCrJuDMOpqLIOjuy4E5bf+1y3oVuA=;
	h=To:Subject:From:Message-Id:Date; b=ixVXtKgN787IxSuxuvvZd63mveTWewQPA4quvZzorhhOGsmRZ7scyrhqjunP7iC24WsHKDS1griMpUNnDctnFDDT15pCBSEpck/K+0fvYkd26cm0BLVmnlU2Sg29kX+C6+SVOevGturGHiAt8Cm/8zyaTfk7fsL65edqTY1Pxwk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NkpO6VkM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NkpO6VkM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DDBDBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788858033;
	bh=E/Rr55ySdv84raeCrJuDMOpqLIOjuy4E5bf+1y3oVuA=;
	h=To:Subject:From:Date:From;
	b=NkpO6VkMi7MWIDsFo1ADactlMeXaz969ilOUwmSbpCDhOwQbX1K2bzAYQLSFVAQEv
	 EJCK9AruOm85V9XHRrl2x7UCb65NNHlQPBam6q7jbcWR98MkzfmSMpIBQFSggsnER7
	 dQG3aEUOhFeUDdcvXgRTfI9GPipqWEINBrrmzOhBOoM8WsFEX3GT3Sgc+BastTE+GV
	 hIMtAAUYhK8yNyDIbX3TBtP2+CT1ruSMAGJmAOSAqToPA85e8plUhr04MEmFEmpIj4
	 K2CHfQOc3Kcs/eqaG2KBnabbpcX0oOAiZprX/kA/MztCLDBYlfUobJmFSzkP+HLtEh
	 /RTFfMW9WhdSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7BD6C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 09:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885803374.2296.4327642336777444768.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ce65df54479959859de7c4c70fe26da0b3912dadb3d276839a6769a235d8cf
Date: Tue, 08 Sep 2026 09:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788858033
