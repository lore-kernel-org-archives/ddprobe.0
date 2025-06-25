Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 330E12877FD
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750841994; cv=none; b=KiMxM8fgtMkRB42fUhD2PXhx+D2U+AAZLzSf21W/stY+TwjujnZwARWOHu1PUvQk1lVoZe4JAsW0s1Xj7qopXpXiibUO+D5bxCO+7uAvSBfw1Ce7gBAfAPLkslzWZvRWWMH0s8UE/+xkSoRQLnXhKOtTBLP2WMbUsq1kFp3z0Nk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750841994; c=relaxed/simple;
	bh=a8EEUe/GYgVAZvG1SL+2dDKHKXvFaoxPPPp+ezWqWeI=;
	h=To:Subject:From:Message-Id:Date; b=kgKEeTdEFgrFhcn1vcbVEVAxYwyrglE1K1JxH+mvkqJ/f1tuYqvjkZKyieFd2uxGH/c+J23qPs/qbeGGgA38FpPXtGRPEQnhAEE32pqASr4GYpXp+sCCilWEwLrVnpri9WkPiKMyD7dE9siMe0lxSWzz5gvRngs7CR/2fZpEFDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F5XCvQgL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F5XCvQgL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E20FC4CEEA
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750841993;
	bh=a8EEUe/GYgVAZvG1SL+2dDKHKXvFaoxPPPp+ezWqWeI=;
	h=To:Subject:From:Date:From;
	b=F5XCvQgLLm4F56sHJrnW044aZ6XhO9boJsvELMQAogngjNC7cKkE0/ejwUIz3VzfA
	 sRIYxmTQ4kxswRJGhepAFBWwaowiAr9NBFN8gwDNitgpsz6UKsvN09mmjk5zVSkB/3
	 b/9OVDvVeTfRCDobvikk449CyTJrxnr6+ra/kXlQyTPBQSXMjJest9HDDIkI8ue3dj
	 juesbsguP9YkVf+KS7swj2T+5M0ID17gBpg87LlbRFM1p7aojBDtcrbZThLpYnX6Bo
	 wSjtHBEFjbUtf1QHP4E6ZKtIVQdRFD+K3ODv77IaGNdYINraGwMGDuRFy/+Yrx4C/U
	 Oe65NKGiLeR5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5AFC7115C
	for <ddprobe@lists.linux.dev>; Wed, 25 Jun 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175084199357.21246.11335763138249126898.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 69944045c965adfc692f025eba3843902ae76d42ac69cc0b89e5d63d5751ee76
Date: Wed, 25 Jun 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750841993
