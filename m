Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EB5E33033E8
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774086294; cv=none; b=K5vP7Xt1y59uDt3YB2ZujtsE6w1F5FzJHK67WlLNxJor76JETJMitxHa9EewxSA+4w5eeUP8uA/fJWZG1VXlbG0TzWrtQRkE0JtuI+pOesWETvLBhyAPzEx4iB6Q1wJ2+SW0n2/Vv2zKxSD2IsPNAO4PbwmvVz0Y3Zy0fJdaR1c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774086294; c=relaxed/simple;
	bh=X2Jl4YsfGmQkJB3GIN64ZGWQpcAbw5i88+E2sNk8y9Y=;
	h=To:Subject:From:Message-Id:Date; b=fTwZWsdZJbmz9g7BFIjceCYsoJb8qsxDtlBGCvSwkU2Zt1fLK5Hv18DntvSTAORTdEYJ47MUE1FG5BnE1IhREatYuOUzjWq0W8YMjjbPxskCGCSA+H4ps0zCZKBj2Y1Hm4cFnx1ysSlcK1GGmjccL6kwIs5GxtB01W+W8dUl++4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LHlu/wjk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LHlu/wjk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C536C19421
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774086293;
	bh=X2Jl4YsfGmQkJB3GIN64ZGWQpcAbw5i88+E2sNk8y9Y=;
	h=To:Subject:From:Date:From;
	b=LHlu/wjk7hfSFktg5OfAYYY3iqS/0DOXhA2N30of1su2Oq5mh/ng6qn7PQPkvB+JO
	 T06zWMhGw0HgfANWTGjoJeEGg6Hds9pg2hY39mTTvrqFy82QH0d8VtUvyuGzqc+bsA
	 F6TGltRtyyoqGJ1FuHWFQhbAyYtjS2BhRFRXM7UHkGL72h2wbXbAu380ifszPt5WEO
	 KF0NfsgGAUNq1oam8k8VA44MMFSXVw0O8T/Pkd6BU2lB2D3TH71QY1f8xYf/fjPeu+
	 l0VGzcgDrkZjFeokvr2VMcm3JI/QgpvLwuBMKJgVFos0SaJmb6SP7hI/As0qgVjVen
	 OEjX08JtRyhaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED8A1094463
	for <ddprobe@lists.linux.dev>; Sat, 21 Mar 2026 09:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177408629357.15997.11275329351568011967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e622ce56d893689c63e28b82f34eeee9e844e704b818f1eee0cfc2d97757eeb
Date: Sat, 21 Mar 2026 09:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774086293
