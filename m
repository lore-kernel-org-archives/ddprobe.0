Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C7623BD17
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773573294; cv=none; b=ETzhuSm+kScQxp2kaTd0pFdZil8MJ+2by9W3kI+R+3QudWT6B5ShoXxzk7XMEBeIB+vNSnaSTq/jL6ZDunR0iDvast6d0ArmPudaucqM0uEZK7Ae9vdgs14k2UKFf8d+OC5VSbP5O3VwKnEqJrWcl8epsiTnMlhhHdCb8vZ7r2A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773573294; c=relaxed/simple;
	bh=3Wznh1HVSZdH9oh7gDD14UF5XIkeAKGV4E2+p0zAPug=;
	h=To:Subject:From:Message-Id:Date; b=c96Hneh015t65wGY5fHeEyZ8wdWH4NiqG0co962ttHp3ytz/SuSeYLVmwb+fY+Ktp6jmudFqRXji9tBfE9awLAdGuGn0dtlg0jSVDw6QS88taovOPXBD1c+ZKt379GxC94frjgELwM+elfxC439vplwSxwuaf0CpysHOn9rA7W4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoV8Hf8I; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoV8Hf8I"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7F82C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773573293;
	bh=3Wznh1HVSZdH9oh7gDD14UF5XIkeAKGV4E2+p0zAPug=;
	h=To:Subject:From:Date:From;
	b=AoV8Hf8IumlL+5pynxVdyIWbj4/+Kmyeo8BvBjN3KL4+h3Gpj7Wy6BE7kV5RgTtWN
	 6hXbJjWyHKm0+bWx7wn1/YuXWFq3MXeO+p1NPtWFU/oUm4iFfXv7pNoMohFvpmYnh2
	 Cth/lDSODCZQELbdUHvPmDNkReQ4gOQQzt+znrkmeFxmZGOJbtXSgsVKdEIbDQcQ8Y
	 PIhIlqAiDKCevTNmE5tfMFhtRVfPI/49qCG1UWy8kw+4iT1Clji+aZdz5MJvOQJ/Mj
	 SBbmL0gXf2xNJNRQPJfvZl/BqxS04Id2HgoX20XXh4T22w+2q+W6698mJWyTHxi29b
	 jy99feVj7nhww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EA1D58B18
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 11:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177357329357.25421.17099995953671188030.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 630e26724ec4f19174b99b68d19fb825b02566c8b7f54d80a973f905efbce045
Date: Sun, 15 Mar 2026 11:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773573293
