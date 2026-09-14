Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B4ECB368D51
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:00:38 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789387238; cv=none; b=CGsVuezXWOt222zYRrYUr6dCp4uPRBx8NFgsUhpZ+NRAEIR30AoIecK/4RJDnxY3YrLsvryXUC+BdcVURn7amnPH60Aep7w8i7bEdagQF4x0Ta6iDVqN49AmhujgL+iHwZqwxMNVUeU6kPrkSCfNp70LVlxS2W5QZpP3V5/JVt0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789387238; c=relaxed/simple;
	bh=olI8Idn0O+j5rgGwHgEEzoRhprKjXcKPqlabe2MyIP8=;
	h=To:Subject:From:Message-Id:Date; b=VJvSGNdmQEmx/vTOY01y6ELrayDHCVZLeD65D/TqKmnYr1e84IZzyCw25hLAs/cIZ6XmMdrj2+5HxAANBKczVH7oG7VtMbZ4GsL/N0e7ROCk9royJGkdrJ36zJ45HMUH0IUxM7Kcl97Cvou27Pi2Dn+moImrIaxdjogxsM7QGKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SupJt7XU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SupJt7XU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFA9EC2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789387233;
	bh=olI8Idn0O+j5rgGwHgEEzoRhprKjXcKPqlabe2MyIP8=;
	h=To:Subject:From:Date:From;
	b=SupJt7XUnazd+KxVLuOPT259R7a0fxxlB43O5hTRj710NCK9QcgMK+G2eNLoAkuaL
	 80wl9C09bVXadzmG7S2WkWW7emML4EtthqTnPqklLjUyvFyjL5kz50FqHphtqS7LKb
	 8YdXP8lJfTXXvYnwZRPXsOTVuZhPXevVyCq3iCdo2NdfocAoChdRPOGxZI8R9rotGb
	 crOV2TlnwB5M+LplnbuUqAnZ6UDICH1O0RLI+9C2xvQLmPR7b43d74Y2KofwskUI7Y
	 My2H/PMn67ko/vxzvE/fi3xdwy3gBrfoNQHXCx/r1zYRYWOpgYkMtDk2YvpnnSR3yJ
	 cJmvEJUv56dUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB7C5C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 12:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178938723369.28795.17617743529494472487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a1ae1cdf4affff5364addd674f563e9329231bf34d9536cbb54521baffb93293
Date: Mon, 14 Sep 2026 12:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789387233
