Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6D0B13C9EEB
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788153034; cv=none; b=igHRnTSRot+iM4Si1tu2ODHGBHCUPN7XFJtdIysc6Qvpu9cBbd357exBD7oh3SNGLZVqjLT7VqYQvj7qr+kaz/M0LbIxD0Fc5naivgwv0YRbkWbQCfrgbtLZpSJ1oHYL3Jy8Ctbg8veFgZa3lWlCMjvof4Kn+9tCMWD4j/Q0Q28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788153034; c=relaxed/simple;
	bh=l0jPjo2d6qlaxoBv/Eztc56wZV/YlEm3M0g3lMVnxBk=;
	h=To:Subject:From:Message-Id:Date; b=AF+1hnZCIDQkEwiOWkEcTS7kioEb98S+go1jcq28FUbiVCnVIEFynwX7m3/I3h78sDzpP3pFopzZAsmqFO0kPEi30d4O7IR2e0Ljvj6xZbJ1nngJsDfZ+RSUtoDoha4qwuHHdKOG4UeZiVv35Y9N1ZWV7geK24ep3lFHkWOdpdw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m1drtsP2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m1drtsP2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7AD7C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788153033;
	bh=l0jPjo2d6qlaxoBv/Eztc56wZV/YlEm3M0g3lMVnxBk=;
	h=To:Subject:From:Date:From;
	b=m1drtsP2FRL+8ZIZq4LCYZpALIjX6WcA/iPH+76ij7Y7P/hYsOTjsiGsyQEAOEpnO
	 jKnUtNANJVv0IXl1ggNjUdU56mQgug/f+qO4CDhC3RabEqGQWYJhHDD5S+Dfg+qzr3
	 FtwE4kxyuhRkjDH8OnkU+RkUPnIDsok0IiOZYLr86mNCIj7FRHePdq/6An2uV9kz0y
	 L7PmlPC14vjOrh+hnci3Wb/a1jpiykFgK6rRH57MALDjiYtyO/3GQs7X4vOZ/icPcl
	 P2G2TnBkO9o+zvpARhxuaMfSk5sDXCxM6o4MJ7RvqVFpfw9OKd+nlE3BWyZFHHG2NG
	 tnga2H0wt/llg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC769C61DD3
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178815303369.22735.15250396280108236094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f641c2c04a94a7d4b19d506c1b8b795549cc8db4338efe5596b19a807da8e09
Date: Mon, 31 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788153033
