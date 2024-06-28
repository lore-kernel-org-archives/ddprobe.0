Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E7114B95F
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719563063; cv=none; b=n7AsdFOsJWvAGmd3Ra+duoWyvXqBQPdM3eTfYIaOK78dmtxnM5JS02POQVhZY0hU2ZMO24ev9HmFoWoioLQ6+LF/D86uEyVHHCCTMe6LJl92Mhy4Ia0Lxe4YNTBZQKMxyleb3P5r4tBvPBD4JDvIYX2P68Wm80CQgQTWy+4cfzc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719563063; c=relaxed/simple;
	bh=wXFsqjbMJtAnuS0VfhOzVVPq3ZDOAqPebqdgabV6ADU=;
	h=To:Subject:From:Message-Id:Date; b=raK1JfPlnXNgDcl9biQOxr00rAzLylzhhv1eTht/OP5dXpmUicNGrvvUWwXT2dtywZOYhzleUT6hDagz/hBzevR52rfaYmsukkgC7C8h8vpJbMgsIomlY+s+X751lT7j6PMlNYM/X4eNQGjia8Td34cSKKFZrnEzDCv2vcp6QnY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=udBTmhpu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="udBTmhpu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE04EC32781
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719563062;
	bh=wXFsqjbMJtAnuS0VfhOzVVPq3ZDOAqPebqdgabV6ADU=;
	h=To:Subject:From:Date:From;
	b=udBTmhpuNdL7lDBla94HeX7upfmRZCGDxJRFiLAdylQHVVlz9IQGmAZpKsagieI+n
	 9pRVapJGXYYqP8y7YFZjL8lYA2Q2ZF+FJheuYgCGRnxmJKIyOuSulu425YCRNQshqu
	 uIsDlhFKv8r8uGdw9Q4VJe79RxgIRbSZmi0qWbAz4c7/YUP0Q5jpBnPj0WdpK8d99x
	 f87fGsWkWWWP0j55vQWZ6Me6vsHoW9roZSB2QN/KznHgNsJvdX0AkG+QQXCBqJZ96X
	 2c+G+QATwMpC9RWOVynTU5MwqGpCb5a16BL92H70I0nxod0G15OpaPHu6Mc0SD0ez2
	 Ajhpd1PdrGPhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CA0D0C3064D
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 08:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171956306281.12577.8562713105841643560.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a6dc48df914d84ac762ea8e17db5e416c1e0efcea2f18dbbd7e0255d30b9024
Date: Fri, 28 Jun 2024 08:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719563062
