Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A6E13F434
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714153343; cv=none; b=nTbIoxo55FZ+M+hSOz0wMEOZuu/yUP4jEUADJu8AsPdGlVWpxoKuutJ05SLh8p3QOJsSQiQqj5KoruXeGkmlLCqgOUqndA/qXYRnPYTxj0FmQnrYFlimZ2ZDok3tC6iDvE6lRhvp3JGBvtNUrOIhKWKQl8TADZLOQnFQi15xKKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714153343; c=relaxed/simple;
	bh=gqzk9GLI8AfuW1N0fWgLCY/vXxhJgGyDR2saJSndBTU=;
	h=To:Subject:From:Message-Id:Date; b=ol5by7t9oEtGXK4LaHcUw6mBP8Hv/1662vz0XckQIb6Jeivdr3GxHEgNCOP8ISXnfd4gcjIzkfg8zXU62w1b/N0zNkHXV91x6src6sjYXlTnPFJSn11fLcSnwsLyf2JkyVrhuSgA537QExoTlTzQpF+fGX9YI3YQ3Kco4JjfDJ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W76MXcIb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W76MXcIb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9F17C113CD
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714153342;
	bh=gqzk9GLI8AfuW1N0fWgLCY/vXxhJgGyDR2saJSndBTU=;
	h=To:Subject:From:Date:From;
	b=W76MXcIbd09/u3WZfmCTtb5ywfJ/eTVp22SVE9fDxgdO9Nm1Ce/otGYsR0mRqJbwT
	 WOJDIi3CVBqQtlsNjEmdKPYtZwnl4XAbBhOfWkMbo7v6AbMEMMnV06hMci7GLECQbk
	 UdmucmiEQZA1Gen6et6R1t2utJR230fhf9Ms4aVx/6FrRMxSXdEXSHV1aarCv4dPkw
	 wJqTYU9bJ0HP78a/br9FEyMaQq8P1Km6qapncXkjA6EFDnSm53J0m0P4PqkRYRcWht
	 SU44hrD31ZRJcW2PQfh8Qf4ikEyHx0VAsAaW/j3h4UxlFYYai1mcW6ocRNr3yekQmv
	 q/hO3+enw9ZEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB7BCC4345F
	for <ddprobe@lists.linux.dev>; Fri, 26 Apr 2024 17:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171415334282.14789.7418718229420785902.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd518207e20b08167d092961d882ff599c8ff46aaaa8a6b41a2e1d2d730fca54
Date: Fri, 26 Apr 2024 17:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714153342
