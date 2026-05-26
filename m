Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 604C33FE660
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:22:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779805354; cv=none; b=b2yMDTLsHrd1Ih7hWKKlJWn1IVgx7yTDEzRvhh7au9QG2V847Bki705NEk2H50pwEKkIZG5fpTOHhTxUN78BWG6ypaLNKF5Ijq+cyTZMOVyNuO1o07tZGfJrgBBh6nIqYmLhtczGwrb66q6fwKV/pJJBP49Kjgki+6HHarcd6Fs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779805354; c=relaxed/simple;
	bh=rESpNLmPDlKMwNEc97m5+o9jM4dXXyKMlTul6PSPhdw=;
	h=To:Subject:From:Message-Id:Date; b=OVqBpXYSGgLWM438i+mecHz5dOZ/MAyWIEf68J7WWFvYo4lsmZsRBkm2bCxJ6ty1Emk8Lfu+6Ew3ZlXj7Biakv6THUidFZXEUUTwcBGAvB4oEuH4IMqsx9kdR9tYjY3QK98cqUiJjS6ZJXBzqCkNyT4b15T6Gf0Wb9n0t/idq3I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcumfzKD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcumfzKD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8991C2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:22:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779805353;
	bh=rESpNLmPDlKMwNEc97m5+o9jM4dXXyKMlTul6PSPhdw=;
	h=To:Subject:From:Date:From;
	b=UcumfzKDeeybiqAZIiwXf7rH/6JUHASRTSRXgI5OTAVCmtY96zuVo1fz1w7NddoVk
	 o+cC8CCp1s10Y60/2jn9qDW+nKjr032Eu/dvzoAkKJa23CYmdRSSi/nkxOu3mHPMch
	 aRqEaCwDFdlPvhJcn1mfo0bBm6umJtKJr9uakTrGiRARf0VVUo4H4EKAUy3T/eB/4c
	 edDef5dwJZhhdQ3QzocpXI5Y1NJSa4yxOhzPwpYE6afTNUVDi8xp9Gt848DnE2BBeF
	 vl8cTPdQsJCUhyD+Q6sqWwvK1Ne8h0S5BNMutgXOTp2TEqimIDp6RxA6x6DY89U+XK
	 Ay66fURCS8vpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B52EACD5BB1
	for <ddprobe@lists.linux.dev>; Tue, 26 May 2026 14:22:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177980535372.5041.3564858352958019880.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d34513a4b9710e313a8e0906fbbdce580089ba9c69540ac9ccf2d680b58bafbc
Date: Tue, 26 May 2026 14:22:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779805353
