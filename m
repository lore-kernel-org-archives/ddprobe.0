Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E2FD1D6193
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770560634; cv=none; b=HiYopXznMqwYdIMFfptzokrUdHpRSzBoEZzizoA0KUifEJ13tIUmkCVtIahyf2XnXHv1A/UPuo/3oddeV/tI2y40qSwsTeYC8LjggaR544YE9H0vH8IdtIYc8/jmM5I9X24RcFmqEA8/eSRrSFsnZUP2hP6wPVpF2iA/5NJdxDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770560634; c=relaxed/simple;
	bh=+NT479XaxWlGsDxgyjDmPAqS7XlDaZ3IkjIwEaEYBqo=;
	h=To:Subject:From:Message-Id:Date; b=aZR2DBzOhBgOb/oWPj7ug8cEQObLADNc7LMJHMmZTH86ByjL4qp6i6qSAdmhRwGoduSB8B8Ag6miInUSioiJcxLQ6BkDQ4MSGphziHAx/wo867qptMJhT9mP4r00ZysQqAYAJO3HPlkD1U6uIXIwfa/Nq/b8Mpu2B57MchFiKfM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y8CVtAj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y8CVtAj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8D6C4CEF7
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770560633;
	bh=+NT479XaxWlGsDxgyjDmPAqS7XlDaZ3IkjIwEaEYBqo=;
	h=To:Subject:From:Date:From;
	b=Y8CVtAj3NjRiajG6XhhGs1+bEocUwmYZ839IzaAdF6wr95LzVhqjwDO0zXCGulDze
	 4POhzJ6O0xnkD39x0EYl0WPPjsL+3fvqtFkLU+Vc4DwLXCwZl5F4BhM6MbZtXCH2eq
	 3gNSKRYqmRYeQllLPqf9tlPdVT2KZngNkbB0OMiuo25VtRB2eJsgFwiFCsZhbvMZws
	 UXT6X9w/6t4v0jvaS+qAY6H2qWg7r1AkbcBPLGPpBnZtymlJ2s2DycSg0DyIOetYF6
	 hoMHa8CLQEovlhgtYOpBPUIFRFGu6QZuAiM9PEop5+ObMD1E5Cgn2Uhdyi1RrNsuQe
	 1+J9rbVgTRMTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F43EF06E2
	for <ddprobe@lists.linux.dev>; Sun,  8 Feb 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177056063358.13511.15669540824756484160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9796b577873400c900252e53f5e40ecc9a8cbce91d5c9803f408d3a74ed5661
Date: Sun, 08 Feb 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770560633
