Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2CE13A3F7
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760796594; cv=none; b=ARl99jsEst9xlDY2dQqyOMtktWihdmK3hH699Cg3UdH1HNGw5LMv8Ssty04eX9xR8SaRGWIysvqe0wVsXt/fCDnsVjebqH0yKxVDgo/hR0Lmwrn9PyaamrLNwc8mYKGEn2xPmqxHwedHVgp4OoqOjn1hJqyIEOzk72Kc1fUY7KY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760796594; c=relaxed/simple;
	bh=lbU/T2CU99IXErp+6wSuF507WAgjRFlCCdlNquqN5fA=;
	h=To:Subject:From:Message-Id:Date; b=ElLOW0ciKk6krjVpRMiOyVqSNo4ainsV9O/hUeEjss6q1JcX9Lzn8/SFpPM9Ajc7mOMKjsaZpQtNQw/INzfj9Xg2rfhRSdIbH8HwfwhXF6obTT8XKZfC9Ci1yn9Ek8XCVjJB/LsfXSlxHg2IaB0uIN14vC8yyB1LYuWm7BDi9qw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZReVF3YQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZReVF3YQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A23B0C4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760796593;
	bh=lbU/T2CU99IXErp+6wSuF507WAgjRFlCCdlNquqN5fA=;
	h=To:Subject:From:Date:From;
	b=ZReVF3YQdCX14p+FjpZ2aRxleN4mvcB/gS5uANpGL08KoooPqoc9efiAvs3xOuCNH
	 /IHAGptDsIcktqr6lx0eqOqelAsLTS4wmHfFpsz0eS8ikSP3WXJ2sU/XkvPOKIP/eG
	 tWqJ/5a9RLeOWQS0f5EiqqRqgWEL5PQvXvbWWolG4Q77wQLF1TA76ZkQaqRanCDdjB
	 VkqnfGf2+svxwNzSJrjvjp0CtrcPE0TPOdaQtxh+D91z1q/PMLe7TRTQ1Gv3XPwXAd
	 E19uVF1AnVQKDdW9G21+AnAti1uZQiQePfYJ0VSQJ5Ccvvc09M9dhVjwyXUE4VuXjm
	 aOAIq52fBZcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9045CCCD193
	for <ddprobe@lists.linux.dev>; Sat, 18 Oct 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176079659358.6328.1397350118654914974.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61a857e031b64c3ae9bcb1b7a2dc1160d89992708437dc1334d0f7c2ed9544a3
Date: Sat, 18 Oct 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760796593
