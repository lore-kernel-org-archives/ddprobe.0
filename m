Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 561B54A1D
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718777363; cv=none; b=lR2hM+ZMT1Q1OV78kXOAp/04VMJokQIfVBLawopdanXbihsfJeuksV5AsdnAjckWwmB9w3o15YrXBoTRjnwX8A9xJDwd8ryuAsvu/XH0kkKiwuNG//uC++ok7L92R03SxXaVjbFcvJ6sI/rcCAowtPjSqc3cVC4AS5HCGKK5kGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718777363; c=relaxed/simple;
	bh=zyuhZzUFN3k407CTcOWRyueh0hMHDleq6q8X5PHVQkQ=;
	h=To:Subject:From:Message-Id:Date; b=dnbohqS8i+f+eYuVwjffvuBeUiGlFODO1dvcSOXAr3rerVfmBcargsT+tQwVuEprwQxAoOMfqz2qMVy4azlJGvocs5rt5IsAWW3oqizLVjueU/iX5fTUBHXCk9/0ApIOtb1zCG61W4Nh6bwV1gUz5ze+Q+ahhhef8sdI3kINtAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=C4NzKVvz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="C4NzKVvz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D310CC2BBFC
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718777362;
	bh=zyuhZzUFN3k407CTcOWRyueh0hMHDleq6q8X5PHVQkQ=;
	h=To:Subject:From:Date:From;
	b=C4NzKVvzyWKE9FCt6cBbsbPztXCLhB+5XzYUn2DluUaT+pbEaOtzow3+HYMJSCgyw
	 xqPI0cdSimUUEp51hJnAEANIsP/vBDKf9Sd4THTdzDxRJwMtFEJquNwuhOJTjb5UCy
	 5jPvzPcNW+xImkoJXqFsxbLu4i1EGiNp8jAV5NTt3vDylMS58C8W9iO/3LDnSKX+Yr
	 7gV8GcAtUyizaJPnkiCbTlH3d3bGjmmuP+pKbclxiKdYPKT+IWfXWb1IwNYPWY0pKW
	 OgJeG/m4VD2V/d9lFREqrTFH83GMd5L4BgYNmFcZVHXqqJ1pi27ZI62NeMLYSe3E5l
	 jBnyJORUElpWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC4CBC27C53
	for <ddprobe@lists.linux.dev>; Wed, 19 Jun 2024 06:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171877736276.8740.17102990573628862730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e53f586161cee2929d6bc38e700ec94cfa39194005fc818126c195389314b960
Date: Wed, 19 Jun 2024 06:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718777362
