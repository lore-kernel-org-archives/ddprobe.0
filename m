Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E0FB0322557
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756210795; cv=none; b=PKaoT8A1ynCIxzeM+/gkAJ+6LFpcThT6MURWfxpFDHgmij4a5+w+3B2JlnwmFCBQew1fFDGd7fPU/tQjqMZ627Uo9az7AZXTOhaIvNHy1Lu6jwGvHIhMDriFzKzsglK/GeEu5Z7g9wN9lUBYzvcfmWSNaxuxJoKN2iQ6p1ofP7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756210795; c=relaxed/simple;
	bh=vScBzGxfds29dTrIWoBRqsYeyIaglW/uzlQQqgJxwl4=;
	h=To:Subject:From:Message-Id:Date; b=Uvz7k4sBFEXMUe8Jwr8EorzapttGwGkuC+L+er9Wl45DJGgZKmmrco8uHUsIL0CqNn46M/cwKUUZKUCm2tIAPuSqLa5h9M6cQi09Q1y4Qmxnu5+LvLu99+sXnc05Ix8cygcm760ys4jjnxgoEahWmpD6NlOJ9K8QzRPHBOexa3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZI7t/S5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZI7t/S5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A10C6C113CF
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756210793;
	bh=vScBzGxfds29dTrIWoBRqsYeyIaglW/uzlQQqgJxwl4=;
	h=To:Subject:From:Date:From;
	b=ZI7t/S5iKpT2sBckHj0MTnY/xG4GugnsIYxRtPqgbzkuVwALNgKnVQRJM9gebIb9O
	 nZnpFFpFgnwGJSwcfXsAcC5M60EUcKe9IV1ewA9xcV6rUfRtCW9t42P5l50PM5RhNz
	 Ltp8UweS9J5JOgre+PtPdrFZXkVkWPKuoFt7W1WXjJSdMZP8U5Dt8PZXtMqK9EnHc+
	 MlJgZwIa6CHY07N/+1f2V46eJwBga+oZmBL/pCZpTUDUgcbdMmoGI4Xzgoi6JeU/+1
	 a7L5cbBunjBHXOOvpkhAPZa8SR3vnwlUmiaaW+buzfTT+nI+OgSvYLqbTHNiAO36si
	 6WKGIa7tPTpxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F3FCCA0EFA
	for <ddprobe@lists.linux.dev>; Tue, 26 Aug 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175621079357.19521.11125963130941465245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03b92c0b5654e4274cf6ed0619ea740aa7d07c34918aed076767c5a5bccdcee4
Date: Tue, 26 Aug 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756210793
