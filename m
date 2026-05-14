Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4A074E56A
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778779834; cv=none; b=Z9o0kYe6bcuYAIEOBxd1q0wh7Tu/1iCp2D0fDeYuSWRvQ7veHtzRCRtOtI5NktBv7au3Q4O1AlWLrhA5YrKIw5HBMPxtGhYignbjGKfiXql6s46P9wNEILDANHId7ajVTQNPE/QKaJS9vRaasmh+sU+vJQaMxLFBgQ3OsAvRNWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778779834; c=relaxed/simple;
	bh=8iJ3Vi1y3kuxsWEyd4ZEwQujMhY+u6l235aulYL/C3Y=;
	h=To:Subject:From:Message-Id:Date; b=iZ4CR3fLAEwQo3zkUVQwWmHU5dWa2xtJVAEtAvy/wEwDqhYhca6bQI7WrrBstu1sXgEyjIV0cJJ26BaHkDuRcyVUkP01+VWUewpkjncg+T/pdwi+smcWTD///DzXlQpKU7K536TqRbsHLmITIG7LtSONM8oIW/HHSjmHhFAfTbE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sdtda4eJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sdtda4eJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C007DC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778779833;
	bh=8iJ3Vi1y3kuxsWEyd4ZEwQujMhY+u6l235aulYL/C3Y=;
	h=To:Subject:From:Date:From;
	b=sdtda4eJCavmF8w/tnHT/DBl8la9q/97inI9O6yXEDO1+S9fb84eXaqEM9rsuF96M
	 w/mEi4QjFC1UQLb8lZb9EL3JkA6YHOWCvQHlwd4etJ5c51eIFGhyvYS+Tjn1PSGdSH
	 QPSBJksVI1QKLHtt3G83v83jkX/OQRMW1DEPaPnS9NilJnpwOp+BUXJrL89s6nkqd0
	 /YuoIDBSzC4VsJa0B9ta4WRjED2qyn53J3konMevyRE9RQhsVqAryCwsKndnaXcALx
	 r1anh+VfaFO7tIwvwbouOa8ewux1qnQTM0cIpqOmS4r1U0P9uTnJokz6ba3X/otl8q
	 +jo5dXRxSo2vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B108FCD4F25
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 17:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177877983368.12508.4448905183645745328.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e54574e65837b1ed8f4432647b16e4405bb7995ed44bd98c57eb11183078409
Date: Thu, 14 May 2026 17:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778779833
