Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E316248F73
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778927434; cv=none; b=oSuFaOZMCC/eEnEME3d8y3SA7zUZzw2ONEiukk2Di077q6p3XXlHK+myBkAs9Z+pQHnI6vRIHSf1P7VOthkzdqPtciEleg/h5cN1TmpscayMY0JTBhgiItLoGiMvaY1K7kwWJgqU3nbhQDbqRWXYGqiwzPLICNXR8fs1deTCXag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778927434; c=relaxed/simple;
	bh=rL6mqStoFesJBa7B6yeuK5U9og2cRAFIRX91kHrAyTU=;
	h=To:Subject:From:Message-Id:Date; b=YMePWSrG1oHIkDLNE0ZCu3Fa6wxDKc7WTvj7gYcpY4zuUgo+DkVOjMG8Za+piaFpKCIzKlyLFVIo8rUdbUirjVGPJh+RxhYO+AE6K1mF/DwhaUsg8rKlL7mU3oXVkfbEyXhmxVHWoVUJwnNR1TZ6Z9IwVIWWf03oz+xiOFgHs0c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L8dRzFVd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L8dRzFVd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1B49C19425
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778927433;
	bh=rL6mqStoFesJBa7B6yeuK5U9og2cRAFIRX91kHrAyTU=;
	h=To:Subject:From:Date:From;
	b=L8dRzFVd6SYX3JeDGaRKhJbRIjP6DVwpJM3FFkvBksoZoBnoObxQ+BveJ07L9VTC+
	 uHEduFDjIiVlWNP4gBpcLTWATC2JWLjyOTHbfZ8HUuJ68i47KJh+3nhRjrMcSXqa9K
	 Fce7Ky2EbAdGNOzGbds4kOoPifPY9BeE5zrmgSAGo+DjsBWdq/VBobXwddo/5pCqfi
	 sbv1fTSpjUWEQ/e0dybNM4KyIygPilTq/97IEP2TP6G9s4MK7Nm+0s3VotQt7W5F0L
	 7Z01go36hXsnRwz9MrtuDP4WdZST0dBaXg76vx9u5KBwfsFbGcuDGfyb0FZ1oPEcSc
	 2hwm4ey2RTObw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE25FCD4F25
	for <ddprobe@lists.linux.dev>; Sat, 16 May 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177892743370.11774.6628665769993988279.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff5f163fb41e762f0d184680bc1d41d2dc83c0dffbf56d4ff44129fb0f6cee2b
Date: Sat, 16 May 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778927433
