Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26BAB2356C6
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778752834; cv=none; b=uVFgWcRF14YtR6gDeT+b+VcXRSc8sEtzpVH131F8tmGqek4qX2MIXawlF3OrIcqaH55/eT8yL9kvmXhICv/l8mVSacZkHWVTRCz3CAB5jGNxmKk5bw904Bm/wCuJIXf6mzbmt6Fakuszz9iRSVYjoxxE5Qn0nB6wdppaPk/QELk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778752834; c=relaxed/simple;
	bh=XjehCwH69caLnNnrqb3UrnClwTAFUnGN52otltRF7iQ=;
	h=To:Subject:From:Message-Id:Date; b=h08NtCNsTU0y9sz1DUzckHCn3o1cyTYm7sFIVarV/NXYfrQ2qq52wrY8qZi+hDgXImK1YI3OcxsQz74etna5Yp09RuS5zOr/YeUvLGjVwaYseSHeWCaE5gxOb5q58mHKXhyqFhl5VLjd7xcmMGDcXmE1pqRaM5MpGirXLZwAfuQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgtVBKWF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgtVBKWF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9A86C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778752833;
	bh=XjehCwH69caLnNnrqb3UrnClwTAFUnGN52otltRF7iQ=;
	h=To:Subject:From:Date:From;
	b=bgtVBKWFK0lVoynZLNlyKZ7N63Fz6qg6wcCSgiBntt/ygmaZnt1SEdauTwm81Cd6Q
	 +DY/CVNpJN7AAht/Dh1smWRUNWXpqS8OW8BCOEpqW7VF8daTcNdl3ttsQhQ2SjPeJm
	 33hV8D4+ckgSUsC+NubcvNYqDW6RZur0Zwwy8OkMI0Gy92piFF3ZH5nFgdtqcYs6f4
	 pfIbJ82UhEsMqYFFPp5tFMt9fVkJ5L5tVd1QvhR7Kd4W+Q6GHULemhx+fgQJql/V8E
	 geB5hFygX+/pqQt016YeCEhIuDENEOWZbOjv0llmTxuc+m3NyjaTXQvfQeP0nqxnQn
	 Dw6Z1v5WJh6hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB10BCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177875283369.32331.1115709415902983004.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fe595361bc0c190d8a889f28023650e87447cbd58a7275a3f9066636ba6b7d2
Date: Thu, 14 May 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778752833
