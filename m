Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D0A51DE4E5
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 08:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740211734; cv=none; b=EaG9i0zrZF6KGX5ak1Mbd0g3nvtg7KFLnw7njI+umkVfBLXLtQ1Uws/PF8XlPis87vDghxJleVAxWmSkxxtRyu+HiX+UZUnsM8GIRybDTofIHp/D0Cn5C6foOaH0nu3U5DYAfwx5ox+GXcKJYcG3bYy7rB1W/HTSwZWTIMi97OM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740211734; c=relaxed/simple;
	bh=Dpsuu6KNoGou/OCrEmr3AOOrxswt4rtJ6vc+3YofMbA=;
	h=To:Subject:From:Message-Id:Date; b=gF1fL5ig+4dFl9DkxzPS5B3eOMdO4coA8wbladhrCvd0AxR1LZMMqWTtXK4rR6qPNPVdLzttk1SiZKt6GKZKoswEHmMqj2iyOo7ZTBPueLoywCMGut0yWdZfS2S8pvfHAjgBduEOQvrTono/zsvqsVb3OtpWJIjJZyUFlmpa/W0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r4Q9EOYS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r4Q9EOYS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC79C4CEE4
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 08:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740211733;
	bh=Dpsuu6KNoGou/OCrEmr3AOOrxswt4rtJ6vc+3YofMbA=;
	h=To:Subject:From:Date:From;
	b=r4Q9EOYS9OXR2vmoEUWImvNnVu6/eYzURb3Br+G2EipEQUx0JzPAhlCpiiKY1qZR1
	 qCg3Dt2svHLxL0lU405vNtWcTtrYTjWHtQqD80jcq+5DYSowr45Ev59cilcFta5ST7
	 51jykUwcIDGmcscP9SQMlL5ng0Y6KOafFF2NLtGcynmBOKAZpRkwM/GVJutoK+QWUI
	 jTC/texVp4fmym7JtHpKNwhYjfRSDW6b8kuFVstTKkqyEwtHcSzRtj7YE/roxoF3RB
	 cm6aGIAyAnR3/3vsRsovXE+unyjNPw+PkpWANOQk2/ZAk8NBEGDHyGZzSp7eHDJ0w7
	 voy80ndPyJ+MA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B614C021B2
	for <ddprobe@lists.linux.dev>; Sat, 22 Feb 2025 08:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174021173360.6092.10726988751956906308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7725d7512afe72046a3542db272cdb43044333466dc84797d2ce7ca52921c12
Date: Sat, 22 Feb 2025 08:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740211733
