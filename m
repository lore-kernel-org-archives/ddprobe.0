Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39F1D3112B7
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766036034; cv=none; b=ElFgGenbwcXPYYa+JVptLH5UULFOsLaQ0/rCChTfhxEbYzb4VRbV9EpI6Pc00aZ+J/I/Q1opNf5hyDWJuB6tSF6Z657AOsV+cfWI9ZG6/q81wFxkZAbll3+x1uVZm58jEFSTbG8IsWSk2rJTVDw96rmC41l3IwzojrLN1+yzyLg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766036034; c=relaxed/simple;
	bh=3Njcx7Tg4wdr18H378NxaBD1TJPaI8U/S/ktmDB5i+Q=;
	h=To:Subject:From:Message-Id:Date; b=WeBaodoVuvquAywuHsdLH3JdDF0qoeXn3nlJd15Jooe3P1CV+A4zlk3wlLGOhnOBNBSbILWt26xUDB8Dv44PwXuyRUJTyBIGHXwm5MUZXR+a3h6Fu5XcHytPU5K35IusNklyB/G2gnOk/msGD4yPr9730dSTcJNQq2OGPAZFw3M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KytQSLhh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KytQSLhh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABFA3C4CEFB
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766036033;
	bh=3Njcx7Tg4wdr18H378NxaBD1TJPaI8U/S/ktmDB5i+Q=;
	h=To:Subject:From:Date:From;
	b=KytQSLhhNxnoZKoO1uU+dS4qSojeJLf0vwtHTW7UMU+PS4WPN49DfYajeLX+v3Cvo
	 mYH6qkO128+8mW/LMKu0EELbzXXqp1qm6x470lO8ljtsDV5TVpLu8pWPi6Rq7XQl9X
	 m7urUi/JcSnfpYrrgydGfCvt8GAO0EfB041IqMiFYOnqtCiIg8UKTEFLaWd3A3HbmB
	 XrQETLpmpiDSS2anj84MpfCqD2LuykRVG0bYate3URrcAExeT71uvIu0T4/j+C9oOW
	 2QN1VZJ3d8i4K7Gl+2kBA7hU5KVN/c9GEzeZ5C5imYgNXOBRY/viKLOcSnfip5E2Iw
	 ShadDYooyYzTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FF8D66BB3
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176603603359.6040.2334347849949709893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb53d4b38afb52627aece0048d5ebbe542e529f448d56c70173446d07d45cab1
Date: Thu, 18 Dec 2025 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766036033
