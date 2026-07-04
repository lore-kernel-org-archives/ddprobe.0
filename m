Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28E1F16DC28
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783152514; cv=none; b=kkZRZ0bds25PSFDxFZNC6uyOvW/vIzKkiajoNr5AswDMlw/lbvrVC78tb7ecO7cvMDFGiDQsJ3/PgFIovVNGQOXm7z+skJmz6FJcNAkHyX5d6WFMgnA7bGlh3wS6bDcBrPtVlMGZJk64tcCtreik6S76bZeiILDp/C0NDElWosQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783152514; c=relaxed/simple;
	bh=3U0LVlgkyB1d4p5KSZIiJ91TVESX3Bs0WgyYmtJ0cFU=;
	h=To:Subject:From:Message-Id:Date; b=J0ZoCebRURnLWfugAPr7ovpV1JI4q0JyLENwgxChrbR+Z0Svo/tzCvaX7MpossN9+Rk/ts8xhd/EgvMPQ/5TriEnoUGe3vSaHt6ZwCIqjLsidi+Lajt12TfNwdBtY29YLZf0HMTBHWgMKYD/YAXdayHr11tutWZ+qENQ/1IlGDc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8Pr+zTj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8Pr+zTj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFD2C19425
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783152513;
	bh=3U0LVlgkyB1d4p5KSZIiJ91TVESX3Bs0WgyYmtJ0cFU=;
	h=To:Subject:From:Date:From;
	b=P8Pr+zTjMYqA2f4xBxAAM5AvW/pYbM2Pk+E/KxLLOelwXYC4ZbUfqWL/ffjUaO0ME
	 9usp6MJzyEGJUSo3AERb4ZisFBHToxdC762bt1REUSuQdK4ovP3/qLQq8TulPazzBk
	 aUBTKTVSdOWbbetx/zFUB/8mu9oqjJKSEW2Gi2GfYPDiqkoEA7hBIIjDyG1dXSunVW
	 ll56YlwGmo/1F92F/V6Htva3S6Im9W7d3x8Bu0N1OmDqVH9RVanKKZ9Iq97QUHwD3q
	 S718x+uQEqHQudleRmF6O3fr7cTk3hHyGpZl8wE91L3uTr+Rq2wmnwhPHU0L9Zqf+D
	 adJJheTvRXrrg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB71BC43458
	for <ddprobe@lists.linux.dev>; Sat,  4 Jul 2026 08:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178315251368.16246.16603602784025647984.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d13ebc725ad1824185a637a56fd8d4fd3c10ccdb1172810c080c27a0b4c42e40
Date: Sat, 04 Jul 2026 08:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783152513
