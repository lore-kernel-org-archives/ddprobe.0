Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2828A2E7186
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765342974; cv=none; b=Xax1Ez1a+LMapLshAckPTtVK3ngJJyQbO4+LJIIFF0pUd79k4x/d0Yg3GHy2n6CWWq7NttwOM+FCdRqI+IZbVfXBduNau0xkAscq0liAesYqev3cyxNoEnot5+uiobp3A6SPPB5AqEjEyV4DpWaMe1+bSA/Ihu3oQFFc6J2H8jQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765342974; c=relaxed/simple;
	bh=8u/FO9GYCoB+y6UXtWgatxZ3RWX1ulJXJug3MelDisY=;
	h=To:Subject:From:Message-Id:Date; b=rZpnL0X6ka+Jx4H3i0PMqfORAlbJYgPdaMd9Wrhrlm0zD5H4a39bSQjrEXeHmUQHJi4XkB792GjBdIwsLix0s6N2q/h6byELLp4mZzarDKv7jJjzDvEnFfjnRPGG03jC5MZ6zWVERm9vJsL+a7BmTmMegCDjMN88xmjbQmsNYkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sFEdXoKL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sFEdXoKL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAFD1C4CEF1
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765342973;
	bh=8u/FO9GYCoB+y6UXtWgatxZ3RWX1ulJXJug3MelDisY=;
	h=To:Subject:From:Date:From;
	b=sFEdXoKLdmeXBJlppQaiKezIGfnBaQmnaJvqvJB0edNGT+x1gNZGtatLbt0gABa64
	 i+d8c8QJgEeEjrOjTK5tLtGmZUg4gZxHc7w9dkzeML5A0ohWBe2gkCwU+Vah7nm+o+
	 f0eNLJVtPu6bzd1J08s32+VfIWpP++xCCQgB1fkTRhlaxado1CZV6rRlxHEM9bgcJE
	 Sc7IJrBP9O93sWnGkG3rMNmPX3E3D77f/BN4Bq6O5NbPuTlPWTMRgjkpD65y5ABTP9
	 IQQdppfpoXRHxFclQiivPDbKDw5buVhukIFQSU4eQlAUDvESLm2F0m+iX22C7GF1x1
	 Xi4qWSgbSUJ3g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A3BD2CE17
	for <ddprobe@lists.linux.dev>; Wed, 10 Dec 2025 05:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176534297359.8972.9435144346900256983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 256ba3a0be453875c8dc78ad8231109a20208288a2957ea0c2f7345c3d78e7ee
Date: Wed, 10 Dec 2025 05:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765342973
