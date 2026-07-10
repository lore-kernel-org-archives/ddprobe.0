Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BBFC2E737D
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783726714; cv=none; b=WxcANS9pAK3dXIqXWQwIgIasWORcRrYUrLc4t/6fHFUfES7pI1PUbu9ajJHI/puBnO1GUMJmbXYynyyAmjyDlzboGa+80iG3rjY1EiglDOS2KgZBPzBCnd3Sep+uhjTgAu4/7L8Kq9s8v04sw99pxrjrcs8Gx/2B0yg8jfwiXP8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783726714; c=relaxed/simple;
	bh=MlU0rKVA7WlH1XDa4wxw6mWmb0lhMBfF8Gp3rmTGNjA=;
	h=To:Subject:From:Message-Id:Date; b=axo99zpDiHVU26yz5diqahfPu9Y/3Z90VdAtihq83Vlb+79Be1BsfBTNfejZj2/bzWwjSjWyfrX1UAbhBbg/lLZQJnNBVkW0BYW6HK8NO+0OeaHUnD+yc6i0GP1ZOXsBiybJf1Gf91eFxrfM3N2ScssiiSp7eyn54XbqvuR7kNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dqlz6czJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dqlz6czJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA010C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783726713;
	bh=MlU0rKVA7WlH1XDa4wxw6mWmb0lhMBfF8Gp3rmTGNjA=;
	h=To:Subject:From:Date:From;
	b=Dqlz6czJYSB24xxKu3IBEBClJT38/AqH4+HoDH5q7h3MzY/PlehSxbh6oYCe/BeLt
	 zrP0yWM4TWX5icaRh2L/ucWAROTHtnr1H6nuBASQLGtlOjMX/2UVe2VWo5iLerR6CY
	 M3HqgBxg6b3CxhydB9/vcjsDSZUMWnYk/C4jd6YbCAanUIsEjX8zcYAFTeORgzID0Q
	 k4U5xAXxalxNppSBSZw03rdCZLkmUaSYuGkEaI/18X5cuHldDiXG7a75Vybee7gy/i
	 M5rp20G/Oo6I72huyXdeTtFerG14onQuGoDP5tqb/n64OpDv0y+jG4H8BInh894TcM
	 +OGNO5qFyzu+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8841C43458
	for <ddprobe@lists.linux.dev>; Fri, 10 Jul 2026 23:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178372671368.32753.16431283105158554118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 718ca5ccc0f81d6f4d8ce2cfbc3bb70c0185d73769efa7e09e65cc22896ad143
Date: Fri, 10 Jul 2026 23:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783726713
