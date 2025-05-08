Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285B421D3C9
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746688194; cv=none; b=bzZwPbO1s/jaoR45FDuSPzxeIpEH9s+DyYtLl0hJydN7N/FBZ3qNQ8Z1CQpxQutZo+NVMO5oAAz0zTR6cYs+Hm0Uy/hsV8qXFV5rmbs64XH24zhPmch1sesM/m2WMlXSGf08IZPS41wrw+S+OsFw9oe/89/WuabF2oBsn623R2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746688194; c=relaxed/simple;
	bh=ufm12cSe6kbDzWrUHbjq4IJBYSl+pWCnl9luo5xXEMo=;
	h=To:Subject:From:Message-Id:Date; b=pwZpU1pAQsaO9DGBv4pkJTibzwi2p7cS9i6bWYTA1C3AMy6ML/b23KzsmPBaxH5p1th9YXE3ydp4b3FC4q3tj8ARwvz0q8glFotANUMR1oZiip0Nqn9jCUDnslRRH4xY1C2OY4JzXs94BJPAtQnjbnfEa4K/ndta7r3qG3fVO+Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MIOI7BcH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MIOI7BcH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E306C4CEEE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746688193;
	bh=ufm12cSe6kbDzWrUHbjq4IJBYSl+pWCnl9luo5xXEMo=;
	h=To:Subject:From:Date:From;
	b=MIOI7BcHCem+d6FHpcfeU78U/U2di19tM2Bn1e5vr/N0qKc2empGDzbcZhuy7ehWT
	 u/8l4gBQKgTa035cJH5OZUWEyCqqrLD31b8M+jhP/ihDKXzMReScC3jWq/hGd4ktrF
	 TJv7+bHwvYRp9gzxKJEBsfcPD4DkOx7IEOp3a9DFYjk5dhY3mW7c/iWXAwjLSa9Wel
	 FX96a87Ng5OQUPqcdWY9gY2vByoBfwXwYoLpoaaarmKHdhyBKpU+6DX7kv+38DoM3c
	 lkhIH5OpApqabAoS6jPAPq/ZUxqtULI/zdgNZe2rpA6d2KJzeUuP7WLzvoXEnCniS+
	 2BWwJ66WwreUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1D8C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174668819357.26533.3013305576370005526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3c9c159d1194f6a2309fcc20ce68e716794fdad1d220915b8e575101cad3e8
Date: Thu, 08 May 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746688193
