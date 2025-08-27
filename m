Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18FC21DB12E
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756301994; cv=none; b=ERKy3EC3mRPBu22Pa83Pd/ZdISrChjV+5Li90Yzgj4CAHvkFLcQ42TuTS/bT1vP58o6fr1YzlyXDirBhVTGqN5PzaV4EhPWTyyxed5f/L8nKHzoZ/gZDKMJRf+fVlInvD9IwK52i/HeCAxcYnP+LWg22q77wg67YhN9xIRH3QlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756301994; c=relaxed/simple;
	bh=h8h9+hg8966LRZPVvYHg2OshK8UtkPI41JfHWLjkqbQ=;
	h=To:Subject:From:Message-Id:Date; b=XXOwz4aZQzTATQ0cM30rISobeMo0KHQIGtgWfiPT8Wg1K7VW3KhuPRBCdVhgeVSCBOt6tO1YMu0MmdHPtRZpFldA1nsN+p8Sxv350GtyfSskrs9XylAA5ZlcUkQL66BncbXO82Ks1aRtEFmhvJuQZuQkF1KfP1YC5yx7eJvbJP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6V8OCk+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6V8OCk+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF6D0C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756301993;
	bh=h8h9+hg8966LRZPVvYHg2OshK8UtkPI41JfHWLjkqbQ=;
	h=To:Subject:From:Date:From;
	b=E6V8OCk+9rc0YiNjlB0/3cJvX5ydtHqIRgp590Zrvocy44ey5jSMezRvg4s94UEx3
	 zEKk05bKMBXa5y/UV2JsIf04gd4WTsUNE9uG7t2eCxAkmdcXmsSAly/vq4c7aK/npG
	 28oeT5NsEx6xtRfKyWufxmqi/9vAvUAMmosVlfbdhDkNf04UqNv3ofnqbD4225V0oz
	 lh7ajeAfdxl5btfLA35okcO0WBMEAm9euCgfeRe7AKqtSiKHmOoe/KM42LdKqoKNjS
	 S2LAeR4jWqKAOo0B+Ifr5H1rwD1UJu3iTanzVbN0zkymjiAt5HslhHLTFvh83JoYX5
	 /qf2GuymA1iOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED38CA0FED
	for <ddprobe@lists.linux.dev>; Wed, 27 Aug 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175630199357.5501.1182430171209127636.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c97f693baf58c7d841471a3aec216cec396516c9cc6f51429e524ea56571841e
Date: Wed, 27 Aug 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756301993
