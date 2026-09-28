Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 284C5495AD5
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790613634; cv=none; b=RHPWPJvuMgZDa27hmxRGpR2kY03zkBxG4NAN1DDbitnxiiTIcFpM1OnrTzDqzOJMuKKpYAGVTSCuH9xus2L8rVgO7Pry3a680wmGsyNRgzbBHJ6dT+L2IP/KhNTKjpr17WAQ3tuy5YjaJWqhQuoBuErJ6SJhjILa/Q1ad17/Utk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790613634; c=relaxed/simple;
	bh=z16sn4V89BeAAfNvmcdAi75STYNvLHyDu8yPf94FEs0=;
	h=To:Subject:From:Message-Id:Date; b=bV7O7lRLLAcXGAhxe1ALOvR+ExRH2egsNteTqlmA1ollR0t/6CRiVf42ltt6Xs9vH/wQ+ONAbFexWyYncfzzQDnP1GzglR1q9p62KV+CjwBoftRolFGBIr8ylUe1yE5eGWlDXnFq0uMyOrqTPrgmoYiMgfl9f+QyAgPn/JRUurE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Co49QCQG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Co49QCQG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1ABC2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790613633;
	bh=z16sn4V89BeAAfNvmcdAi75STYNvLHyDu8yPf94FEs0=;
	h=To:Subject:From:Date:From;
	b=Co49QCQGx2txlsBrbL//3Q2NziKM4gwO45jWWiv60GSTVGx8FFqRBwjtuNjXaPLI7
	 fT6w5jy5fOY7v0H/xqdU7YOdHsMTxmLonAi3P2xsn8sQmbfi4t3KMdPq7z5TMi20cm
	 gsxnT8DQpyTFRISpsj2wFuIlwRl9SjLDnVi6d9vYxwdfEo+a+/6Oc+muqZwJuDQs3h
	 hjt+JUsPu0zFPKPwcB7PCyyYnCjCh2pvIiP8qIKCeIG1z7EJAjw32GQK9eRtcCiEFQ
	 tHsNY9d6LI/qHmCw78Pc57tNmWh+syrlf7n7jqCzbT+3uv8esIMVg9M5FMgm517PIs
	 7pqln8RztBEIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9CCCCA5FA1
	for <ddprobe@lists.linux.dev>; Mon, 28 Sep 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179061363368.27388.1311470825938136537.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fd97470dd5f4128b430a0adb378a123678d32534cfd54b1f4167b316ecdca57
Date: Mon, 28 Sep 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790613633
