Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54F1A4562A9
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787050234; cv=none; b=h3skkiQGvfL4CdMwYTPQvno161LUdWvQ654q0rlLjtUiUDSUYKG+gwNyK3uItZhsgcnUQi1y+7B0b8sS1CpTy2CtAbH33t8LHMeUDdUyTOjkZQsNT7O0yvHXFQveai/qH5nBP0Q7hnHtpFuCyBeo/ySYTW2T9HPcWUlH4tm/3Yk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787050234; c=relaxed/simple;
	bh=aMG+uWeifD4d4u71hxshuqKlOfd1zcXoiJ5u/smaGx8=;
	h=To:Subject:From:Message-Id:Date; b=VL+M7GwZw1kTaOLC/xUeh6uwQKvm+WnPgpCyuYPijPj3Wq9nwsIclJoeperohYalLDt0L2vl4MOdfnPgu3zH6imGmtx7DN1f0bmzgoHomJvN014ipZZSrlUBZ1bDKFJMzMzGYEWOeDMfh4D9LwI8fNj1JIN0EOc+WJZEz+oK1hE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=faG/GLrs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="faG/GLrs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEF2EC19425
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787050233;
	bh=aMG+uWeifD4d4u71hxshuqKlOfd1zcXoiJ5u/smaGx8=;
	h=To:Subject:From:Date:From;
	b=faG/GLrsIMU3o4Wt9ucwxIFvOSzTJwjTsMewGXZ+YKew0xVGqVc/U1bHXkyfnaSTP
	 K+FHj68dZIgRRv7iTFrlTEJFahwwal073Ckxl6mCs+HJak+U3VNsabxU0KBq2mc36O
	 bzbPHK+T6uogtneFzCxXpgy/zEEd/3vahAdfBWQQDeyIwZufyKQzhMrrgdFNTgZar0
	 QiXCxsEPYGaFi0Rsqas+WxC4PQn1NExbr1g8+Abynmsc5RjXX4I5XZTD+2owAsraGq
	 X1BimAIiEvcHctDSmkbqKcncG1ON9fHKu961XCrB14tzXXjhJODcDKCddUBfzstpkx
	 +/O9MOYIg/wyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAB17C5DF70
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705023369.8193.7413946046292184389.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a1b140b8f62576e784a9304f3176c13aa2a1934bf9077570960b8095c5c2c59
Date: Tue, 18 Aug 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787050233
