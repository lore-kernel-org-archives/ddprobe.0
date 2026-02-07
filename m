Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F636279DC3
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770459234; cv=none; b=a2Kgy/sSpBjKDzW01KeK89ibBd2zHYhPY5ZwuybnT6DZwhGqz78iabJnjR4LzsRAZrQ4JEdTdsLMb4AXKv5yb9qXO7gfEKNAOB3h3OIMvgWa74IwW5SMDW3wWA1zGUtAB7TqucUZjP3pk2PcBrzzEdhvK6lTI+DjtVL6dJczIJc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770459234; c=relaxed/simple;
	bh=W+3DMw6PPc9ZZlwPf2QWtyLOqjI2AArv29pknWms/80=;
	h=To:Subject:From:Message-Id:Date; b=OlH/nVspcdlv2UGCjo/42M2naqDFj5vwufYokXMdRCJ+zlQOYguRKIHd8VTOmnxd05mkCv3qBXxOsH5+7RiGDUqQ+Onkec/flHtvhrGCj7QklbUgtIlIii8aUU5SpVPOFFR/7icdf1/ohVpEEFZQ0Pf1n4ccPyF87Em+Npw0FxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ftIW9y2N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ftIW9y2N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B01D4C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770459233;
	bh=W+3DMw6PPc9ZZlwPf2QWtyLOqjI2AArv29pknWms/80=;
	h=To:Subject:From:Date:From;
	b=ftIW9y2NPb9LPapbJZdXdWY01Yu0e2W4WDNfeEVh/JIyZanXhpeuyiXysSRyYcwch
	 r/Y9iLRtiIDsbX8ICOAxPQ/FzprNCnDRH5txQQM+NoRfWT32KAR/UIW4wvx8/9VdL4
	 Z7hHgAjGjvWVn5aHNIJVsQFSfBn4ltNEbKVxlwxAfAJX5Bq23K/1HfYWlhflUmhRxS
	 ustXhctUDt4dyGGSTReDcB6AIM+L9fgwkfRbLhoBgTuV5oc4Nv1Dsxw+7HZ688d4k4
	 UkWD5Op0IkMtWCMTwg57wV6FhjMD50073T8riIMuM1nnL6RUMyRFrlEC4vtptTlC0Q
	 hxvrfN2VzxBBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C415EE0AC4
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 10:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177045923360.27267.4976075405027329782.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee02fc5e6117e122438f7e97c211c37d3d5873eccf23616f12a054926dee306e
Date: Sat, 07 Feb 2026 10:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770459233
