Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44BE126281
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757640594; cv=none; b=sNalBWoRtgKgc5GpfqbVvCFgimmqre12Mcyq3vzGFadh4uWP3ESy6tzL2MKDlkFg1sxPtrh4ex0VPey+VS7ufKdxmk9uB+Wj1j8G35G8f5h+rVuGCurEcJYyS5KbTRdEjRgtxUFa0ZH4bfrqJwGr0Q4tiMuHTRgpArxFKNqFHi4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757640594; c=relaxed/simple;
	bh=KIYTjos5fUOQT04D47eXtSFLHdvuo75mo/XYFt8qXqI=;
	h=To:Subject:From:Message-Id:Date; b=G+7AdcZcDk9ad9ye/krlB7GQBdcUZ3gurruemhdvvBrrF+rCNNxeUUf2gOfSc7a+1zNW+ruKlx6LcPHOIcZR2FA9Kt0BxSpUeybBqFTe2NsWlLxb/KoQWpp0S2kaCBnoon90qLltqcIJkQv3CT29Z345ATuphAn/wHQY0Z3dnNE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6IG3XUO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6IG3XUO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5866C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757640593;
	bh=KIYTjos5fUOQT04D47eXtSFLHdvuo75mo/XYFt8qXqI=;
	h=To:Subject:From:Date:From;
	b=F6IG3XUO/zQCWYQ66zfxYk9Ba6G+dtFrWtGZcOCK9Ir8sjf7FKSCWrKpfhi9t6fx0
	 HOrGmvS78RD5yYM+UjrJED8+E+IPTkU8tJUD86wYxOfaahwO/+Ge0WBXABD6/2yA6I
	 NZvW/6n3tb73LJi6i4hmZEYYv25PcH5Ne1CwQOpFP/b4CG8G13HD8HxEx0vbRWYhWR
	 zmeNpymvsDggfiosCiBlvHmYWBABp5/T75b2eSMwhXPdv152iTU4ybBGNxec4HG4id
	 rass8pvMGxkhwk5rXx1lW5oLRU5zcOVK0/hOcTECf5ezKEL8CzdZ9sPw2G3noF6g8a
	 WSCqMim9G/Jzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A94CAC58E
	for <ddprobe@lists.linux.dev>; Fri, 12 Sep 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175764059357.9120.4157254164023804681.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae5afb88fd7dbbc77e5bc3c48938639ba5ec7ff581ff34b77546480b35d9770
Date: Fri, 12 Sep 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757640593
