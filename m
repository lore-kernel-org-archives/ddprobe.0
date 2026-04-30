Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0503B3DE43D
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777560454; cv=none; b=hbQKxHsWNwo55exiqtzvQ7dlf4BEvx7FN17EdD5xJWf0Izvs1IhNRcgyjLhDJsyyyFdTJDZvaOMJSdPuB9xEpDAC9cPAOq+XNjDgRsBfnF3wWs7HucOe1Y+JUhucQH/p2OnU0/YmyhRM63nYOjEY0YrlBQDVB2sMKDMBjaPfeM8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777560454; c=relaxed/simple;
	bh=41Ugw0hr8cOmylWmahdbwJ80Hb+0SB/JadcFKVJWF98=;
	h=To:Subject:From:Message-Id:Date; b=lOm6GFKuNV6icQj53U1valSQv2wVZGNhcjTZdgZUUCxZ0DpsM7Oa2TonpTu3Qa927ZVXNUr5vaM2yBfV7o0ZTUXxDhAyOsxIPoymcWtfpzNJnjxAd28uz3J+9alK+x0b/PvTbhajR3rHrtGikFKrf/VRMsDFlmMzwHQvEQJD02A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LYASux3A; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LYASux3A"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE65FC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777560453;
	bh=41Ugw0hr8cOmylWmahdbwJ80Hb+0SB/JadcFKVJWF98=;
	h=To:Subject:From:Date:From;
	b=LYASux3AWjjjhzaNJhRFhbLISYoZvLV4u3VtR0L2Scu/onEOvNpz7YjIsUvevOb53
	 u6jzKl0PHWTOAGKqXkcOoQ8QsNxiiogDYnR2DzV7pdh63nbLdDl/snaIipLUrz4FK9
	 6E5MVXu64SeZ3mhRaBa/V82J3HlEbl5gdxn5UO1XthEQp3t7NUn8DtLFg7Sl8saPGC
	 AM0UwwWpbO/USNgCTjuxKu+6UgJ4xYQrtbjiJRRzpfNJiO1/jjf9/aCY2RLVbShZEh
	 BFQvd7A81itTvdwnKFuA9d7Ocj6hXdiON/hgwX/xBTQqzM8vu/EEhKHY7OsBhIw0sd
	 kobvPuK81qh/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B0402FF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756045368.3303.3040516885592389927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8abc0e75ca5eeb4adfe0145919438b9ad9b22db206777c11562d6647a52d35e5
Date: Thu, 30 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777560453
