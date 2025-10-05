Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 429A3191F98
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759695596; cv=none; b=dq1Vfc+jgYxQrZ79xbHmxOYob7oXDLPkQxAhhU+QNcFOZnK8Dfjm2zJR1jOe5fWmzIbEA2AcB9ButS7lBdRAF9WdGOI2pNkBfAfGzkudV39Lj9FyqGgrqUoo+XhP+YmZxbgEkQXz0SG713tRaApH+/sBGaUCMHrnDkEwz63ql+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759695596; c=relaxed/simple;
	bh=IutWZgSB0KdVi1iinEPJ30Jql83yUnhIS4Iqfn8C41E=;
	h=To:Subject:From:Message-Id:Date; b=c3AFxiBnISsIcnBtzQNhuwqKgezgr9D5Ko2Fj1qHKqx4a5V61bJGxZWKakUWrfsUemsydSSWK0FnvrPsZ8ALi0FTkn1/oXmbis7fyHftM4LFt3z/bpDTyPWPiCUcpW4uuH2iByloAbUVn44T1gDunSgmRnCAei8Y4aP7aZ5d5rI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g2IITOcX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g2IITOcX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D5DC4CEF4
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759695593;
	bh=IutWZgSB0KdVi1iinEPJ30Jql83yUnhIS4Iqfn8C41E=;
	h=To:Subject:From:Date:From;
	b=g2IITOcX3vdQ5zyXb4oPEz3dwfYw9ownehF8ifXs/w0VqB6Ep0V6e2LXdqK3FIJXq
	 xeQ5XESD7rve+d+l9ULt7XJ+tnarvzMrxUZZCyF5l2AKoU8jO8lLiuyxcGP0XjILrp
	 4O51qsQDI1KWgD3jFBRKDl6E92le4f7RCm2wnjfERPuE7PoSBcjN6x9BL97MgEKZD2
	 8DsCfT50aH/0QfLhbCoRh7G4BLadYsNIxzvLXg/cLULVfoOnVoMkuO8VYKVd88qC+o
	 R8/r5nUb5YH0aJi9lZX594Hcqxu0Pd1AJBXJmY9mZIDVnNZdzcsBodjkJwcuQrfzA1
	 OA1sZZezouJmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 942F7CAC5B8
	for <ddprobe@lists.linux.dev>; Sun,  5 Oct 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175969559359.15909.4393315197642102679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95c4d09768ec0cd3aa2f36877ca5ffd58f31e9d8b0973635457c988271a6aaaf
Date: Sun, 05 Oct 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759695593
