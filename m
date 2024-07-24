Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6570F23A9
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721780154; cv=none; b=ERQsPebNPKhfWjcXVHsJ5vFS0RbFCav9CBN/wp5VoKszZ/QSJS/apyK+7u3YPEvVQL0tmwUyNl3a8pt2VdRoA52tQnD52Hfox8UZzVQPipSGFsRSwYwlxQuphO39aw9uYerEp95l+af6+lcgkStxQ5eweIRTHYqzXW7enQGcxNE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721780154; c=relaxed/simple;
	bh=5RGsreK3x5+N4j8taOysADuvp/3TwQEr9qyfJXxBr6M=;
	h=To:Subject:From:Message-Id:Date; b=HtJe24g56jFaRGYhBzEwV1mthgNo4qfhe5uJZnhYqPL9v9gkbpsNnScvXIDsq5DVg2SlSpgXBonvwDjwMXPkaphtLK6KbNsNwH7znLekgDsEWy+Rricn/YIkrWS5s7x+IwjbBXEK0xGTs8a9pQ1rbDyHvieS4phz1clsM4fkbs8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bvh8mrWJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bvh8mrWJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFC50C4AF09
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721780153;
	bh=5RGsreK3x5+N4j8taOysADuvp/3TwQEr9qyfJXxBr6M=;
	h=To:Subject:From:Date:From;
	b=Bvh8mrWJDiDR1Jg5/4kLMAKux7Zar+tbYVdJzNUsniYeWfBAMN+eKRvFFIV34n6Zy
	 ImVc3zA44oiaCUUlOePfcBAr+c+fcyrwBwsLHrjQlGSon2Dn0hh1gdoKL/uL7OHEZT
	 nYYep8+PkvLgb/ENbdI9SR121Kak+wtOV84ZYM4aMdct/X+2vyVGAGKVJXJK/HbiTf
	 ODXVS9WbkENH7FdFkmOHu9fAaMxfM3WMrNkOPhzVppiJFNmfozXqOMFfiovmOmb3Yd
	 RABhyx0bWSDXxZN+aPnw6ZiEV70lHja9FLkz5m056l2BcqvxxQ0KpO+DOcZOzyuyh8
	 hJx2J39BPxtJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7865C3DA63
	for <ddprobe@lists.linux.dev>; Wed, 24 Jul 2024 00:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172178015365.26088.16942107747512492532.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe57053cea5f590344f29a7d911929a161e7074ea8c72cf5dee405ea2b0b9612
Date: Wed, 24 Jul 2024 00:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721780153
