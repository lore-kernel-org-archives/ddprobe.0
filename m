Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 061C1823A7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706632697; cv=none; b=UD72xvkOSZPa+YdQMSCTyiTiUa1iy+u2w8Kv0APCZfScR/UXnsYYoqJAc2CfzsSdNxo8msn6Z1GGdBpDOo2jdobu3YRYJLGW6gDsvGeoYdFwl/k2HtxyORdpU9XfBfgVGErW9bCsClvNctB4ERx+Ud6WUdXdsbDH3DD1YEh3GY8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706632697; c=relaxed/simple;
	bh=AqyaagKZHoidbd7aJaZOqcOAP/9898XlonWfmgfV9lc=;
	h=To:Subject:From:Message-Id:Date; b=G/ccT7AFKCW7lnalfVNmjdUJ5QZcTVDQc82LihHRshTKrszhNmNQ1fM3pw6aLzC9+lQE1XGSV9TvN6b5px/WClOD0ucm9vG8JOyCnXurZPMxGYvVcghmrdCx0UIkDeUn0/GijI0C+XByAO+/lPmF7b5LgxARyCNeQ0dillz+LOU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZRLXSuUC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZRLXSuUC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7A407C433C7
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706632696;
	bh=AqyaagKZHoidbd7aJaZOqcOAP/9898XlonWfmgfV9lc=;
	h=To:Subject:From:Date:From;
	b=ZRLXSuUCpqfc9W8XP1sqwz4bfhQZON7CqJqQaO429hGONNdniSNn+DpUfIMYFxygC
	 DH/6rV8F87BMMuNBJoFRvlJq/f2VUyULYyEpL4j2e6K4h9VJCdRazxBf56Btybp0/H
	 cWFqfGxi3PqKYeY0jakYT+yshlGOp7CyHUQAxJ0csW3Kc+yfigWtF5Va/VyUNWP4M1
	 lrKU2EKhPgWY1F8lT8znoKvHarEE5YYcVbvqoN/A59gPfW9m1/7JCST6Rz9oNQ87F2
	 325QAJCnACLC52dM74G4ZaKUUWiWKJh3QyE84vy8m7GcPASZnObgieAIqlRerm0zkM
	 oJRtC3FZ4O2uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 619FCC46CD2
	for <ddprobe@lists.linux.dev>; Tue, 30 Jan 2024 16:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170663269639.696.14292853822309548992.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57c620386c5acbd4ef5a4b3e2ba08a465c44bb686af000d94ff67caf9c2f5360
Date: Tue, 30 Jan 2024 16:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706632696
