Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 169AD34B669
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770366834; cv=none; b=hJDU6+rOSGUGK5ej5JbmkbQz89jXsqBnebqkqd2bdOaAPS5o2zaQWq67GUEhklmhSBDjqkyRhMvURqnh6PAyM+e+/zSaz5fQ8tW5otR5NYB65q81xSLqlSN1V8IjdWH+E8xH/yRCAVfKzPAyICYxHlxiGRG6AFSpEeb98pBXtsw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770366834; c=relaxed/simple;
	bh=GEi0bshV5w6L+OJZliG6XqscrihLr97nj/7Zt1iMVrA=;
	h=To:Subject:From:Message-Id:Date; b=ENnOrOel2qV42+OkKOVD+02wMRAEF2u2ou1F/5Fl7mVIThWqnJgP3Dv1M+JizOtLyzwfBLhdo6Fn4wHyKoRhu48L/1AK7Qg40Lv3vCybdN42YASHsfx34kYebMieHUhHXPtfJoFb+rx/fO+EoQlgqWLPyr7ObNGJ4+9tw7OIi4A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kdtr65st; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kdtr65st"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49B1C116C6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770366833;
	bh=GEi0bshV5w6L+OJZliG6XqscrihLr97nj/7Zt1iMVrA=;
	h=To:Subject:From:Date:From;
	b=kdtr65staR+C+yX+x+tE/FT/1lLBeoCAKpaykHkR9cVBeTpVNSr0oQKTOblWBDfSs
	 PVipDzgNuQo6/sLV2mhbPsA6b6EVqBIvishk02A+Pdibsx+G8mGOef48cIPjQYBw/6
	 zk82sIpA8QAxX+2Hn5+6SVvVaF+i6Ny0SqPVwhu2mxlb6H5HAM7kU5ogzMX0pp0sfP
	 j+yVN8yt8gEXJfIpjwGmt6XxM3+oT2Y4KHW+mExILOrlMLwGrnsScheKi/SqiBs5vV
	 RjPEmOGAdnLEF6mpHy8+rcgp7YbQgA7VXEqpczOWxJ+y+pZ0NEf08GMVGdRgE0k/le
	 9ouCg/vNGAp8Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91772EB28D6
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177036683358.7802.9697679598076176210.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d8683a3e097a4b7382ff6603cf4309e67de95cf80092ab47deda6418ff143b1
Date: Fri, 06 Feb 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770366833
