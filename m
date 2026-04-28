Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2540833D4EC
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777398454; cv=none; b=RE/Ot3ieLHDO3lqkIiOu2l31D4ScNRzUoYPB6BXoMPCg/NvPc/5VTMzngn/Q9BiWCpl2rVFHJ6k4VUehIgLgxkwqsUnNtY6TwQJdP6DB4IalE7V1S5FSBBt+YilPUlMciCtlzioz1CBLt9aZDrStAOoV6Uz7P4k7bd8sB0+MRj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777398454; c=relaxed/simple;
	bh=wYp5/OQru599babevFHVcmvoXElLkg3ecOgi0oBPk2w=;
	h=To:Subject:From:Message-Id:Date; b=KPC0bfyT48RSAmnHJ74uvsJCBTxy8tZR0aXzrYjA1D7+5Vilqu/3917uqOtn1N/e/c0XbKjdgwf4huJI9yn2pM9sUPdTMD8SaZPBCJPthnLIE5VbOD7FtloFeI5U9GocqA1apkS4IlGlUdwgmqCskCwSoTNgBoN8Rq0iY3IduWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XTa2qZzb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XTa2qZzb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDB70C2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777398453;
	bh=wYp5/OQru599babevFHVcmvoXElLkg3ecOgi0oBPk2w=;
	h=To:Subject:From:Date:From;
	b=XTa2qZzbyLcEV3VD+iwfKknf/yfugpXTfKIKAYNW9YZHSBteNEnLcAwhI3Li5G7sJ
	 WqqbUDgAFzrrV4KOI8jfja4Jij8jwaB6/LcqdPFsTWoLATeBaTpe55NI9+haX8hnZs
	 asiiwaJEGGTtZ7p06rtHh3gXb+EnlkRgDVibWbdQrEyUAzBqwLjyWaG+c4LdzdT2H4
	 vXNNkuxLza6AcFOXkG9OFLd+AR60J4cFsJ9AUVBksx7dDPd8AFhHLaMUQcoY5i3Z5q
	 OZ5S1rpIzyZxWahD3PurxysxhBpk+8gFjC6TjomWiuRpzN44x8dCjxL92+85qn1m61
	 RIi7qLrBZHnvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC8EBFF886D
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 17:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177739845368.11104.10274255348269037849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3f160c0731f1acd2c877cc0731a04f54fd8c7acefc4914919cccefec437d331
Date: Tue, 28 Apr 2026 17:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777398453
