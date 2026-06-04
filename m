Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DD2B3DB30D
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780571074; cv=none; b=qw4qoSIv790/z9TsC8HpU1cck78Ac67R5Ad1QB1EYWD+hValD8QYXsWs9bmAvoMTURKlI8s77+5J0oLltfWZjMXcyFP6XrVidbzsmmBp5cW9TEQ8wv5mo0HJrbK0gE9Ds7QhaxzKDRiCGjwNN7huSyMSI/rZk37Q/OTL9gtmK6c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780571074; c=relaxed/simple;
	bh=UFgqTTjgvOg4fflPDqF2jqrtK5pf9U2yE70+908vzwc=;
	h=To:Subject:From:Message-Id:Date; b=f25zDzxBOesbyj6wB0TjHF8l1Fi5vipqwU7DzITNR9+Hw4PVWFGVh354RdzoOqZheqLM51669VLiiedyggvbh5c7Dl4OiNA3ExUgfATr3QKIsuz0N03ALysc3z1QttnKxgM9QEsAfsKXGICF9Lou25DXIJj+hY7Pa3E7JKSRqgE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjCAljGP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjCAljGP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C58BFC2BCB9
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780571073;
	bh=UFgqTTjgvOg4fflPDqF2jqrtK5pf9U2yE70+908vzwc=;
	h=To:Subject:From:Date:From;
	b=gjCAljGPY9ajPtmJwEJ1wqRen0sEIp7cgB3BRJkOy/VMW0nz8g1pOOVKqvBNbIex/
	 72B3lOtuqQkH59OuI/bKnlSyp6JooXghC+c062bnR30QQFAz02E0gdujSL0YsywZOF
	 8DdCzdUR0e66on1R8AWYxcBQgLOVGUoQgeKV6ov3cUnsijdFb63Aj+s3HO3W+7lV85
	 HvRvIyjG1k+9gaoge8gU0G4ZTXRDsA4UG/h//GcVN6mBNAOC8PLIT+aAkWvmpOeE2y
	 0hrWtNbLmXZLxYf7yYgPdI7Hmwref0fcE/w+Ho9UsHaI9iDlTl8J8t5N892lPFTglC
	 tCObtGkZ2Z/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB063CD6E57
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 11:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178057107369.4784.16967549537229696011.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 56e65c9fbdc09a2c4615989b17e98c3641e3b5216374ed03349819cc70ae4176
Date: Thu, 04 Jun 2026 11:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780571073
