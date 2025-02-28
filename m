Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FEA82702B9
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 14:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740754735; cv=none; b=ni1m99pNHE+Dm0sCPdQZhL3ym+K8+Qr0KU5vejACu6TtJeOXlrg/gSiHD7ShNaABNAONnoofmjds/L2ca0gvXIJzGvpSaFPY+fyutrtzmezCcZ1hrmhyz6Hs96mexUqkecEa0kANXQNyvXghWGZUYTddOjazdQDgtFmEXWIcse4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740754735; c=relaxed/simple;
	bh=sQ+PBiq2Ixp/GQcGQMV+e+8Jh09MClOI47TVm7gPYIU=;
	h=To:Subject:From:Message-Id:Date; b=Dia1bhCckQOKFc3bggQbN/RsW/7NpPymY5szy/hYt6/uwqGnViWXIXgBN47gMy/kG116pkXG7GNRE9NTqzlqMl7ICKt/cHjYPuGYCGDQjZ9Q7XyDAvytap/Tl6deln7huJ00RhsUnDYat37fjgj4a1VJL04hFT6BfColW4MlUMM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gpM6WmZW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gpM6WmZW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A329EC4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 14:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740754733;
	bh=sQ+PBiq2Ixp/GQcGQMV+e+8Jh09MClOI47TVm7gPYIU=;
	h=To:Subject:From:Date:From;
	b=gpM6WmZWOz7t5HCP0TomsBFGKpLh9WeCPdyTWlAfnB9DOIxXvJO3xuDfF23Qs0rOa
	 trzHSQtNhYVBZJ1up9C3J4T2q4YGni/mKTI/Nxzrc2iKQ4YUSY7VLhtcHngdxlULju
	 by3UMN2X37G3+CSvpTjbj/zWTck+jFSouyHvFvgGhqI4GfHeB1UcO1/bkcrNi/VwFG
	 V+1wjfe0JQVI4nI5S1XK1sWlOXTdCpha8rzNZ7NwVhOzpsrGj0QElSe7LFR60mVyug
	 +L3K/YN5sI5ft3+Fo7Fj/NnrnBh5UY3BJr97WMp2l0Y46cQ3nCJgZ49ekPxCOtUqP0
	 tX0nCGregUH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92720C19776
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 14:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174075473359.16850.9315891850504650292.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b359e0af5ef8360e60bda9b9d48f9df9925a030f3c1eee5f146957cf41e6a17d
Date: Fri, 28 Feb 2025 14:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740754733
