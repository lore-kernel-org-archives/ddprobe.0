Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7494737C92E
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778479834; cv=none; b=N23IiAM4q2dQL7Q8sZiJYbfZ2OgMYUJdskzKa6gtQChAdwg67p78Cttd/CyrBq14NzYOxrh+TN13eGrLthktKti3IhHGg3Q6fpBL+mHnTHOq05BMkgaW6rDyRSj6Az5WCYgId1YAwqV3J7ybuq6+N/PQkQj43x8fHXws8IpCz84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778479834; c=relaxed/simple;
	bh=mlRFUUOcm4uwBWF50kWTtSwrh+H53rpsoX5iAAnM0d8=;
	h=To:Subject:From:Message-Id:Date; b=cdFIORcTz2Cg6O/v9CuLJ8JhfjfQO4fpIxBYGGIKq4t+9TmrZMWjHdb50CZCvYbM88gaUaeZkw3UAfdzYF3McA/p1xvVtNet/gBtwLlFB/hhG5J/HDwwVM0adyvAZv9eMwImWcXBOiJBy/RN2SLk/uVWtZG46vGi1pQFnhuddxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXMlfY/r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXMlfY/r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB0A5C2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778479833;
	bh=mlRFUUOcm4uwBWF50kWTtSwrh+H53rpsoX5iAAnM0d8=;
	h=To:Subject:From:Date:From;
	b=QXMlfY/rYzf5t7GeoT6s2oA8T0uhEzS1QU2mut4ZX6UXtolnYDr9Qk6i7oNcx+EkR
	 NdSZMB7ZaJBJSNKl3Ife2QpX1ZiRpKmNwx0bu4QuUnDwCQ5a/GKPHWMxtsmviL2zyr
	 fwhZJ4tYiEL7VfkCTPX5TuDMN+fSLMNxRFxaebMvWIuUTQ5sB/Q/i4ZeEeNSDiCo0y
	 pD2+5RCUgxd9KPzAw8Rdy43r9uAEfST9cHkd+8kyRrfU/KtoAOaR9wb8IHX+16JDQv
	 DDetPRKYpr/jZ9nGeTXAWXLUDjKRPmva2JHR1GoBhsvKELBLiGpYm8o7L0BTsJFQ/H
	 U8FJeZiyxFUPw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA367CD37AC
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 06:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177847983368.25436.10538456418194224489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dcf08e5adc8d7b49015c3ee03b333e2275b65e67177593e05c718a64bf212895
Date: Mon, 11 May 2026 06:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778479833
