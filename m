Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CFC11E528
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721915754; cv=none; b=Q11V5CGDYqLEFIY2DNrORAkdDa/6eRbzhOgN8iePZBWXrAVbUEoUPSOFbiR3fER3uj7mlDEWb66QU+RXUwS4yRYOgB7NxivC9oApwr52wglMbX/PL+cV40TedssYbrTaGc6Dst9R7dSeDJg9n94nfzQwoqkIGSSp41nPk+ZP00A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721915754; c=relaxed/simple;
	bh=I0XqtJhezqQWRiNZrNgKgv7sp6R+cBbIB0sPd5Fayug=;
	h=To:Subject:From:Message-Id:Date; b=ADhs3q6spQpkapKyMlUy/Ml8JLdg1nwumBdsUHNH0lhUlek7iWk0O2XktQ7jK3O3arVZzE1vNetbjiAK+Ium6LjhbpquM21mag8oDwTFcjjLLDzlWRDNqYnNYJGUsQNwYJDP2sN+z9pmbLU4HsZ5UbSDJQ6FCzNN+837J2tQE0U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Eo1q3G6F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Eo1q3G6F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4FF0C116B1
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721915753;
	bh=I0XqtJhezqQWRiNZrNgKgv7sp6R+cBbIB0sPd5Fayug=;
	h=To:Subject:From:Date:From;
	b=Eo1q3G6FYcutCofOIMDUKXzZS5tCWwBoLORzMWw7g3EoacXPco5Ke197EeRMTs8vH
	 HwToGxx8Xqq1XnT8uwuCz9Mcwls/h+6vyOktC5yml+fHka123SbyN2kVxcPee8yByQ
	 /S+Rf82lABtIgB5FIp4T4KZCAnxHmP2jgnlpv2Q6TKUxNakGxaSGBoAMEN61br5WeP
	 CHeB/CpujA3pSNilSMEUVdTq0rr9caotkdJQKQeg3iTWAXviUg14XMnUH6FCXCMz4S
	 813PALCfad0xSE8lD7PZIwDECYQAFZFfun//fDJ28fZH8UC/rx9Pz3RzCoZI7Owwvv
	 MHLMlAzyDIybw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93230C3DA49
	for <ddprobe@lists.linux.dev>; Thu, 25 Jul 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172191575359.28258.15644792718877666487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf1e29cab46bca916190f673f06adc689f59017a7d011a3a6aa12bfa697ab185
Date: Thu, 25 Jul 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721915753
