Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD89262A6
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761502194; cv=none; b=YMUESgTsrTvOUR8LHu13NgmV/D6p08D07XDhMpPLvnRrJUpTQ9c8MezVxzwCM0wuedCgFx9qjPvTZsOwiTKsj4jEvplFqgfCljcCixtRjp/w+MsXPdYQsyvpQrLoyuo3ehnq2GVwNDNN14o48ncjxyzsofCTF2VanrNY44udYkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761502194; c=relaxed/simple;
	bh=kLwlayow1OTXYfRShR5qBcJj8QeshfIPy/tDu/HRQp0=;
	h=To:Subject:From:Message-Id:Date; b=APCVHE19h4MEY+i8hI54qhDwMGBXlTOK9cM0b8O3qudCxK+fLEYa6gx1NlrjrwqJcaFXa/2GATfdu0z3bKtKZElbSURtX6tB7n+qvBIhnDoJVlSARmmg9MmB7Ypd+9LLFnMfgRsaH/sgXxUIFg8pk1ALxJSY6NncwOfNs9x5vw0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RhUty6oN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RhUty6oN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5AD5C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761502193;
	bh=kLwlayow1OTXYfRShR5qBcJj8QeshfIPy/tDu/HRQp0=;
	h=To:Subject:From:Date:From;
	b=RhUty6oNMkJizpc/bzT2IoNU+DUlP0fawB04Igz+6z9NW8O9GvLo5hGPlLQ7lV1HK
	 ggSp2O3yBhkJrfG1/sY6eqG/790SgbrTkokBHOfwb8NxOvFlk8U7adfuYq80a9aviP
	 Bnuel1x38pKcj0NTQxVqLtOyfvk6gaamctVZ2eLVfnJP/8TqeMXXWGotKJKBpjzYHP
	 dn+i9CwnEpwxAPo0orLR3fY5KhjtKjYlrYQgLf6vNRmrgN1F/hkIh4v8odTjSwdxzJ
	 tAY44Vw2VXsGdWYw11gtnTpdLFB1ijX00BDHW+H+LflER4sIN0BcbZdszsU/vCaqJ3
	 +bFqAhvvuPmMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944C1CCF9E9
	for <ddprobe@lists.linux.dev>; Sun, 26 Oct 2025 18:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176150219357.2348.18065702058432456126.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f2c58dcff056af88763e77c6f448a6b26ef7803b55a3c6761e47f58a1d643da
Date: Sun, 26 Oct 2025 18:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761502193
