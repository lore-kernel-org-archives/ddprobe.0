Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19EE914A82
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753774194; cv=none; b=ePrD7PNw7oJLUTgNTuDr7JmTOTL0bux1CFeJ5eK4Nh1FIcsC2RhsRfz5QELPtVG9qRt+lAV8PPQ3KDOT4mihai2iY3g9R+tdCGxQhE7Gd0gibMF9s9rpfwghieCfI7bl47qJ5SSkbcZgpeUE45hzzpObrX2P7iRziTwM7pWmOPs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753774194; c=relaxed/simple;
	bh=/n9YRj4K/rUlMhXsc456nUuOMHKed/G+FXyw/iO9w80=;
	h=To:Subject:From:Message-Id:Date; b=g/xGXC5y49fr+0VZUO5sxUFkJTwf11MS3r8NYAV5smsZUpmEHjBW4lEjYpmIaofXkyePby4HOm+mARksqnrNI3GPcGCrvOYOQuPnYOXsBQ526cPgcgNkOak++ywwVNs3kHmP35+7re98y/6+dV4jdA3byREwnuHMui28NUVJFJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ryf5eQ5r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ryf5eQ5r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0190C4CEF5
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753774193;
	bh=/n9YRj4K/rUlMhXsc456nUuOMHKed/G+FXyw/iO9w80=;
	h=To:Subject:From:Date:From;
	b=Ryf5eQ5rgrYoz3QnV/GYwsGfGAAZum9as3Nvx+Ga90KGi6KFFseWRyHnG9Yodek6f
	 26ZVUvbb/ehTMmEFNC3eY6+ahv5x3R/itaragd6nK8+bUxKrt3Dq2zAQN/S6i8mPT/
	 GeRSulqtWACjDw8vuoS0YVEXBoaWRhhJQFhjIQ28cKdjiW1ejpXL8/f0HH8c/Y2eiA
	 6hGHv+UQ80I3zqlvQeJ0WeJxen2V+L4W3C4wKyk5whMELJ9tixIQI4sPNm9g1GA0Im
	 8exSsyU1nMpYfXK482purAn+aqybNv4EgRRslswd/0A1B2aBCKzJ5vw+506hJsL/+L
	 ez3BurGCG3spg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F20DC87FC9
	for <ddprobe@lists.linux.dev>; Tue, 29 Jul 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175377419357.14790.18211541288958082632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b861015546775f3a6153c945a1635c4e1d87c18ae17ebaadb09e3a977721c6f3
Date: Tue, 29 Jul 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753774193
