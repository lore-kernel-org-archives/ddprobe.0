Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 488D5242D88
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790532634; cv=none; b=ML6JPlkkHdVOIr4R9YijHzsB9H19WRsX7t+rQnfYfAn4aHGZy+v0mL8lFL8rAKQHqxYjX5+XQTnZfhInKqjlGnXAs21XBhzIFp84rU9NtIxaPJIi+9kmzeIjAGX+tcyhySOHgYPqeIuPlw/fkE9Sv9vt1gxOVfm7BrtvOt0pmcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790532634; c=relaxed/simple;
	bh=3obgfhprm4oKgVVslvDZUB+auEDeriFHDPYcRGomQMs=;
	h=To:Subject:From:Message-Id:Date; b=s6/1yAEJNR6rtqU1nLPdqzJJKUvYSFzq/57071S0pL0v0qc0HHoQymmwI7PVXoJrmOjuxL/3w3SD1UUqUDUhUYZIMo9ETLw+TsvpuplXdSTBO5PpQgJfZ5gFSeFqlgTrOhhtF/mNseW3G573AhZJDYSt4Kd0CE1Mpxf/CxRDb5I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sC+diY+e; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sC+diY+e"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDEC3C2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790532633;
	bh=3obgfhprm4oKgVVslvDZUB+auEDeriFHDPYcRGomQMs=;
	h=To:Subject:From:Date:From;
	b=sC+diY+e9sh341ZsqehaTnw5WyDXxuG7PhFj2TtFkP+/mDn6FOqt+FSrJztd9mJZl
	 a7WSLgMmn8F2qR76QwH/Gh1jMk8wL8n/Bquh79G8nBF61pJ8ymnLZQZJiMZH1m3sOf
	 CHFpUxraSaPGrPcQRCp1WY/uhR4Cbj2WAxOIL71znQ6UuAuffO1Sb/ZwJYX1NsVULr
	 YKYo5wlKCtli957whl4AnfOpp6RnXRRVvwdhVz4/eKRGCvUeaG2l5C5aYaHDwvhn0M
	 ldP9vO5siuH19kZg5ov8946jf6tYrUN8Kxqt0Ze9jGDcLkXS5Pwybtms95JYN6szjs
	 0Ty7vP5+X/2WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB402C9832F
	for <ddprobe@lists.linux.dev>; Sun, 27 Sep 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179053263369.21486.15444837716780863989.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 306f66c8a8b18947c0c06e4cd7abbebb48f33e15d68f0140820dfcac170f6f79
Date: Sun, 27 Sep 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790532633
