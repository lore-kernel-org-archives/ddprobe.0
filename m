Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 300D61E47CA
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760476194; cv=none; b=gy5k+l2U53cfql4hGjD6pNjRrXSqW+6b7zxKz3sOhnwqhv2vycKJSzk1+IU1DUD/nPsWGGpD211ShGpoJwb6q3Vr2H+9ft8aQkdPW7PKyfvvTmuFR/p5+HWUbLcQ/D9g9KjvTimWrS2rLmwKZHiHvjjqq0vuTZAIkCqFq46UJMA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760476194; c=relaxed/simple;
	bh=+xR96SzCfVWlyteCyF3Sbl2m2n3yGGiaLIyHHvBXXHg=;
	h=To:Subject:From:Message-Id:Date; b=FFOVVX9QwZsdOBLXzXVW1+57WAuLMXIAxFFEl0vK6GaxxUX1mWXZPuq0xErk47QTUaN0KL6RHcCJm0t16jzhoTKTp0Py/dNH1kAPzTC2uUEPM46XFLWIJcno2h0RQgxO/1snBGlBTUbH0ZdI8utOSHNprrRn3wSLyBWENv6bpms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sx7RiKIq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sx7RiKIq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F19C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760476193;
	bh=+xR96SzCfVWlyteCyF3Sbl2m2n3yGGiaLIyHHvBXXHg=;
	h=To:Subject:From:Date:From;
	b=Sx7RiKIqb+VuQVhBvKQoDIPxCRd3u3s4ZOp4wC/szhusFFBVQUfu/7r5wugBvWbI6
	 8pRugcwWcQIR3lYoAT0FyQcSD+QQz938BxdLDkKPXBfrDJaaool82Xj2XiVwetreFY
	 q7Un666XIG47VxMCULcr+GHg49Mj55uxd9dY6Bjm+6uypMmhglOTuX1lA5W2BrB6Vd
	 GRWbwmd0H7S5W85mY/lVfroBFMXLaZPKv9XRizJaNOOZBiVpY/HzmdH0sj5Z566PNc
	 YDKI6stc5XpeaZQjhtd95PvGflS11Tf9vDu+2lig63fM+6H4VJU+gGfuhJ7Xr+xW/5
	 BNRLCyJBHg4DQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9266CCCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176047619357.14974.7695525459002410685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7be82f154d9c817a82a6cbbd3cea96e10ec010c09acfad1a463b2a7332189e44
Date: Tue, 14 Oct 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760476193
