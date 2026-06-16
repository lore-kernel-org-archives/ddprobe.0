Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4950F257827
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781645794; cv=none; b=IC4OeRUH73Ss2US9XZPbV2i9meVtz5II3lFtXBdoLUq31cYySiFacefnJLDErsnbrK4W/EdieC59ZoEED5nWmOOMSqHCo8maVPk4Ckd/g7YkKXSLztRR+/xH6UXLZtZ2ZTxv0LVaNEwQyAqpAMjiE1p205/jESxbKukW/UQbCzk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781645794; c=relaxed/simple;
	bh=YgvUJwOi/iEJ42hX2mtatFo0ED6F06E9FfOLSpnnp7g=;
	h=To:Subject:From:Message-Id:Date; b=KTL8ROq3gy37PqKKrMTorsbUM54mMjU0mWl7xSPVExE4kqJhZ248TxhiqQO4mzrQZ1H+bVFBy8I2hiIRTCFmWdWHwbJ2XaOOj2lRAMhArQx3ANs8KgIBY8pMA98e1OSaY+AjQ8uIM7ds/0i84wpuD8OPqzBM0SalMxwX5tkQrP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5q1cXuC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5q1cXuC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB61AC2BCB7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781645793;
	bh=YgvUJwOi/iEJ42hX2mtatFo0ED6F06E9FfOLSpnnp7g=;
	h=To:Subject:From:Date:From;
	b=R5q1cXuCXKemzZklL33rG8NDPwnZ+A2M9StVyBvOP3RY62dOfxlJmNuCBH8TLeeJW
	 EYy+MWHbM1f+GhQn2tmWbBhBwlZ974wmAWsNqxhWQbCUBUuFCnmWU99uK6kcDauItL
	 goYhzM3A4qJPZPxuxV47D7JtWzgPHl+CUGKeT+upsHzFXht+SHNULCJlqMqmLTAurg
	 uAXd5Je+ZvAZIEPnGCss/Xtz/ZngaN4HPdh/A41F0Hus0Ks+yGoWrkFAY6viIGsRK8
	 KVHtjKbW0h5e+813u+4iVzZw0kSBnZIyAlxs8t1NGEmb683ZcD+7TAb9+u04gJLn6c
	 tuYewid41tntA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8259CD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 21:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178164579374.12805.8252912020660626535.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458fdd2cf2ebbd5ed6d8fc1c72f501de597525d1c815298107ceaf28bb55662c
Date: Tue, 16 Jun 2026 21:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781645793
