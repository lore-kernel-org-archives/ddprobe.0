Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DD14A32
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746370194; cv=none; b=nWUmppb9Mm8J2bjjsu7a8yUKwE21VFRQpAvKqeK/+q5d45ebg7RZD2vvHe3bkp0uCSg9HjiIgcMPxoP8FaUt/kMX0xYknrHKbr3i+/FLj3OVZqN8tyWlC/00+kNVppgLkf7jSKIP2DT7g4FCcB3RVwQaGBzXCwbAfCRQU74C13M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746370194; c=relaxed/simple;
	bh=dsK+zrYpBdihiaEQL35mlJQU+B/GlShgFkbnVfWSg0c=;
	h=To:Subject:From:Message-Id:Date; b=AAOP9mOTSn1NAQ/dByNRPhAF8xtbnJ5bmiJnRBdipHcZCxwVFPHotYhS41mXIUac8POP+Aa7ejc7cdCoPjEmfh58COhsb0ctJXjhCNcDD7saK660fsgQyAS0UiVLSnJfXo7AIlnnFmCPgzjZj3mHHHDl5Ln0iogFuwvTDQgZlYU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ETaD60g0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ETaD60g0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DD57C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746370193;
	bh=dsK+zrYpBdihiaEQL35mlJQU+B/GlShgFkbnVfWSg0c=;
	h=To:Subject:From:Date:From;
	b=ETaD60g0ZX5qkV2C3zqV3K/rkKsZzmM4HAeSTHtiHP2chyFBt7KuD3lPJ7kUU/ooz
	 yXJJ1UAXlHCE2sCDVBs2ElM0OPp5siYKngANCNlN8Gg5zlNmG8kshcz+FCztDMmyUi
	 pq2i3tJKj0k1sFRYIN8AFgaf0ifwIqH7Cq4UPEHS1TIuWg3ZC5QN7XcTOlK6O7Aido
	 hy/fhI3MqAIuQR2i9jLKqka0cPFORp2btNHmZTisHE6Z83M9GYxFwqN2aBdMFDKmZg
	 lVYI9CKUYaON0hFGBMO5Pqg3Xsg/FWRceF9hsRtM1VcsuRJPCgLQRpfazD8NdnRY8a
	 O5CWvUl+ZcJIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E522C3ABAC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174637019357.32396.15152058045462547743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d55e594cfe66a378aadf0b1bf4f960a85899c62a55e1a1b11e81462114e3083d
Date: Sun, 04 May 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746370193
