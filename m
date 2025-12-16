Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CF281319857
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765904633; cv=none; b=IF5oSRHrbNLpIXwcPH8Y5TOMQCnNiZIU0wEIBkHATgexV6B/1VOle7QJXoj83FtUFWHh0BgZecOS0Rkjlqwwdkokoti96hFZlNxco4fO9yNwyS2q/HkFAZxYnh7pWOrsVCXJKSsA1fkVzcgwhxhgRqlQW9mib4HT8jXb4ytHvBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765904633; c=relaxed/simple;
	bh=utGMDu2ySwDpHCa4K6tEYmHwgS3zOBm2uj/P3fEBTKk=;
	h=To:Subject:From:Message-Id:Date; b=VVputTXfct3wBNV+51ifwTUBxyGi1Z2KX174/zEkr6wxnr1gX3hTv79uNsUwf1OP2LfClrcCONi9jcr/pKclKZtI0J2ZRkNjFDVFhaUMS/jHRZWMxc7dNkQCIWx5V/Q5L2pp/lor/sF1kN79INlUVgxTDFwQrxJbfECoXIsBTpM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KTZWixIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KTZWixIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB230C113D0
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765904633;
	bh=utGMDu2ySwDpHCa4K6tEYmHwgS3zOBm2uj/P3fEBTKk=;
	h=To:Subject:From:Date:From;
	b=KTZWixIXWfQ6o/3pNzt13Q6rlrG4CnvO+S/r3m9ko7QGBxR1Nsql+hRqGdNSSQCOH
	 mghtjc3DUQv3lcwKP1W+VhUEt/H/90aqdpm4N+258fEXdJE7sou0R9Tl6g6SjZby03
	 6b++nUIEHh+OGWREJVZlt8s/pF/PM4Vd0mM+D6C5VowyFHzW+jEZ05r/LI60MwMqo/
	 8Rd07OfkdfH1U/r+0ZOTqH8gPwPq2yyZ3fRvQvPTKh9UuK48y4+SkucAnXRoKQqWi0
	 W7BGdOxhhJEmsuo41i54nPpFE1vQSWtehk9UaRwJb9r8ktuN4nBYGdsaxMlV5I5TPW
	 Y4e8uoi/95+PA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B07BD609C2
	for <ddprobe@lists.linux.dev>; Tue, 16 Dec 2025 17:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176590463359.8601.16140484531199444261.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8faf21749e1881bd059ce9bbfd9bd8bcf8359b11620c7af4d580cf69380b62c
Date: Tue, 16 Dec 2025 17:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765904633
