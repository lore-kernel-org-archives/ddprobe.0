Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 02CB5261B6D
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772774094; cv=none; b=TprlsccpwkNmlptlifyp2E1cTmC0h1TWILudqyPncSJA0ZShUpR0JacQcbVyciKxhdzYe9KrqXbWNzNKpgkvBEoUUnPc+gkOIE+4Bntq16VcOdreiTwbrMGXFG9w4eRGlTVTsTNJYBSkl76dOlwTz6R2sDrvhw7462ntnOCs06g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772774094; c=relaxed/simple;
	bh=Giwln1o4G/hwbTsWmEob/dcKpDLFf9Soyotjc3OAFao=;
	h=To:Subject:From:Message-Id:Date; b=iM+wYOEGe6Lfsclqk3a062A+v+gMz5K2LuxgSilmtd0rtjg/x3jeU52hJBJa3X2q0B3ixfQl7SkKJqtT5y3Sa5a+1CygxXYyviFCX1EBVimR0atRy91KRafCZETkOOsmO9a8pTeZ3Sa73y9vGXiQQ3DuHy84JRHQwwpUAQUHI2Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tPfhL3do; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tPfhL3do"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8A20C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772774093;
	bh=Giwln1o4G/hwbTsWmEob/dcKpDLFf9Soyotjc3OAFao=;
	h=To:Subject:From:Date:From;
	b=tPfhL3doOXXJw7kZp0AhJMnL/Gqv0rjGLMRsmnj8Ov0nInx84/udTv59cvYdeDTaq
	 m+Fwyp2iZNnChP/RQ797zio9p2jyukb9cVbsuJ6m+/Gl30lkC6bRsKyLYrl6ynFXz3
	 c4yp3BCs7EVR/RRV/Qavv0RPv+K1ZyeaWVeDtnlkTjIgiE7ehMhEbFm2KuZaiq0FTh
	 yfqMl+gsmEEoJikXwFqU6SrEMW9gNu+ibj2Y0fUG0weCRE/+ITdEAHTvUk1tU+seDH
	 k6F5+OuI/eVe0125+ypHIe3Cvfw893J6LgPFsZzwvmcBGOwlPDil1ME07oTILApj0B
	 Wqhbbbt59krXA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94606F513F7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 05:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177277409359.26763.9072640489602099970.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 16dc61f3cab297d0846f2b508a550581263cd1ed889276f1b6a37a0139c87264
Date: Fri, 06 Mar 2026 05:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772774093
