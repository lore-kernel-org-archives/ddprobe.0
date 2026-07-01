Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CA013F7892
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:58:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782899914; cv=none; b=CI/TjUrfnANIhJWiYv291zZLYmW5/9Fv3FzHrqjrbsHU6ZUClBNwcRVgD7vntjaSp2YrIy8owNgAW1e0DyJ0tsoStic11eNC+9LIh/eG6cqiKvpQ7l/t+Et8VFK6w5+T3tfuirlWVSGNASHNnzecn4uQixhb0LQpWRASs+5qXNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782899914; c=relaxed/simple;
	bh=xXyJuDSiHw1nk7XAU7TPBrKivcTFewTgQ4n0TO8ljZQ=;
	h=To:Subject:From:Message-Id:Date; b=BrSTBg1MMo8OxY0vkyE/YICIk9m4qp3UuGagSoEDY+ATNtFDa7nVoj7I9PgS5PgP1PtMcJFZ0JPGshQBF2zKM09IVPXZSrVyIpEAmeJQUwgcaE9HGvkAHTtDwsMmfBPD5g4D5ywH2NIMpi9iWu5ZpPwPdi8fJalONl0V/e2meqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ahEsSIUx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ahEsSIUx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFFBBC2BCB8
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782899913;
	bh=xXyJuDSiHw1nk7XAU7TPBrKivcTFewTgQ4n0TO8ljZQ=;
	h=To:Subject:From:Date:From;
	b=ahEsSIUx+tAPKRqdy3TdvAlovMXFWTTrVw31UY+7YiW38up0ymlvw+0Q0jzFL7UQw
	 L7a+j/+q/urTSaVl1tIKu0yRY0M7Dz6LfHu/nq8orENrv8qspoNL9ESyvgdaCFLdyS
	 vpey4vecDd3gbecnkmw3tGWgc0yRLzkWY3DpN0dgAehpDnJH/ykkNpHo1aQHjRRyDe
	 9sUYkri/QUQop4IROi8VpyQvBI/rdgnf4jgVys5Q7IZrfiHYbDiQkuTC2qMGfakrC+
	 L3rgDJWdRuf2+lzU8uSCgIeIX3EK9o/91kKW8SmdbBCRQXThs7Hi81dHO1KDLkQTKv
	 a044fPQ0Fy+yA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A843AC43458
	for <ddprobe@lists.linux.dev>; Wed,  1 Jul 2026 09:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178289991368.28899.7118021280617525242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d577d346e1ae8b8345389b04da915762bf44167523b650fcaa09d872b7f49bd
Date: Wed, 01 Jul 2026 09:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782899913
