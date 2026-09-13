Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 721402BE7A7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789324834; cv=none; b=a0NcMlIE5pVZcQ3T9Y4d0vUvmMSd/BVuRJneLmBpcckV91YXdF+o21DZOq9Jax9ql5n20M2mDbcgnVVPV9J9x97tnEuXdaRtD/FzHZdel2sMgSFHApK2Z02VBJIF29NuO64eGbr+5mH4O8iEBNP6TcJ+HE6+cK38lOJMQ/bsTaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789324834; c=relaxed/simple;
	bh=Myl+S2VyS4mZKSdmfiI+Lu8987MXMlWUg2dZWpdCTAk=;
	h=To:Subject:From:Message-Id:Date; b=WFxcZ7Qw4OyuGJw8ph/3lf5bkpzfFO4zEf8/iX5chIeTGFqEHt2NG0GxCrhH36vU8KzfWA+nfQ8gvSM6h6kxXVITaI89B+DJ1ne2NLX7rgLxmzQLSi1rThaXF4P9AnVEfyzEqGOyjrciAOD4/49+o1zp58ugW76UD1VA3D4K0O4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rRyzUNW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rRyzUNW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFA6DC2BCC7
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789324833;
	bh=Myl+S2VyS4mZKSdmfiI+Lu8987MXMlWUg2dZWpdCTAk=;
	h=To:Subject:From:Date:From;
	b=rRyzUNW4BJXtCwGPAAkTuw/AhpRFFaqRlYqL5T/UkuyyQ+aYH7iF7uVlMG0ki0KeZ
	 4XsdgxgqitBZsegL2srQj44qkV+m3v7hunYpF9OGOHMkQja721+IVQrkbziPSpMMKV
	 mHulPXveBXQS0gmOdAglr2M17qKNjSE/YGg15Sk8Y7qByikHfL2nmproPzuDca7qp8
	 lIhSSTQ/pV5X9ntqzBmeX5xHIIqqZT/rwoxgwJD0zCMZnNOgtUBiblCecUAuQbXYf6
	 w4LtBz0D66sj5KvLqWnuu7slQB1YS5dMIeAmCs2mGY+na6c+GWpihiARE/BZg5XEab
	 wSGU9U/ZH+iMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B07BDC88E63
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178932483368.15494.14928907490358631896.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 656b554d8b958c68604730d83f7e56d443553a7de63e1e9d3f8e981823b1b4d3
Date: Sun, 13 Sep 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789324833
