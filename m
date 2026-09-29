Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC89350277A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790677834; cv=none; b=mWw+1cbFo0zQ1XnD0HV0eeXisfTVjDfWYWy14WM9KwnXlEuyS6XfvVerSsdhG1t06Z++GXJcq8uDk2v60McmeIqhdV86qT4mVV01VzxnOi17IkHtXneoDLEkyQN9Z76TR249CCmrbgmSfDU1k6r/ez8MeRA9X2rZEDmInf5cSoo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790677834; c=relaxed/simple;
	bh=oikzDVcuqLLvhyMHb8b77rNrdsDOHj08EyKCz586bvU=;
	h=To:Subject:From:Message-Id:Date; b=O8R9GLOqTXzESn0cCUhXs+FgZ/8iYbnWsSR71FzlsYbhG6OII59/A2jxh80eJaO0uegAZYBoB+o33ICCv++frcI3prIAkBG9sjYnaOaPp0tYP6K7pAMaj72Er1JYnv209/bPz11oOW0Vyj4DCpqpDQdZUIDXF6Y3BGED5zSAOrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j+1Os+Vt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j+1Os+Vt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB1A6C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790677833;
	bh=oikzDVcuqLLvhyMHb8b77rNrdsDOHj08EyKCz586bvU=;
	h=To:Subject:From:Date:From;
	b=j+1Os+Vt17uoYlPK+EF+48Vvahww4AtjtLiPwrLaBOzKCCBhnqTnyyLy3ki8rgX9B
	 +sPTzK71EYgZPanyb/bwVer7xkLvxs56nH578z9JaxULzS7+65Lh9ZMqoc6CXiExYa
	 i1wVcZVfLfiQ63JoL5EYXj60vuxkXawUfe3L0sFGaznOuWrEefKef9PX9YdQNdPN6+
	 f9aCsuQfLDWDcy9zFc+WmMUhT2H0uRrTOxulKWUhlgyIUtN211xSaoSW21KcnFzPWR
	 0cDskV6tkeXZOFkUsFrgklWxhRcITK+VqqSkRHhd1zf3AOu/pibVJdjoWO36V8PofP
	 ZTAOOCJ9yiE+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9D23CA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179067783368.24267.5047127865613563467.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbcfdbe3afca08dca529a84c6f331f7fc447b0133e20bb1114b0e731bba8e8ba
Date: Tue, 29 Sep 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790677833
