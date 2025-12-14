Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0E3125B2
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765755174; cv=none; b=mVHq3GD/OAmkepOmy/YfTirfnbTwkL/yitcKB8sfXXwwTwHYqu6rBrZXJSrtFoUSGAg7o6zc2w473vYtem3Pq5X8US43Ior35tKj9BT+xLQREzQZD7c9j0vBXgoQxzFXS7sFJaqxA9zm4DLHdERdnaRhtvzjAcOwnyvXqaNAXOI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765755174; c=relaxed/simple;
	bh=zpdMXhCFXUDtdta9VKMY+8aEpWUfXXorOVtdUS9OXsI=;
	h=To:Subject:From:Message-Id:Date; b=FTKwhZVDif4wog129ETAzYBDdBWqLTkAiY19+6DJRix3A2AsIJYZDcS6cZjLDhzVSyry+7Fspc5fbu9WFTHPljeBi+oOQB9ogclMTHGdNT+7zNzoJ3tKICv7iPooSsTvkcw/KSkzg+lsGicyuPXRLbxf3AxVyn7slsOS1VjS3Hc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IMxWovMc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IMxWovMc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2F68C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765755173;
	bh=zpdMXhCFXUDtdta9VKMY+8aEpWUfXXorOVtdUS9OXsI=;
	h=To:Subject:From:Date:From;
	b=IMxWovMcLg2xBAEPratdUbj4w0QoitLEhC9xGEv3ocK7xNPdwQlOuwJOwbAg4CQe/
	 Jra0jKdIMolhfKNZwfWRBToXxbSFaekbdcSaGgLQThfulCbKXZAlxkIE6tg8qxI2Df
	 OIQuuJ3XmOAYvjvOTPrHJoVQll2ifTTUvKZuSMAcPQ6A7DCXZVqOBFi4Jdok6fhWB3
	 WXBCSBUCiOg18YcsH1jFp/g6YtEvfu2k0TM+JXm2KTmUTzZURzgu7ZfUYiOov+Y1qF
	 IlFoJsbLtbZgFyBkfKOkrt/IjdzVmIoyuGr56y10pBcf2moEFVa6E18QbZ4LvRhizz
	 8xEGk9mmbxdPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E5CCD59D99
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 23:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575517363.29550.8058212166229050609.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1743e0b92787e9329d21191e4374e8dcc3746ede1b55955998ca1ba9fbdfe0ae
Date: Sun, 14 Dec 2025 23:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765755173
