Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42564427FB7
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786552834; cv=none; b=mb9xfj6XtlnQ1zOcOBvWlL0hVbkFKtYv1qk1Bl+Xl5IYpRTFRT/Lh3OveWdyi0fwEafnzkFxqjbeG1pHQHHKXTmfxdAdkPbwk+QgqcJmRgtifX4yFmuykgoK9gGsCwT2hoa7w6EQjwgTnVpjSv0nlvbOaPyE9YIBi+BQSwUjHo0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786552834; c=relaxed/simple;
	bh=BBP2JQ1i1cciA3KP7kcYCFHvIHftu4+eCDRoWdiwGuc=;
	h=To:Subject:From:Message-Id:Date; b=t/QAnJO8gpwSM/cg9v8Y+KTwPgdx8mWRFgdMYM2+PKiT6rU8A3hSF3Tj68Hac7yrHoES9l/85n9QaH4HiNo4M3EkUWlZAatzeTTmpal9VOlBtI7WSvavUpg+PHE2YxLV8HIX2rAyInPQARJ3tOT0pU8rEO2sy23MbRjhLjQ/oUI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KtOzE7VL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KtOzE7VL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5AEBC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786552833;
	bh=BBP2JQ1i1cciA3KP7kcYCFHvIHftu4+eCDRoWdiwGuc=;
	h=To:Subject:From:Date:From;
	b=KtOzE7VLinBnfohrIH9LWbT+tQ8DY9U+KAwMnCq+IRGWPVriwIbGdOJNVCg+5WcXP
	 bWb/QvJshHbLvioE/YZyWtSGzkbBt97Lv4SDa82hokBkj+zZ4SV54RvMHimkMyk25G
	 6C4wRyN+z2tuZg/AbS5LK5DWZXtn1SV+pughO3eItUt57SDFJEaSAaoEnniE91dpsn
	 x6+hO9Uemg4bLylElQSmT6wIUREQjMCADYaNIJit3EhGyDyFHCyaTFPhiD0y7UXGJw
	 8L7EeiJm+ODRfKMbcvUKRV4Is/Cpr0oY8KlwAnnyy8iVPHJ+c73zKK4woUwzz+hRtl
	 dufc6DbJSLd/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB573C5B56A
	for <ddprobe@lists.linux.dev>; Wed, 12 Aug 2026 16:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178655283369.1821.8509838520088506892.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5f75da83acf59aeb912bbed9604708f21573408135872fea7e729b3f6a05593
Date: Wed, 12 Aug 2026 16:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786552833
