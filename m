Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 350CB4C79
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739926734; cv=none; b=LoMeOEfauEU96K1DnJUUJlm34ryaLA7PoJBS7Ar9LkDptYdNdVZCZhrYWSHsCPTNBT5/U9kPSKjC7ydT1Zr89wCB8Z7A1CdBNimHJoTPjJ6PGzXk3w8UhiinGc8XN0mf0UANs4MGsyQ4WWRkKjoasgdNHNvz8GEXRjB18JByPgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739926734; c=relaxed/simple;
	bh=g2huk6XqsvCO0qXsHKTrZ0lNcft7MhA4eLX3V5BvLCY=;
	h=To:Subject:From:Message-Id:Date; b=aw2xdutbX3SwaOQ0SNUWaDGR/Wzw8/g7CyRXkui9aDe5RfpsTRlxmY9PottffcNaPeIvAVHHkS984IGsW2bb4fLaubg75nkueiek6pKVko6uANzuCtflbg8zTuxkb4e8Ey7/H/6v5WaTLZ/DJHOifsgHz/3VahaS7mYxGzNjMfs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWcFAQnj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWcFAQnj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC9BEC4CEE6
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739926733;
	bh=g2huk6XqsvCO0qXsHKTrZ0lNcft7MhA4eLX3V5BvLCY=;
	h=To:Subject:From:Date:From;
	b=SWcFAQnjAg+OD5pMfDxUsNp8IkOL9+moGNJePQoWxawOc/nnQQbL8GIA6upVosHF1
	 Cq180RBzA41ozDp+8Uc7SzH4bo+uleyNzBFK8ql/kEB23eiqcXEHwSQhjIDApOY7IJ
	 74zWHhcZfHOSqFNduaqALxXp+Pd4fZpqPyFakZfXJQVxN+jV6DOa39pjAuhhwu4+if
	 m4xli73pK14RHHSafGm6ES3ci9fwOcqfy+JvijuO8Ry++kEZooN/dS8ABcmbCIvXIR
	 imLOqUWZ74pXa8WwanwvbTXFwpRyjZ6dyiLCb/V/pJG+ksdiDlY+LWIffC51DGCN8A
	 Bsa9VsSU3wxZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96A7DC021AD
	for <ddprobe@lists.linux.dev>; Wed, 19 Feb 2025 00:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173992673360.22707.7075629736345553639.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b92da1a0aa6d852e0749c6784a0715923713fe583598a43bbdb96a3379e6baf3
Date: Wed, 19 Feb 2025 00:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739926733
