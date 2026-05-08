Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 201DF37702C
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778261254; cv=none; b=Z1Q8ZXGQme+syWL8JbMLGWo4rSdJxWrGUFuIV7AWZCJTXyvQqPYUnFNz1lp8qiSTONa+DY+OKajUDFu6jdUOhkYbyQl4P9vFfywLdsrKPeAQ4TF3pL1HDFI9BitqSaiJOMaDgymKeGs/6CrH6M1daRCKEdFPXyyCf3BnpeNJ0io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778261254; c=relaxed/simple;
	bh=qFXDq+YgFbP79ao8K2gqYpFr5t/RVcgaUyGnEOMpZQY=;
	h=To:Subject:From:Message-Id:Date; b=nL2sqYhmgr3GBYjSF1flTveolTjB6LQip6fPd51qgnVxWZp1M9DKdY0WfErIJ7nWHrxWv4iO/JAabiLQcr0oEAmtzfZI/9wnX96WAd9IHGkME5aT/bxjWK/oDe8v5c0pNKDrQzhV97lktXkCIZoIq8xN3e7i4Hm1RgDlaVpWMQ0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VjvHqYVm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VjvHqYVm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBAC8C2BCB0
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778261253;
	bh=qFXDq+YgFbP79ao8K2gqYpFr5t/RVcgaUyGnEOMpZQY=;
	h=To:Subject:From:Date:From;
	b=VjvHqYVma1HDZdUsjmSCxCt4+vZBWOvslC7CaxPZU63deUhAaInW3iPUVBWguofRq
	 XlC2q+t1THzbXA0D/77WyL8qtEYlrfpTSymxdPLjv7B+jOl1CKdQeFAAjn5+YnaQXj
	 sQdWfKDbaJO2VHp8XfPAe6MZNZR5+q+HhKcEuBipmfG8ShFhfLx95XydZFiiO9z49m
	 kJzYb1UKLMW9TVgEAGXMHsiSmx+FIOgrCeX1/YbDMvEmR45WSXMtQKb38vt9TsTaTN
	 d2yTesvEand2lH6Ae0uPtT0TPBf71JHxrSWxxCV/vJqIZqEklyXlddBUN+AwLbbM8w
	 fwmvR/KEEeuww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA962CD3445
	for <ddprobe@lists.linux.dev>; Fri,  8 May 2026 17:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177826125368.25650.15915001181672950597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68dbbaa956fa05ecc4f6464d637b64bb3c24ca822cf80a9197cd3de361aebac8
Date: Fri, 08 May 2026 17:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778261253
