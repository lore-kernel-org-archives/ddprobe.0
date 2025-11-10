Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 038CF23E34C
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762813194; cv=none; b=QNWZAXR5dyBlyj9yqMUOLRyxjOvHZbOr1+uOU8aGJynak9TE7QdUZGDlJWOjbHLCvgnGZS4n2NJjfI7TSPqeUPKa5zsMJ2D8Ayvhbt56eXY2WmqdqG0uFtB1AETFSMm4SPwqKD+qMfLTvZCAaWNpXi7e94a7/FcREAOZd96FytY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762813194; c=relaxed/simple;
	bh=le7Qbty86cvDtnhq3i+CewOvtB8uikx+KsRrNJXbd4Q=;
	h=To:Subject:From:Message-Id:Date; b=oGn1ggxeRyPGtuNW1Awlb+uI7KAAaJbqs3day+ij43dV0DLaWfgr6PnrRcSwLImdNl7yw6mTohieFZsOCzcpkI2I5j9VRdWlEub/sEFZFiL31qr7zplxjpP+1UY+Mi1o1NMnlOdNT3YFWlp2rTSNLtceE1q27GqjeBnA+Qwv8dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g91pLUpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g91pLUpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F32BC116B1
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762813193;
	bh=le7Qbty86cvDtnhq3i+CewOvtB8uikx+KsRrNJXbd4Q=;
	h=To:Subject:From:Date:From;
	b=g91pLUpLD3+WogUkZcTrPNJC5vAQuWt6FdN3mMsq42XtE92rrczk0URNk3lQ5FaaS
	 vEzaPdsL39b81asMUk0MoxHgYAjPWz3W8gMvEAESUjnc+1w75NcYw/x86FlQWY3klv
	 SV9Wc6NIsHeEqG/iyd5s0E1g/EioXqkGdBTWnda8lpW62jhEoZt7o+85xiwKR7FHjQ
	 Oyavu11NNKq5iwZLf5//0AE1Bi9nMqRuPxC/IvemmqhVAWKjqGwFCOgxYTmlAtW/1M
	 TCpsisMFHw4bMD4FKhbAiWyPgZ6EGO9VULEdCkR3Lewlwa41hhpVCxojXGOmsPeUkU
	 U5czGm7pg5tKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91BDCCCF9E3
	for <ddprobe@lists.linux.dev>; Mon, 10 Nov 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176281319358.26949.1993536080745114962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c473e1ca5e4fd4d7cc51275d5a3d135932eb1a598b73bec3d082290ff22bef7a
Date: Mon, 10 Nov 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762813193
