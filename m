Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0678A262D0B
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772241894; cv=none; b=jSJchM4LsPdNlVBKFUV/EVDYZ6rNAO0/yEL6nFKvoxwhR+7vxk7UTmIQ/3i6nuiwgsvGVGNm395sww8GeQu6C72lZ6w25UGNsuUEaeLMEMGrpGwYJNHsGdG6HppIGwipMxGdo3SSi+Orp+Uwrolc4HmeJAd6xFnNOsdmyGWJ+BI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772241894; c=relaxed/simple;
	bh=Tj/TmZoGWzKt2Lq5qp/+PTKXxgjnp27WFWwWn9LOKrA=;
	h=To:Subject:From:Message-Id:Date; b=fSK+Thkj6fCrymcHnv8NW4P0Nq4xgyPoub8JjuLrKq3+66dj+FDGvZdWwSyq16iuYJQ3IBmZKzNqZ3PZIlhqnWTlxEFsOPwfYBTz2ec6B4gks+JivPWbfkpWvbwKvLK8r+/4lyL3Dqkq+yak2EP8dJKPDSbYU0mNVNbTXAxrWXw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c3HfUlTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c3HfUlTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8462C116C6
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772241893;
	bh=Tj/TmZoGWzKt2Lq5qp/+PTKXxgjnp27WFWwWn9LOKrA=;
	h=To:Subject:From:Date:From;
	b=c3HfUlTZey5yle9nAoFb2URJx878Hn8CTzg/z1XZzckBhwJ3Zf5Q/UwpNDx/PaIC4
	 y2EFOdnu8ZZX9SJGPDsJIpP7lbmpGHLhSlRQrOYk89E66QbuzzgLzeP3h7x8Q4ddj4
	 DmanxkCzR3QFrWPMEEzA9JE+8MNGj2s3Kg+YdF2/rPi9NvB1+zH4irpMLvQlp3zZ5X
	 ym2WP3YLX8JwtrrD6P6DjLKlFoG9yhY/3pOTf0gLxX2huBSiwf83VWl4N8thdv91Vy
	 MBPJr+Tw0UJCKOKcTlAhOwGAdPD7F0OXv0PAVLpmdh4wSixcSBJ/PBZFq6kyXatGPS
	 4BWsWIS2edyLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8EE1048926
	for <ddprobe@lists.linux.dev>; Sat, 28 Feb 2026 01:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177224189358.1072.4783050111080169956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c612cf4233494e3994b382ff74f0ddcd1f19ac22488fa70524296b1f5ce51e0
Date: Sat, 28 Feb 2026 01:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772241893
