Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F37A92248B9
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775574934; cv=none; b=byAbhktoEQsAvpR4PFZwP2uWyo6k+FyHNcI8T04+nAnYMyNouC6A1M+ueMuh2Ps/raA49YiSuK6QJfWtZPFmFyXq98Ioj6nieCm4fbOfNn8yISrPNHKKwPMCyXFAskeEmGKKHlkfYovEWQTe0oRpngWlfyJAOp3av5YVNdczr80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775574934; c=relaxed/simple;
	bh=6zpAo7SY/fQXZ4Ku4ARmMYV0K9cp5wYA1XI9G0oph8c=;
	h=To:Subject:From:Message-Id:Date; b=gQUYZXSQFtlq6lAAsFh1qy0cuvk+tHjt0u9DdWgpLuqvGmhJY0KCKdd6zFiyvIL7hF7q4iaZWQfa3TTMEt3K/Xm+Awuy9plkG75vuauqqOmK2wkBxMn/4eA8ODZ6tF3KZOIpX6+oLZ39ZPHbUXW1Tmjo23Vv6gpS/P5q+nnOmpA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iX1FbJAK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iX1FbJAK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBF57C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775574933;
	bh=6zpAo7SY/fQXZ4Ku4ARmMYV0K9cp5wYA1XI9G0oph8c=;
	h=To:Subject:From:Date:From;
	b=iX1FbJAKa8KrycfJf0BHNmUK16oLwlK6ZP9RL4Jd1ZrzIebFP/mH0DXZy5sRmOoUi
	 hvccajyYDbFyI740xvvBmu7gygF5HpgNvSTpxWgoYnK62KrkS9WlR7ZY76yvXnhJFH
	 CCs3r6q3DhLc954tpf1wUS1/ds0zg9+r3xqcYMtnT4Cpy26RlDzO9Xdfm6XRG0ts7a
	 adFJFkp8b2PwLictrqnq4BhT2P60UYp8osZEAGubcnqer29GJhzAGLHnJfG/sERv17
	 mZtZcmQZVWxkloDhDZpPto5KQndKkV5qT3LC1GInIUYG2UWuXd59AUzj6yopki4uPA
	 mfcC7xeZxxVCQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0FCFF5105
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557493369.2029.12307157302227602426.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1cc9282721985fe6f2cec6e696a83ecc4beb138660424883a8b8f49ccedfc720
Date: Tue, 07 Apr 2026 15:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775574933
