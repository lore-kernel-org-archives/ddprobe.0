Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DAEE43B3F5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788234034; cv=none; b=bHcrQZbG24UP+evtAM6Oxz/pd8KESAksr7p2SHa5OWnRy1xULncrPiE9j9m8tnQjvZRKfxhSQT54Q4XaS6pOqW+EisXWm9NIqt5WR5rzpNz9p2Vflg5KtzWW2Cw2X8fNtJXuVoD/hv8zhwwJMs/UYVCZGXfJrqoAA+gp6QhfVKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788234034; c=relaxed/simple;
	bh=3DrjOO0gArYiF1xBb3wl4dADpm7t4NCC6Wh8yMu6alo=;
	h=To:Subject:From:Message-Id:Date; b=j31f3u36YtjMtGaEVQpAbfBiC/eth+3M8QMcu9iyaWGsxlGtGyHMsSx5EAJCWtVL7Gsdw+LaziQDZ+NseD6nrNRVa73y2tKW5q8R2QzLjeuKUY9RfF+2lVZ1EdtoBmxoXwToKiBtZibIWeZ1PtzJUU9gKTB0OGnj17JGH0UwqdA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IkyWgslx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IkyWgslx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDE7DC2BCF5
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788234033;
	bh=3DrjOO0gArYiF1xBb3wl4dADpm7t4NCC6Wh8yMu6alo=;
	h=To:Subject:From:Date:From;
	b=IkyWgslxATZu5W7FTwf6ND+tNrvrqTrE8JZcTNicL3ANUMSKs1CyEY9YUMYR+Q/di
	 8qp0gz8kc99ZsTasTcN8gXoFXVdbBHryo1xeM0a+7uldxnUDDGqJMQyk2cEWa2iAw3
	 ohv6n3MTyXFJpUzF8M9x+ZGLLu+1vDkVN+RZPwe0SOV7SKqblgxLGakztA/TPGZGj/
	 NbUIKY8iivziURi90zC+BROCqpVLK3UDj4tE45UbmNaWjhCjDX29/jTDlAeL1F/xk5
	 y0VxvXXTNg3cg/iDl9+pupc/eHMA9AuoiTHWHndX8ivjF2BdrE5LQW7pL0gPBQp83I
	 Lyy+9f8w7j+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA2A0C61DE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Sep 2026 03:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178823403368.30696.10840996656659072527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: deff811a5594bc692a1c80470e90d8bf44decb64d17a6abcb008d365ac1d0657
Date: Tue, 01 Sep 2026 03:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788234033
