Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 447FB142E8F
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720131923; cv=none; b=HJrqT9HSs17Raf1Lm1c+s+FmX/mmjpWuydfEAguXn2R7Hped+LpJTWSFfebFfTDXcEOg+Z0bDXJA+GciFItQzcc16YB6acV+9azr78+ACiDSLDYIfzJDpNYdbqWBY6twOcDDfTuvIc8/pEHGfWN5Gof94Us+rXF+oZ1CxPxdxn4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720131923; c=relaxed/simple;
	bh=sNJ6QX9cdZAoXSB1jJUVQN5YykyLbOsR6Jgp66CAER4=;
	h=To:Subject:From:Message-Id:Date; b=QUj9xkZ31dX0V1kVKVoduKs67V7AlrIw7bU1Gxp0E1xq4i4aaQzI7SB/NlMH6MpsPOBJSlO39aSAZ3gq9Rk1lV26xyZq2WKNVV6wPdcy1EAuqF3txVGQM1KX/1xPU1df34IcRLET4VR8P/I57k+Np9/bpJkcO5QpjcWJpTIcWos=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TCToqfpG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TCToqfpG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8403C4AF0B
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720131922;
	bh=sNJ6QX9cdZAoXSB1jJUVQN5YykyLbOsR6Jgp66CAER4=;
	h=To:Subject:From:Date:From;
	b=TCToqfpGXyab33RfQXZPAOeklqIx2ZngjPSoOmZwH/jfTYYoeIltuUCN7vlkZ1c45
	 gNzT1L/NsBY/42+TiyBAeXdKQI02Oqhazg3MZ/vv8u3oxztsGqiCeuooCArqqr88ng
	 5DwjJsfZIYG8cIM3gFQGki/MtPuinXl4dlGP29mXXurfRzBmI/Em3OkWGSlSrcOlFP
	 bAF+qy/gLZiNwa0gE3DVeLs1fLFx+ruydw/rgAfk20RezKk2Is2ACEuBlQU8NO0USP
	 mUB8LmftFTZ7ZaIUqcmoMp1cNpuv2LZDyO/C6n24l7Cpqd6uJLpbGwTuMZHOb/DdX8
	 dK6fPQY0rmuig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C40A5C30653
	for <ddprobe@lists.linux.dev>; Thu,  4 Jul 2024 22:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172013192277.1473.16887715581645429910.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e3bf2e109028e7e408a5eb5d9f8065f883e5c29fee2e7a184136b2a0c6a61c4
Date: Thu, 04 Jul 2024 22:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720131922
