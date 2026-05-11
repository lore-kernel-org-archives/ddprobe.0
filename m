Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E83943E9C8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778520034; cv=none; b=lFEMfNdeAIQBjU0HF9eUqFeac2ZuQ9aOCyi2U3oyPzuxho0sDBXWTBdHlu4fM84HhyMJqpY3PgYg10mvD+WpKC+IySaDANcHRsOhO2XbQq82JNEPIjoGmRhsnPBHI55DIacROWXWxdZ9COtyY41apFPURiksqZbwczgulpWSiow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778520034; c=relaxed/simple;
	bh=w/4ky2ofJLxthuUacFQpueJzwOx0K0k6Q3skIaRYl8M=;
	h=To:Subject:From:Message-Id:Date; b=mVVV14647PKBu6vPTna8enaBq2ryjtZwAnlCkk0SIDPmpwh1AEPG5znMWpVDd27rkdgoSihTDkfRP8Ld8ck8ldbZtX72zYsYep79IztF9XZmblzrrGfcHq2vsV0J3upR7XQCuslTg/lGHu6g2YeTCQEfunB9YNMAuqXTtSxvEHY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aupNJ4RQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aupNJ4RQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9588C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778520033;
	bh=w/4ky2ofJLxthuUacFQpueJzwOx0K0k6Q3skIaRYl8M=;
	h=To:Subject:From:Date:From;
	b=aupNJ4RQgNmqm19N5IB//qSJ5sBx3vGNIpdr/EKZdsLnqSEGB5f0vwdFa93GZycQb
	 K2T/WaC1hIgOHkPxM30os/Cu+K3Du9F3FRfL0g1dX7qleoB5XnGhaXCoeU0y3QyrV0
	 DkiwCeBc4cnCkK6c5ATiPhq5FAjQn2wlfP1SqHmP3S+uvbtoXy/Hktlw7hcq3Xk4R+
	 gH/ZziKMf1nCxAvYbuEpz7Um9Bl41SEUcK01nX3tfTWDX+3wZlL57hH22+YUEdT7X/
	 otoK/iLPRp9E/YD6vgD77BvF0ZVzpt3djmHRm1vUlLG5nrquO1cIq+S1nHxrziNGew
	 exs7rKPSPKfBg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA831CD4840
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177852003369.29904.8238957436203370585.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 926e89263fab7e2758f3fc1632262ea8df73fc5eadf85c15b72b38ba33a977c1
Date: Mon, 11 May 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778520033
