Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C14EB8F5B
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769508233; cv=none; b=YpednbsbQazuObpG0P/MTbWBmrIkuEqQeaGhSUMlrQCGIShlnJfGzNw0GQgO+iaFuqWvUGw4TUq155c4mnutDOPSew9IBOf51mHzqXAbsb+RVNQ0dnMN5gWmFf211AgGsoe0niPweuLXiO+/fIpLWYkLH+HGllphNxfFz5lyRH4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769508233; c=relaxed/simple;
	bh=nbnbyXb0yueex+hwpdwZdEAjP7RimkeKNfvZS/IaIAo=;
	h=To:Subject:From:Message-Id:Date; b=tUbN/8QqKT7JTJRgc86hMNV939s6G9hBjTLsTszhUF1iBlSUl+n0OUp+r/R+l23w66WTopvi/WkUOOHsxaiQLS0tRQcr3vSHWrkLeFEv9G7lfrkaNOQXiskgLPbOKLrVed2Unph1GMdQ9/LIWBUAaJpPxZng8iQCMyJUirfdlrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j3IK/Yaf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j3IK/Yaf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A319BC116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769508233;
	bh=nbnbyXb0yueex+hwpdwZdEAjP7RimkeKNfvZS/IaIAo=;
	h=To:Subject:From:Date:From;
	b=j3IK/YafibB1M9rvpQSLw1aR3rF6gEQv+KW2XNAdIGks1BrnoW7FwCbmS/XFrmKbQ
	 wEFKX9BijXX0WOjfakfNUAO+1YQVGhxDLKc87IQNlvw/g3bezwouSeaW5Xa98aTwtc
	 bi1YGGOmtIiXTHQzth1AYBoFYJWKdMvCta3X8Q7hOAB5vInQwWAyaJPdX1///8LrX0
	 ByDXJGuaigJ5ZCAsxLsAkw3UxGkbysRfJjC4Q95RFi7JRp4BAzialUb8C7kKthtkTe
	 rNqZMc1b4yL42FPa4DfmCl5NQK3a10xYx4cwvFGtmtlD4+7Q720roBGr80yiynuhc8
	 Mtzn2BerWlGsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BC8D2D8DA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 10:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176950823358.20265.7325498621312879562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c21b055a9f102cd2b60ac09802501f11afa8883698cc83f645a33e76db513c3
Date: Tue, 27 Jan 2026 10:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769508233
