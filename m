Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B15B830F938
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789266634; cv=none; b=XfnGXfkDqpd623ELC8XIrFnMKD0gP+sRNb2A0R6C67r7JYtyT6tzWBVn/8vFCX6eHRW2fMlIjtjmKFc1OqC17E2V8EllDvuvVrc4Yh+Xm86b/EeSaPQQFVByQj2BTn6G6h6d+nXiyt25oK98gPRU8GhJYPxuO5jzjHX2PNJIs+g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789266634; c=relaxed/simple;
	bh=WONH7/89oJPDXESCOXU0Vi5SBIS/l/3hJ3GasSitFBY=;
	h=To:Subject:From:Message-Id:Date; b=mH5w9/TLZv5PUJym/N43F2ZsacVg8v9kW0LdEP6wX4S1E2VEbzSIqg0Eo8a7o7PiRiJmeOaH32MjD34yih+e+b54aGz3fkQwWsoFU9TZHg4jr/K6T+uJXbyDt2ZiTp/NJcpHvIkX4hFYxMWPgiuBQuYXQ5RlKZL3/4B3khtWl2s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YxvwPXoo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YxvwPXoo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D160CC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789266633;
	bh=WONH7/89oJPDXESCOXU0Vi5SBIS/l/3hJ3GasSitFBY=;
	h=To:Subject:From:Date:From;
	b=YxvwPXoopmxI6qC6psnQFtnPc+/nXL+3j+zrOOrxV8opCI4Y5w90LTM5ZxSXkQv3t
	 BGUzsBZQolnZd39RqOOxe+d6SAAquHN6DwO6P1GAUsAJ3NMUU3M3hROkVWAUpw8bhC
	 KnC6+3jciEjrx21L9xIpwNAimMKOAKIUF/wzRGM37Qnvvi9QZyG5qwY2BFKApTcTf7
	 5hdAcwXGXQoZlMPwg3kq6OkemxT6mietQb7YEUuRDRpLGLw5lG/UCBl8YC1zuza2OO
	 PmBcH+Fpsnj+7X0KGfwQGZmKEuzRtAGoIYS4Unty54RaxIId8zmdFbQ//tp86XGk5a
	 Hm2+ipemIFt5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF26EC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926663368.1875.2998875141191316403.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e832bab0f384af88d6f11a0b202669a1c373e4f4fce730b7b3317a83bbba926e
Date: Sun, 13 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789266633
