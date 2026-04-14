Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22DB9219303
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776128254; cv=none; b=Sfilkp8lTR0UlU0L7ShbuyuUmfj7/qNoT47558A9V/ZwFE3XEUIlsFKATMwv7hjZWLKdi8y+JmhRrxhTfkCAuzRxxfMQhCbuMpmp4UJyqaxxQ0ZOcYDynGcJutqqE6Sh3gAE+sm4SrXiGeqNzIGcRfu7wUguowl2ALiS/IeQjtI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776128254; c=relaxed/simple;
	bh=OZJE0fiJAzo0Be6kskJf0wXvIpQ6vCylMrkZRUB+QQA=;
	h=To:Subject:From:Message-Id:Date; b=btyDAk9AGxIsNdVpiuRUiA/zzNa6mebUYJibeLcpQeDLuE2t05bz7T06Ylip/wl+kudqpoPi2gpJh3jWm8m6BXPTAu6AGOr7SmaJcI+UoEwFMFJcdNrfe5UNsMeDxysx9CMqGpgqJSh4zydj9P1K6CW2thv8twdTOA3QlhjP2As=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BX7mvZ2i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BX7mvZ2i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9ECBC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776128253;
	bh=OZJE0fiJAzo0Be6kskJf0wXvIpQ6vCylMrkZRUB+QQA=;
	h=To:Subject:From:Date:From;
	b=BX7mvZ2iRU2apAHY+zJN5m+x4seGL4jhihUy7HvtvRjHcBdE2NE4bYPqFculeZ9S/
	 36cLgNJB9rAwnJ9x2wCA6ADF+bMfLMQht37mzKhVeOxvOonBqiuQAWYKvMoFnYZITm
	 i2e60f3FAOk8T4RlJsD0v+CWGEs/7Oy6WXMvTnctc7yIgI/dJqsfV3HIkMGIW4cQXm
	 7Bi+1YktEdpDZpwu2im/WXZbskR3QhSzcCOvu3ZriEV6yl3h2ySUb1LHWbtIbyZx6I
	 SDlsSE/7epSnqruxrJB+Jtd+vyEAEGmhDzDYP95c0s1LHoFGIUxAAWEHhOaujfPQmF
	 f4pwd2NbWS+3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB2B4F531DE
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 00:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177612825369.29914.3668969762890255198.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2723b39fe68f58a67eb233d94e3b3265c13bbf564768214e7f737cd780069332
Date: Tue, 14 Apr 2026 00:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776128253
