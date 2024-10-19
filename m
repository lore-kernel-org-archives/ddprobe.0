Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E46F137E
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 03:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729307754; cv=none; b=uRBd2odCsdvCGre8j16IvI4F87oNsRaVnNLJB9JvfeAczY8u4FBNZ+iEnC1yyxvWdgt5H1B4qKOgGiCCRqKfiarlMtTVr7sATCoIEdFmfNCJzuJXLHcM2iAKv3uLoQ8BDp+3Qtdzw5O0O9s/2EQ2R/DmJO239SkHafKT2K+Rszk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729307754; c=relaxed/simple;
	bh=SxOFSSYEQbIXv6+CCco26OGYhziqxTQx/GytSgFKBTA=;
	h=To:Subject:From:Message-Id:Date; b=rRVdX2Dqdz61iUG6ebM7zVN2eBsL8EjD4PGfgHz2Jek29j9uAVVwojCeWVWAXqOrv+EIBQ/vBTtVVlsH3/nT/fHcF35WXPHbThBiDHqSBjKrBw/NtD0N+fMxVtPfRe8KB4YLGWgWaJalneU6yGLVNShFn0UIs8mVLeKx/atM3KY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HaVg5y+m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HaVg5y+m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6C49C4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 03:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729307753;
	bh=SxOFSSYEQbIXv6+CCco26OGYhziqxTQx/GytSgFKBTA=;
	h=To:Subject:From:Date:From;
	b=HaVg5y+mmjPxotYO5s40P3yGZAtHtHRDTeGeEq4ZhDgFyVe3fj14dZ+M+gAM4Syj4
	 96h5Rf5Fa4rO8s+1mGOxitP+oWYUQmxPn3lkf9QhW5y5fR6Aqk9lScuPPSYcJn1MkN
	 xabmI+TppSBUddh5MMSidbE8wIFfrCsCIIZNhu+Z+HGN+1nUgL8sbihKjNgY67r2ff
	 J4OET+6llxzT7Y+FGHSp5NXp8oiSBz4TSRMHXoMD4cHbsLnw+Uq/0D/djyt4f7y6XP
	 /WdbWWaT0umNIWk7W1uR+x/wM9IQWDi11bxKbdO2n+CTrru/4SCPujb9YTvAcheah5
	 7qUd8EDBJRO7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D963D3E1A8
	for <ddprobe@lists.linux.dev>; Sat, 19 Oct 2024 03:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172930775358.7754.12600726461818113759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a01c22d40d1ba3d1aa865c77c10365e757c755d9b56c6d24a83e78750bf8d8df
Date: Sat, 19 Oct 2024 03:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729307753
