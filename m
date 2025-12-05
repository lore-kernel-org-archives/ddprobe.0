Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3814138D
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764892974; cv=none; b=My5M7VsGxsiW7/6JVwxJ4TPHHLwpF/3epwA4PTtCJewvl6PN8/f8pTfBNlPxi9TiexRIb+dT7snuEDIUsbtJnuho4EQMqdtuYNvKpZ747iePMtvLWz7CmEhIYfeGdpSsFYspYqoMnv0dinIRZ5gQ9EdjNRuGEdsof97hc4dERpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764892974; c=relaxed/simple;
	bh=qJwRzUe3rTawwRqr5vn1vM+8iDqU173uvvYUZiEy04A=;
	h=To:Subject:From:Message-Id:Date; b=Bfs4fR8yqjTYcpsOU85SePsqa6Jfl1xcaUezOLEiJhF5IcVcaCVgxLHZ0urUD0j/ZMyQakac+QJZhSL5Rrs0izRqx677QSO1RNTTYuuf2qSAyXcF387Ae8wwuTx0Q52yLoUWMmbJnBVa/xf0U3NyQL9W7JPVC0cK8sfkvjVhOXc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bFF9u8wY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bFF9u8wY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4797C4CEFB
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764892973;
	bh=qJwRzUe3rTawwRqr5vn1vM+8iDqU173uvvYUZiEy04A=;
	h=To:Subject:From:Date:From;
	b=bFF9u8wYfva/HuKSKAtorAo8/I8EyytN0xD+aUEayScUq0MlLWHONbqc94gkv8aUf
	 higHaK0uvswu6uj9qR/+yjZKpilXsITGe3G4dBGvbKUcJzC2VFLz0cT01Lgvs4DRET
	 eK9tC3zkdjIIcKutoyRzi5Ly9tPJPMeNU1HUknJAFK2SW8zRwlE0QOxGnFP8uZ3ulv
	 lvVjUiEds7cf2AYJIWRgUIKo6SfjVlm5CFDyItxyud1PTI9/NTMVMfMUIJ3vdCCVI4
	 9wT4z4Hb7FMP/ZSY8Gk0zZiuoiTAWKQAH3ktlPAfhfx95XwHfvuZXDuszskzZ7JtjP
	 X1FnIg5U857dA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94CCDD2CDF0
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176489297358.6016.15982824485556271173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f81a1d1de7918d2213aa896e2924a334f858ee0aad695b760692f3804345afa9
Date: Fri, 05 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764892973
