Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8B0E573
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:06:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781910394; cv=none; b=sShbV0WP9g+K+mHvsOPUyTtYyn6CTOBiajEVV4p5xBn3/QIrOvZfZatectumRk+LY/xkCjRz6wOpn+94p6BsywtRXNVpCKEHAr69puF2z42D+IBfKpeEF86v6KGjc+jfvWF2GgAgpSbkO+dJEwPVNzwun7tOlk06t2tc8U8QMyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781910394; c=relaxed/simple;
	bh=tWMYT6MdEew+I4YVkOADYXp+IB5Tr4Nd3LlVdxANcrc=;
	h=To:Subject:From:Message-Id:Date; b=AFBy4fji2n6X2o1EdXiR7HO0P2z/X1RsEEqHyqF2pQyGd1AE3vAOwyEbXAFR7Kp2SyT/C+T67DNhCzcjDNyGUYfiAzJIQXmTQP+ag2MSVXyoLW8PYT+/kiND4v5aBoG5Jy9kZ0dXu7NHXt0meZsn+t+ztDmXiP2OtZnChkQQrtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ms9kVk+3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ms9kVk+3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E3924C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781910393;
	bh=tWMYT6MdEew+I4YVkOADYXp+IB5Tr4Nd3LlVdxANcrc=;
	h=To:Subject:From:Date:From;
	b=ms9kVk+3aroyk9nK7f7vwYeGFWKl7YncJfD+uqixn54veK8WqAVsgPu08vcOPqPNm
	 Oc/cFeJt0qS6J5kPY4JEyR/4gHIqLjsXWSDfIFt99oN87CW/yJO14TUJR0P5Yzf/FN
	 MpMWGoUYZwqgx74l1yZc2wMgPNZrCq5VwsB23HQxbCpm4sP2G5ate1FBv+qns/XXkL
	 Tye1AR8g79ntYxDmgZJtPiB96Kcg0jaMsoTiOERUyree3oPodpfbtsplyNce5I+sII
	 UYt/ncsANAVtkNY5Fu6UnVo/FaNA3dxuyqZqIFZ6MJEZx/YXwqu+xHm9Jyp/+iIBIW
	 d7iDE077NoKUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BED72CD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 23:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178191039376.31311.15239597502549553569.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3afb8d1e27d10ddc2869dbf53dd3837b714bcfbd7bc64d49a1e4633e37fd3d
Date: Fri, 19 Jun 2026 23:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781910393
