Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 09EAE259C92
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768029234; cv=none; b=FyDwCmjLzbiSP0nIIvNKNdX9J2tU2Sh5JkVNCAnD8vnQjYOheEc6T6hv6/ta5SLf6cbMPzqHweWpcbYzNNubxgilZsoOfBqDdkdG0HNCWRcDom712UINRqqoOltsbBJ/e79YExHWlIVryU+CwaPEEyG0oWkyPopFFRQ5oC/zZTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768029234; c=relaxed/simple;
	bh=MecTfBQjLWE20ppqQkcQc37ALmVg36YlJqD1H11g8Zw=;
	h=To:Subject:From:Message-Id:Date; b=cHDJVU1nNSjeQ/fmMpx6pCQgqhdhEIhQhCC3SF2Gs9m6jcbdEdvFMwZr11DuRXy6PMx1BzmJKRZlO6yRM5ELVQioAoUb9JEE9xlo/Xvvjl6YGk1b3pHNrsYglwowTdsFJMnjgIdYk2I3ajQHCHBUFnQWyIhDDjN8iR9blYpBqDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mGkHEyX2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mGkHEyX2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B2DC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768029233;
	bh=MecTfBQjLWE20ppqQkcQc37ALmVg36YlJqD1H11g8Zw=;
	h=To:Subject:From:Date:From;
	b=mGkHEyX2grCim18X50Y2AbvQHCBL1NBSXpjjhfQ6Sb3WS9qxTtK7/IfXgGcWeJtec
	 25Q1h6U4SBeC2nfzQjGGwkRuBASiqsdu9BU8C90UYXEeekbRSrLyYcQ6UQOBgGG5cm
	 F3KJqc1b2nYGNXPpMtHN7s8FHM4VggGZULpebvClJLnmT7CVh34OH3fMcOuEocxgGr
	 /KdHm2OuUZ9kBLJ6kPuYG24E6Eb6Z2+UKJNv9Ygx+lZ2y1dAofJo8P067nj2UcRHS7
	 oTz3gnK4nKriQOSf9pw4yKXPwaCe0MDJlQs0rixtC5RfBVehRZSNFXvk/gw8Hs6AKe
	 pyOUcy/s3r0zA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 950BBD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176802923357.12228.14496320217898184974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f2149fdbee3a4dc7661ac0713fb7e8e225fc8f06d4e8639c15868df6e85f8cc9
Date: Sat, 10 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768029233
