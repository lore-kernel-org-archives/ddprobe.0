Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1027B1EBFE0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779051634; cv=none; b=G3T0i1AhduPBXZVIxBdL/O2B00a0rFIuH/blWdY7qbYBXBf9J04Q1OauforSfWJG87Kc8nSxdk0gImGYYeE4k+V0ZHUFg8tj9aB5fHRwNqaOLcbe8ApJ8zDXXrBKwxkpYU+n621npPRJzWL7rr1mEetArYmmShQpz6hrDNCrNDE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779051634; c=relaxed/simple;
	bh=2ZuWEyNcll/08PQodSNwkd0n3z5qIyzv4D80jm0KsQg=;
	h=To:Subject:From:Message-Id:Date; b=RpHiED9lnCptfv35iUJcyghfxv90nVWSTSOTyjifawgQTDg76n1fpxEh65xhkkqOn1o3xlC5khcQFYjDxclMGyvW1M8MqFDlKO+GzhY47VDtF4FMfO4V4vx7SlRDP1oxgmcnZlXfRmDb4+Rb+S+m+SeUzFFFejTLxN2Mbsy6Fq8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vm3HZ5Jx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vm3HZ5Jx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BABC6C2BCB0
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779051633;
	bh=2ZuWEyNcll/08PQodSNwkd0n3z5qIyzv4D80jm0KsQg=;
	h=To:Subject:From:Date:From;
	b=Vm3HZ5JxwYhe2jQqMbWcF76sCCed5dbxyalUrHLXST/zYkEVW7AmW5m+B2YjyUS4E
	 twahKru6D2hi3dIvQJFaigCYNl9hOMss/bFw+Ipg8G9S3YIfF15m27nTOqeRXvo/6m
	 JqF6n3RLv6eniRM8/yoHm6r93XwCMpLY0zKKWB2RTxHOKNjLuZha7r049pE8IfvgqL
	 uZImH+m2XKd7J6iptQRCcQW0dLjrdW7jCXj6e6D0fkBVXd5TGeDZfNzvxsUufmxQS6
	 qgRfHodIEMaWbO+yjhyn0wo8pD70osfO9Aid0VquGY4OdUFtnNUzAcrzoFNcqi4vww
	 olXoQYF+q1ymA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3E2CD4F3D
	for <ddprobe@lists.linux.dev>; Sun, 17 May 2026 21:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177905163368.11723.5761241834152822181.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47372a29581e56e35415d469d1b8c552135a83ac00c232479d37d57db448f5db
Date: Sun, 17 May 2026 21:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779051633
