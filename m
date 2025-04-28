Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336882951AD
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745862594; cv=none; b=tV9qMs9K8O7x94XfErPHmVFpP77/gIaW42KZKKigp9XPX/j7nJYLvdaqlByxmxrpm/T99hcMOS2ehNObiv92Z9aLoi0KeGI7fPGj8tfZxCJvZ6DZ7tzeF44QitYYyQns4t2RpJleBxjlJYm4ZqZoFdXSYaK0nCoDsmdZVM+wQag=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745862594; c=relaxed/simple;
	bh=B72+SoydlSPGu7AR0JmOrATSV/R5FzhRMJhat/NQpe0=;
	h=To:Subject:From:Message-Id:Date; b=R5x+b/9jSDxZDehV+Vgb6H/lKtRk4C6MiNFlLagi4mQW3c+6QoJSc+QhkhWB7tu4soUcYaGBTPjMzOfxDLtLQsFX7V6VzFepbMq2EamDppYYzUUu++5hq+Yv0R1XIbEUj6/cSGSvHkNDHu0Nn4NislOix07JAmO2H5DSPpfS0+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VaKoRUU5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VaKoRUU5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DB10C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745862593;
	bh=B72+SoydlSPGu7AR0JmOrATSV/R5FzhRMJhat/NQpe0=;
	h=To:Subject:From:Date:From;
	b=VaKoRUU54lmlIDFEhMnzAnsXfZoM17WeyFpZtC+OdID9JOEjNn37gLnZJ+ANSMMSo
	 J6hXsjLj3aNw3ccVQD/qA3De+5ESU/T95ppG6u2UTbQJbMdSrHXfVyPaQknoRO5Oom
	 Mxv2qS3p2BFfxe4DZEmLiOBA4vK3R6p6jjNV7mbk6Ww1Zf1u/5OBGnoVvfj+ctfD8/
	 aK/Ha5PkHQs1ZOwDQoym9ykeNJ8ELokgnKQSLAQBeyJsv0AZIIQkGYE7TWckEQXLFF
	 8xdfD2Y3bw4thjzdt1T3I+2XsOK+l6mPAhAQmKVonrJffMapkzvOLa2aLzG7I12ITq
	 +P09fktwIbRMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F456C369D5
	for <ddprobe@lists.linux.dev>; Mon, 28 Apr 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174586259357.12404.8608967684110420652.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50fdd0afb583be8b4c8ccf0f0f0a52c4826847a27262e1b6cbf8b6f550a09806
Date: Mon, 28 Apr 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745862593
