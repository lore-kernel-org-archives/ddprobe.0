Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E70022156C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776143254; cv=none; b=mGwGPpeKTphhnCJGm8bOf9inR9Ugyf/8AIsnVeG7xKGRsmI7h3bfPeAZtgyoIlnJO4l1xq+zQoUYYL7MPTwc9cK+6KJDt3Y7F5M4vVB/wnOJqaVqmu0yBASKeNKFdua/Sf8yss8SUld87qdcfBY+q8o2jxrUeOnGtSyzQJa+JrQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776143254; c=relaxed/simple;
	bh=UtXTyesOqnNAGCDtpWpgJSuHCfAhAiiACq8Sle/O320=;
	h=To:Subject:From:Message-Id:Date; b=hTyInXE/LcnOUy2PEXV6D8sF1Ges5vF6zYDpqVmOIIkEhyMqC5KFqk0CgRoxrHCr3cShYYA+xI89yrsOTAQB+g1CYJ+5+NhL4MH9YQfGQjIFcIs5swdcfdmKJ9vYDvUWgCUstl8YSOaluqfuM/BjLh/E5GOHydTmPHtNKv7sIVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ebXJotGx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ebXJotGx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD952C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776143253;
	bh=UtXTyesOqnNAGCDtpWpgJSuHCfAhAiiACq8Sle/O320=;
	h=To:Subject:From:Date:From;
	b=ebXJotGxLBPaqC21Tbx6dOgUsp3dEUC+2CrQ310/6IB6NULjCVU6TUm8jy8S7/qC1
	 wRf8oodPjbRrvjW2bmjuOY5XuokAggwBOj6F/7wYVc/9R36IBpP2m0OeEUdXysOrRU
	 hHqph4sCQiGIRiCqV3v0yzfi1yZ4W54zOAsP/fKnaRKKBR8T4Pwv/b30WWw9zQ+TiR
	 +K3YAtdBUieFA50QUHl7xYSgTviaY2EDoUke/GN1CDUtA34pjOMS6UjoCvlurRSBg8
	 E1375p8R5RsBaPR4MELoFElNc2Oghm+NZz/knTENCKUnu0F9wqPWf/evABvT6h5GG0
	 lQBAPQQVJHN1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB8CF34C7E
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 05:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614325368.12882.974099684633483393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07703733ecb8b102333fd4b8ac490633810ee60cadd088595fb100594b79968f
Date: Tue, 14 Apr 2026 05:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776143253
