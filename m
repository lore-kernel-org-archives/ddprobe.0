Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15C0524DCE5
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757113794; cv=none; b=uuDcMhO1pLgAJMk4iRRnO6F59+nSdWmzg+h+WDS6FaMpbeDQmCt1GOEUVPwNTp/GK05E0K1GrSGa8fI31L6tU/xkRVIBluQUvn26+a/mQAdRlfyxyOfCxm3EQsayulG9DKG+bPazCOiSHrhGRYHo+n0Ol1Y1xzK10s3xeVJzTqw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757113794; c=relaxed/simple;
	bh=mplQ2DCu/3uSBJwqol3AkXh+KM/V8F354sAUkBxUzVs=;
	h=To:Subject:From:Message-Id:Date; b=SY/syONlUVqFhFE15Av6jnWcQdy4MF0AMZVKDiSA2J+dIVEuw3/ODWeHeiSGDRnlJHbQgY7piG5ihmcRpepp7sYXNjEw378syVHEEeO0QgvWRDaRMNJ73+xZH0kTFe84d5RrUSn/J9udkh59AtTr2bwgEg6qYvQg3a7HLUSymTM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z7a5aij7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z7a5aij7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A347BC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757113793;
	bh=mplQ2DCu/3uSBJwqol3AkXh+KM/V8F354sAUkBxUzVs=;
	h=To:Subject:From:Date:From;
	b=Z7a5aij7VKqoNKI1zzOJNOnDbs41b4akKr7yxv1GU1eO9bmFgEWfKWL6ErzAR8Umb
	 zgXQM39bEUBMk+13MvWLZLj1WTPi1MpY1cVkSly99zC3G9EyFMAY/21zX5SRuPpvHS
	 qkl6gwUmJx1uFmxjsl6//3WLXWxu1oY759WB8TSkLANPkL7U51WA1GLxo1/KTfOO8x
	 2I9YER8oBjE/SrSxaXUILz9p5fG3WBNEhsFe9wu1kVD6OCNHEHF+y8x6RQouXKFaH7
	 pw8T+EvhcG6FNZZVynhoKoF5Y664vg2GL6qff3zW7qb9O/RtzD1Ke6faJEAS03sFLu
	 lUiAmS/KZQ+hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91050CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711379358.11023.498538896968025678.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8a287c1f722031b4e6ccab7c37a73f5670397dd6e99865911452bcdada5066
Date: Fri, 05 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757113793
