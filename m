Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1405C146A66
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778817034; cv=none; b=facH30RiodEC1cc6b+3l60UD3/u3fKrCG/ehHiX4ig6/x6drCX4KgW9rkDfn4954lBxc3XfLHqW5PRt1fub+PNcQ+net5Q5HwEpRXnj5alwc/7pE8UogD6ROoPxyuAyFRl+Jt/NkaqgFyYWAUM8SuxGF8fOShsKieazH40AduPU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778817034; c=relaxed/simple;
	bh=YTZgksr4AlO34FRhH4qaf3jBJJx3+baDg4xOID7uq8U=;
	h=To:Subject:From:Message-Id:Date; b=TIYzO9p4zmcpw18lXpiAWnvfI7l2WkVYqhrCSkaM+mNwEs41nZbz+4idiNRbTGl/5t8dOZL+XZ7TQKsujGqT0kkkWNM3NtqaWW10yqT8Jk1hiLYVDN95CmxiF9+8T3WuT2Za2FVWGOhYBhw/053lhDgSXGMyVOR3iceot1Sfr4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KUDLVU2Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KUDLVU2Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3BF0C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778817033;
	bh=YTZgksr4AlO34FRhH4qaf3jBJJx3+baDg4xOID7uq8U=;
	h=To:Subject:From:Date:From;
	b=KUDLVU2QdWliR8pnAMUVvJIiF13d6A/wroTsS/DqWrWbZhtO2j+X+86U/bV/Jj1pW
	 hrrIZZMNC4lzt9DR/Rnqjgudeauc9c063byiJODvSVCJMP5uLHasDVq3ae9odu2Hls
	 I1bPcOlid2gk5dv/0dXdRaAy8qicGoMl+IpA9WFaHbm639bwcL1kb8ActYY3r0EdLv
	 VMZZe5xlupNOcmdeGZGKODnEn8YCjgCP8emiHUxjeDlqJ6AMqXRMEEbEtMkmTlfkKf
	 3KmAVXKLkgZrZj/6DYzio9Hofp6jD0/MFFzlIBdVZDl2t2Z1JkVx4kCA4qEm+e7B5I
	 WJqDN6EDx8dOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BFCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177881703369.23177.11462325817746192127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 77b5f324d799843e8c8c2a2bec66e6f297850b1c4c8ce8a68aa4ae948e904e60
Date: Fri, 15 May 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778817033
