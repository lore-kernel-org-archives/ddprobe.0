Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01B892F6184
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774617894; cv=none; b=d/B4Q3WUtWpwx/Mrnt6nBSCXsQoUM4RKCiYT5eNLrEmdFJb7Sq6FAJgHQhekyOhuUYzGk/vwb07ILRDnaNd/RCmUFhX+abG5YSP12QSZLPa8N7V/jy23acwdHXiG6MjB+ZjG2KvC0z37EV1GcEH1xvvvUia666nuiXiGHRzxtCY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774617894; c=relaxed/simple;
	bh=1ubilkUlQqFVpPwG9n/aQTGjiL/V0k/QHHdCtmfufAc=;
	h=To:Subject:From:Message-Id:Date; b=ULrSxZdXj5SEfGTc0anRmvYyl8gkqxiD1SDCMOvfOmkeSbPtrPzre6pF3CttUuW1utZlcCO3EjGJejZ/i2AOn9DA0D+bJMCdsc+tQ1uHMsQZAt1tz7PatUCvG3SQag7lk7/gTHaJA7fRN/wsJUOOqo6FwDKIojxbKUl8y5IAeMw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TVAlkQRa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TVAlkQRa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A71E9C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774617893;
	bh=1ubilkUlQqFVpPwG9n/aQTGjiL/V0k/QHHdCtmfufAc=;
	h=To:Subject:From:Date:From;
	b=TVAlkQRaeEvCJWahVM82mA6ZA7HMywsgpw3CHjVqd8os0bBaSsNi4UNg6qqKciaCY
	 OQpwy7QUgd22bwgvx+b+OBX2N1Cs/Z7ktcXGTis72wjZ93GEh8hTi4zD14J79YtKkE
	 06CnJxyTqzImu/U7F9S0jOiUPhboxW0Bq6hp2Wkq0Bbq5VwKkZM30LXbWdBt7EIyKz
	 W9/V00UcNesEnns20nQe3TaL/C+CoxPhAm5mThpESiW+KJGkKkt89PAzRBTxYj+80L
	 Xgy0FzBk4f30zZHUs7VvbxvUABhJHwDOJ4oTe/YEWc607oI3aYDXRArvP0YhfhmtQ0
	 n0RDSFVyOMvhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9407910ED678
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177461789359.20717.7156004950089540692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8df51dfe29423868e69ee7a8cb73954e78979aba331645665010dc197d4df4
Date: Fri, 27 Mar 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774617893
