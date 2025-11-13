Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 221E41F03FB
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762994994; cv=none; b=DNVg+D8xuRVvYOU3AHyQZbpWsSbDVjYtRUqXK12aENcWXneTJ/x+gObKCBs4mwHb9sYgJ7fdHcBpSAPc2SW0tuUPlB65UNTntL6oAxc4Uwr4jbQQz9IqrqXBETULzOFUxD99sYr5x5lr5jvj7Ho64/K6PiGwO5FOYFAomAyJLxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762994994; c=relaxed/simple;
	bh=dEyM0J3TP/lHs+P1RWpbmKNh0sDiCV8CO4gc2YZhRIE=;
	h=To:Subject:From:Message-Id:Date; b=AQArPj/MzArXXerjfJMORHhz9EHRfNiwuc6ukbR3FD+4FGIDAKRL1w3DrgORmRUr3HNhVRjUpEXi1+gBlHiKWSnN+H860TagaECzCccspxsn3ZglC8LSzojuTXxWU7DNgzgE1+t/5hiuitxugS3jGfeCUhMYyE7abhkhtSBpVCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=upkVP+iv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="upkVP+iv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98CBC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762994993;
	bh=dEyM0J3TP/lHs+P1RWpbmKNh0sDiCV8CO4gc2YZhRIE=;
	h=To:Subject:From:Date:From;
	b=upkVP+ivkiPWdS6n3Dntb0gxzEMy9x5izkkPr/JbMshksRnyUU9GIJuJ1Pj6USHxx
	 apn9VNPnWI8vg6Hb1XZUJlnH3Ly09vZNypGGEuxdlfb4o4R0VpMM/j/jlERpI5bRcV
	 SDsGl9pkUm2XFBHiWDGnG0RaO1D5MXjrbBxDpSZTfd9O/VM6snMR3r2pdy/3IT1+SE
	 r9wZtOQvHh3lG7o7DNWDlslEw0jyda7I30xvOwG2XrPXxvPpTDACPLmbhUZaz80xNs
	 KQs2muFyU4jEUvQbK3VJMKwfhWP67P8rtJAB/o/Owk0ryp3Cb1NEX944y9pA/UBh53
	 3RXGGGYsAnMgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96297CD3445
	for <ddprobe@lists.linux.dev>; Thu, 13 Nov 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176299499359.27148.13525579876073663165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0550226ab5502e2a0339f922de79dfc00fc494be13bbe9e0897f5a959241c80e
Date: Thu, 13 Nov 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762994993
