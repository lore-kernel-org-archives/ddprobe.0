Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 347E820DD72
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765105374; cv=none; b=dCdGErCkhabpCj+OrGvnXCJziOIdAts/mF5DHSy2Pk1TSviyGROPg4z3SqFNkmDX2Q0FkBwwPdkVsZtw3oklzRbZqtdVIpYk5IgXqSwrCvrFJxfb+tL+kUG4SFcg+ACjgYuzlWCpf6SwaWSsT0v8niMwd+WiOeO8jgDkXmKfYlw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765105374; c=relaxed/simple;
	bh=7DK3y839LVx53vGnm0jzgCoGxA1vzyaxLqS2UIPIve4=;
	h=To:Subject:From:Message-Id:Date; b=ikSLOThtCXe+PZ098pjtHHGdqrUQkmCOXM9tneDaSoB64qCoW5cO7Zi3AtF/kO2DFMcTdK2WHuUYCTJJ8IrHWLWuriMAm1hVU1YO46XmRjC3lTpHusy7OF2nJLiNAYoHMK9oMXTbItUij7qry+afVJ/Sf2MSE35T6RrHvLBxx7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SXrZoqH7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SXrZoqH7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB533C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765105373;
	bh=7DK3y839LVx53vGnm0jzgCoGxA1vzyaxLqS2UIPIve4=;
	h=To:Subject:From:Date:From;
	b=SXrZoqH7VbDKXZk1Y3oiKYpOMAiHpXC+P3UwQ6BZ64Pdf9HR9RFsavv12lqCeWYN5
	 CRjmmDzCw9RuDe8VNxxIFA6bZRMT5JzDeb+GAk9gXncFBH4lNO7eVVtBoZe2UWsTxr
	 96lVx54CRy0Io9aCM2eiHmKy9WSOIXquwGjagerRDM+bq1DJfJzcUtxaVfFj/b7wWj
	 z7nu3OwZt/HbWUnUqBEDctJuoL6SpD5IeloUX0rfaH+UVN5j59bFBw/MXDt5CyaBcd
	 lUcyySGkP8xuyyY50tknQAd8+BmAhIcXSS55knWtc+SxJM6p5hYuBi1jcVrlEnhiwV
	 uzdTBx4uZnwxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 961C5D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 11:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176510537358.16085.17878611947673825797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d738423e570c1230ae7d5518a82c3147b4342430026037a802683a3de013616
Date: Sun, 07 Dec 2025 11:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765105373
