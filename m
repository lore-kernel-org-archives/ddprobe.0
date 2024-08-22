Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 181281CB30F
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1724342754; cv=none; b=espluoYb9a2mVqHMiRmmsgZFTtLeJ0sZfDvTGEPv2JUXsLeNDYQ9eWq9O565a8CfA5i0zRlaqnAkda6VKGUSK/M4JW2TyGW3cl0tVoWs9DFFKGX1uCBjzzBG4+OffVDYX8yfdKHzX6+42js1ZSES4i4+Kc8NqmKQCQwGsu5Qr14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1724342754; c=relaxed/simple;
	bh=Y2wSpzVbV/BqHCa8bjE+JfBYJ/4e2xqJ6N6JDtBL9Z8=;
	h=To:Subject:From:Message-Id:Date; b=nisFU+HuOvwNlsmlBRlajpwPP+llzOvbR4BKTDE/tYGOudMfPmHK2JFFf0hDn74mVWzTUJ+Ui0R7EB6nqV+3Vvk3iJeC5+7hwPGpdL//uevWTaakSALT70ZAJILt7MocrhyakcSihXyDenBmsWZN1rxypNJfq10ErcUKhn4a3G4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QleetrxI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QleetrxI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD66EC4AF0B
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1724342753;
	bh=Y2wSpzVbV/BqHCa8bjE+JfBYJ/4e2xqJ6N6JDtBL9Z8=;
	h=To:Subject:From:Date:From;
	b=QleetrxI5PoJAuZqgUMVpGnbc32IvSodDG3l5p2R7HB/d7hYpoR7wq/y1YAvXfyEB
	 /AIs1eTmcT7a07Mhg787MHdL6UYD/gDQlWXYeRQ3R2M/w6GEQ/GU/H7bqxFmSf+GnD
	 VpgMKogFhbTqwLMxqVpb/vc9PV0kgTHMuYZ9X2CfH3z0x4xBQgkCYfdeb/KXPcad1I
	 /n25k9v6aFZfPkCeWhMesD7KwWmBQ5KsPZF7Qbxt3pSrPBgRmVzAsr93hSICtQm5WV
	 E2i/7Q7WbUYc4V39whQ0bDZiFlfCO2/Nf2z5vtvdqoYfpIJjS5IeRoq6fLcXVDdOl0
	 cz1Xug1jUTjhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9ACBDC3DA4A
	for <ddprobe@lists.linux.dev>; Thu, 22 Aug 2024 16:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172434275361.19804.5891988892659428255.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 480f836b8cb50d4fde5887038b252432971bca44fc4db6b91a54959b9003566b
Date: Thu, 22 Aug 2024 16:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1724342753
