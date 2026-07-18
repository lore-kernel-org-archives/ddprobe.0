Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FA5343F0B5
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:08:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784347714; cv=none; b=uRdwFteyaU7COOo7LHjP4I0idltSmlnFVxUS+2VrXNT3MqEX3n1D625nvFLXnWLYmA1lStIkw497vJIxaHkPzTIIBSKF6yA9gpqkRRvXzq8Z4yqcM/ut6Rw3Gy3bo9XuTZcXjPehcnA+pN/Q86bwiV5jMMVprPmW340qwUkP0OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784347714; c=relaxed/simple;
	bh=u4rU885Z8IIVg/M+v00NGQ7OQK9/t1N6UgcRNKJShrk=;
	h=To:Subject:From:Message-Id:Date; b=o7nIhpRVv3FRLalcUxAKt7nclYQ+91LMbOvflyYxKc5vNzM4LY6fUltcn1Tl3jMEOenz+KQS6zPa0VTNxHfSIztSUZ0+kc2Z+8SfS1fF3Eh4jX70Lj4u8tMubqx7ouus1rD3q6Z3aTTsq1oTbKDdsWmK7Y7FDKmBA01kCiyuTds=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KXtHxT1h; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KXtHxT1h"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD2A8C2BCB7
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784347713;
	bh=u4rU885Z8IIVg/M+v00NGQ7OQK9/t1N6UgcRNKJShrk=;
	h=To:Subject:From:Date:From;
	b=KXtHxT1hO8n2iXhK+sSy0NFR43o7dQskOD2r7KCXuBDQAtAqfG8IwGMrjsujBqLgo
	 uJHTx59WL2hlFQNLBOg0QUmnDI2GZoq+ft1iih/lrEboqdlcwdUDVN+UE22+LGtdLl
	 4p2cSbp+tqKIwUKbtS/AAtrWpFYWkAiSAtQttMAB+3MnlWymEmTXgJq9O0aEUbrdmj
	 W5RAmWqaaWCQOZmy/H8f7Pb8t2kEsDnO59Jay5Sz4NIqS8Pt47NKat9/AjdY6QlIWy
	 xl0ORNjH5zJmINpzAEMquVTOwvZ670LYxLm0BDY76seEqcfeCGYV/qMa67M5O/Cynr
	 AQ1bJ/7+dC8Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B00D6C4451C
	for <ddprobe@lists.linux.dev>; Sat, 18 Jul 2026 04:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178434771369.16744.14165540797422585219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed92e59a2a5f37a1b73086b4d8ce1110f617a1f6a8e664684040f40b2a13fe2c
Date: Sat, 18 Jul 2026 04:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784347713
