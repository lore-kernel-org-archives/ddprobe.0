Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3ED8D29CE8
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730023554; cv=none; b=gM0RhXCxmfWKcP6MOCkrgztSmgUvBbbYFCtpBMWC1GtjZXmfEiZmwcj90790ck4Qmuku8h5bR7WLkLP+8ZYDdSeDaX306M6kmIbqAv6R8BSrSnUf2ERTJOG8LfZjFijDggvUGRnpgG1kclIKnGyVw12tGSO1+CTVEBDtbhANwpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730023554; c=relaxed/simple;
	bh=0Q7UlA1BpRBCgzWfunPwypHwGPyfKzHDCMlTVtdiZOw=;
	h=To:Subject:From:Message-Id:Date; b=Z6i/mAufwhGlsuXdJ0FpAwvB9NbIc0xKyYIh8FCnXvL6v3D7Q0iaqsMKJpxAqu5y/Q2XiiqNlFCzIP54L2vgU0kdJ6BWlbKYtDZ76dC7Rk5qtuuwh8Pl/csIiX+2urQCQmAGXQkePFKIMDHAs5ZJalhpQGOeQrnNXekxEFN1hhU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NEwBl4e2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NEwBl4e2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B431AC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730023553;
	bh=0Q7UlA1BpRBCgzWfunPwypHwGPyfKzHDCMlTVtdiZOw=;
	h=To:Subject:From:Date:From;
	b=NEwBl4e2tkRYF6yGWbSbfJ+GSf+1lJQRnzMZTo0zLtzgdw+o0lvkqgHyP3yddM4Fi
	 1yjgohcNZtEiwDaIeILeps0dnuchA7GtQeyySR3o5PIbiQLesDkKTLe3hh+QcIgGpp
	 Nageez7KoF+dMzJVBEqqz+ATZ7tINHqyOuCmMyMfKa90Dvy08N/bW/hjYUUXer2K2/
	 p3tIAihI6R7IJ64DyuZnM+OzbOC8iwigDNEW/qVnMsTc7q5R+b9w4cTxQQ2iG6+Brb
	 ZWN6QJCGYmIOG2Ls9UmYH1ZYjvayRKwg1QwHxetOslSuNkxoSOqR2oNTpRIfAsF616
	 TCbjEABrh/1UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B754D10C15
	for <ddprobe@lists.linux.dev>; Sun, 27 Oct 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173002355359.32572.11353318470302512998.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1e2fe588569b6ed226a3e75a49a73b8c5f159bf45031374710959c1f90164c9
Date: Sun, 27 Oct 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730023553
