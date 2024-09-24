Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17E871C32
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727219754; cv=none; b=Z2LmSZOTf2eCacT5Rj5TJrljun5WxDAyhbd/1u2+tNPz+V4WFSO4ENxgWldyeLrcBR9YqfWGZf6X/+efNEIv1DCAHpuLQ+sui8Q2bhdD5/44F7cSKQRfXIcHGFCXvqob+DJayePJG36kpHzDszrdW22HnPK1SJsxVm+yFJzo1DM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727219754; c=relaxed/simple;
	bh=MjiBq5QiBylAPZ449Sk8J1fLx6TJbV31P57fq8r1d5E=;
	h=To:Subject:From:Message-Id:Date; b=BvAMdqgR/xJYkUY/IJNo4Wue2It+PexxUA0btaFVBQpE+KEF5lVLM1Ad8QSxwZr3pEkx6cwWNA4S/S078st/CTSs4i69w5GVdO4pedpv7pL/6aE0R+QaCOX1PWzKuK8P6ip4llpg0hXZv+OA4CR8UXhyjgCu03wOklVVoGirGmI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CUIqvxQ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CUIqvxQ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F550C4CEC4
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727219753;
	bh=MjiBq5QiBylAPZ449Sk8J1fLx6TJbV31P57fq8r1d5E=;
	h=To:Subject:From:Date:From;
	b=CUIqvxQ9MvE9pP1gNIZKZv3qU0xb95++5JgLLQqxw64qy7Sy2znnPqSG1wfTPZ+C8
	 2nIwP/tgqReqLJtAV2r613B/mGaLUtHFGUS4yOfUbYBZRtoBabN0hZrCWQdsggnTPL
	 s1617Y+mKBzqCE3b3UdMJqkhElYNSuNuH85K15CGnVREJzkIUJHlHWYBVISozhfhom
	 Ea3VOA1cOQmvKkgnRIHIlUBH/9imV3Ep2ap7grqN7jfkiIBwFg8/3WpzKRG6+Lqobr
	 qSGOZkBTwQSuoKh6yCgKoVGYKa+rQ6339HYf2C/v45B33H+qVkdNSIMaqIkmlfFuBj
	 F1UMKHfCH8l6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C12CF9C71
	for <ddprobe@lists.linux.dev>; Tue, 24 Sep 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172721975358.11662.15080884122201075428.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18b7875a7c8d132e3e757ff778d284a1988198e0e0630143471bcc9523dfec72
Date: Tue, 24 Sep 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727219753
