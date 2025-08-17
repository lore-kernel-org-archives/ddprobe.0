Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2815D4438B
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755475194; cv=none; b=o/X7RC9YAxE13sJ2oE5wHgQJsYpfJF6y8zjjwoRrBk1Pw9noT8siFRrfNLbjiohMX3nJWhUivIDMsTfMh7HEsby6jer7LzFg9Zg4sLxttqDUKuorIJWl15o0eaQ+bIilMC5NiIpkPdZCvb8YeakCU2vVYEGZ+P3Ocy2D47MP6aA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755475194; c=relaxed/simple;
	bh=skeqVywZOS/lI+ZMa8JAQaABvUmBXXA9YN/S1iFCe3Y=;
	h=To:Subject:From:Message-Id:Date; b=tXIF73e3fmVXcFqmp5kV4RgBQGDnD8ys5VEv+jcyuMixH4AKC8aaxFHd7GZ4HhIWR5rm7dm59ly3VmsJWA0hXz1FzEC3vLI6lxOtK+ZV0ZUh27qOcfQMLiJ1VKp0a/sCcMylnxlNXah3ahgzLIm+AwSVrCy1n12NsxqMFpHGCZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V3WJHtKM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V3WJHtKM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC517C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755475193;
	bh=skeqVywZOS/lI+ZMa8JAQaABvUmBXXA9YN/S1iFCe3Y=;
	h=To:Subject:From:Date:From;
	b=V3WJHtKM1iIK7oN/rsrPhigqczvD8jOJMLZqafExFNkXb/TUWRiBaLBsKFeyxTmvk
	 tGWuzSVKc5eSi6agfmdyucFGz2DhY6K4GMsVyRg1BCo6wBZW4cyXdu7ODvPNi7Rbn5
	 kH7VoF4oJSvQ29/mLr5CfHHX7ZwaNJshtNFu1/3BKdbAwN7h/zdTsRoJuakxsx6VeM
	 a4pAVo/yvz5SJQjmxoUl+Hj+snV9oVuxbfZlgSR5NLpdcWcEiyJ8ZdDYjQ+8hptIma
	 S/GNoucTgReh1fwNHuXeTUVi6owIC9nJ3XZsh8pioe45+8fGTW8nPKCRGQynaZzcEj
	 j2oifEfx18U7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9463ECA0EE4
	for <ddprobe@lists.linux.dev>; Sun, 17 Aug 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175547519357.21514.17224052180391594620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c0705e28296b2bd159358962f0cb7314988e2d870ab0e3e8f21f2c1b6aa5fb8
Date: Sun, 17 Aug 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755475193
