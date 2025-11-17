Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 80DB4312803
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763404914; cv=none; b=OBgn1SIBJ42lD1zRtUNg9Qn4LaKP2Q07vd3/EMtCHup5eRbCLpGfzJXQXV/Laakc9oEKh7VJij5wJ/ew4a2ttr/kVg3dRqYwq3kumFz9oGUKrjQb+8QnC7B1/ltKEFXL8D2z4jCvRa6g0otK2zWZaBnZLWn+xiM72Tr30v+5Sx4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763404914; c=relaxed/simple;
	bh=PdPI/9krYt1uQccj/xr4CA1MJc/DVX0Cml2847W5JeA=;
	h=To:Subject:From:Message-Id:Date; b=oNPu0VbfwvSoEWaIdQxCUxqzY5Ic44KmI2EwL6OvrrgyLeSZwuW29ttsVzu2YmnZhRFmMvrfFKp9XFLtCID/AVrNLuUwoRam1W3GN86/X7CYilezHqsuV2/dDJ7RQ/qQs4EApt9+cSVTGEtRlPJcFFNfrc74MLm5/xDlFO+wAXM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Or8wv30Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Or8wv30Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D6595C19422
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:41:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763404913;
	bh=PdPI/9krYt1uQccj/xr4CA1MJc/DVX0Cml2847W5JeA=;
	h=To:Subject:From:Date:From;
	b=Or8wv30QX3KejU4q13s//vYr4hiBIffxnxOGqPbRUbKGhBba9EUyCZTMDMRkwz4fg
	 CM5w+t78cxyscI4Ew/RxhSdJ0hKHRxEiB9QjY7zxSMqTIvWAGCd4I4my3YkBk2jzjl
	 Atx7BsBWx34VQkrMUbRn2ALzcBvH8C129Ue1KEApNPfbPADkUK645gQKU3K+xhBjf5
	 3kXRoXRyOEOMU1wbFiqn4ZzSw98sc/hnhNtAYbOoAI8oE8fdyBr6vRQYKfhnkZ4tYW
	 kPUBUigzV3bG+ks/aBV1tX+iXRpdbm3NAwrO9g/O0jOelHBkxArpyocQv1GkV2hzN8
	 ZWbqIKHuPxP2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 945F9CE8D6B
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 18:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176340491359.4616.18173437695645508540.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de8ffc70245fc0e0ec8f822e88735c80c10ebdbd52d3feb88c5c58f34eaf0e53
Date: Mon, 17 Nov 2025 18:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763404913
