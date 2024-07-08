Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E985B665
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:26:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720445183; cv=none; b=lWLBw9ImVbtlcPG3pK72WxjpcKvUy1mGZUUZY0nYFXPb8HvfIyKLXePlk7WDeEHpuczS5/8381irpFO0/V76JBz2tt9BNv8s1gYDEjRkLxvS3yNo84qAnWpV/qoSnTYv6tjd8FAH+YHNkjcHk9n87N1NnDVAgUBVDWvo5mAjrzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720445183; c=relaxed/simple;
	bh=Dfv6OukKATMmRFc5CBRngFWF8CWf8v18/XIyKEYaay4=;
	h=To:Subject:From:Message-Id:Date; b=kzIbxqWct3ZXwkXCmcnLQ+KIjErXR/jfkEK6PZw/kNWARiHTZBRCeClffkZObQWUVhKgh33BQPtWv4v1imGwiWdLp114PvtXNyuOmBugtKRYqrp3FP39il+IsyhGrt9Sf21k/Be2fmfPY2dYnniZjubD8aDdGryW3O/9LTAywYc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJaA+pDf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJaA+pDf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6E3C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:26:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720445182;
	bh=Dfv6OukKATMmRFc5CBRngFWF8CWf8v18/XIyKEYaay4=;
	h=To:Subject:From:Date:From;
	b=tJaA+pDffigrqlxL0pgjDdVLxCkFd+wYpHqT5Qg/2/vH9D3rRxuQJ+d0MB1DjDzId
	 ngUs4m+VG4lk0YzKFzgjkYleWL9cRZ0kQUfMs5HWSrKFQNglDBTbxwDEqDG27HrUqu
	 zwaSUvu5t0XSjdIl1paDNY2sk9ar3UC9wlzn/Wl4RwS9grvrVB+2z7ntg+8vD/r13a
	 DIvHFXxOTvS/xlD2NTlv4dZpph5oC1XT4LYCbk9U0+GDieffGnNhZuuYfnsQgTEL46
	 FjvDzafM8+nehHYPyoekwIlDdwIyhi3061SbTcBLuWcRHs6lBfe8ihVN/FpQAZw86J
	 RCDryW/oiKqWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C77D9C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 13:26:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172044518280.10683.7051780982969900103.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09a7862143eb28bdf828a619a2704c419ab1d2a5473019dd35f186f314f96b28
Date: Mon, 08 Jul 2024 13:26:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720445182
