Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565E823B607
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761850794; cv=none; b=JYxDTuk7Im5yqrRm5KpP11zh9+hcLJErxPFu4Lmzov+PjE5RcQUAnVNmjwWCmAwi1KLWiQbVidfqlfHUUTIik6AITqmiR+1MJf9v6RIpBCUnszWeVpFUT+3AmMCB4sHqRPDT5Eovu2RyI1hppKPfRpj1ItgQ1jZXttZWKSmLOCI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761850794; c=relaxed/simple;
	bh=x6t3sftzkLrIKb23ys7Qvq8lrTPnJparO778FFQ5Vxo=;
	h=To:Subject:From:Message-Id:Date; b=StBm95KSuV/9XHa34Os+jJLphBJFTSwlTDlrr32e7DKTzLETzG2/DE+r9Ej0yWgWH42FbcGg7eTVP/TyL7Pn+Fj4w7BzLqVXenXmtZ6FAGVvsYid0DAditJ0Sz06eynnwsvE9meXX7vrdDh6BS2aVHPfSCFt9CyCDmbUaN6WwMk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MF9uZ/YF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MF9uZ/YF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A243CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761850793;
	bh=x6t3sftzkLrIKb23ys7Qvq8lrTPnJparO778FFQ5Vxo=;
	h=To:Subject:From:Date:From;
	b=MF9uZ/YFfYr35qtx+4AmNng7TCHkw2PvbRMSsMeCupdSpIc1yfoHprzkSaPKzrmqa
	 /SAnNiORlSoIFDVd+YaNY/4FlHGN+m1NTU8NcCeTEfNidrWbb+n+S0IL/czRieJa6j
	 xZ5LyOysLJ+N/NQh7Ai1lbNL/3JK1LsxxDpelg0hHal3fTfOOGjYz3Be5ES/avlV9U
	 UgORkOQK13XHSb+aCcdmju0wBLqwHHBMn25Sub93VrQR1K5aNQlWaGyz91eSATZX5c
	 n2vQDXzhifAnArQJK2/zAN3XfL+oZPVqbcTSlZiYcseU7HRYXydaWjk1JzITEus1VU
	 7Fk/fcTZ1i9JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91D0DCCF9F8
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176185079357.15541.6025762678651767409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96c3171203aaa6f24c38a6bf99a80d98c3bd2b4c06693d895a0a3f5026814915
Date: Thu, 30 Oct 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761850793
