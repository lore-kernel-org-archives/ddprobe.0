Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164DD279907
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768581234; cv=none; b=cErNV62W4/KC65yu/6J9nWY1JTepgewAz+s26yuZ6+gQgOKcPFTDsxBAT6Eg+QKhyeLqFI63XKX8fvrpRHvNaMWnrPPNyzwfgruqHzDNY1kUGV2WIy2hERVpt4RuT4q54pI1XOiKz8Xp/jCju3lvp62oh9PbCGg9R7/nENMgiPI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768581234; c=relaxed/simple;
	bh=AegMak+g8pr59hcyIpPoL+/P3vuksc1BSI4wwdiW2Rg=;
	h=To:Subject:From:Message-Id:Date; b=WsO6gux6no9Xm+DHPzD8c7vydEJcOvw2UQkf4nfDIqi8w41T1KvggjSJamxxEbiGt5jRTfQ4Jc66D03xf0fHlP8YYJgUNKa36xNN2kp0fJTKPE5Oc5Eds89yfLCsXPLxpAamOe+XK54J7VEyOwRb8cfM8biZ+JXW+tRirtlY5bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JY8xkRJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JY8xkRJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A11AFC116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768581233;
	bh=AegMak+g8pr59hcyIpPoL+/P3vuksc1BSI4wwdiW2Rg=;
	h=To:Subject:From:Date:From;
	b=JY8xkRJMiooKw7k5dNsK1jAC0X3LIYXWmvzi74g3UQ6M9qtzLL86pOTuKhW/o8dzY
	 oN8AAbktPL/Tivx/Ah7J6UYEUmmWJH4sBiUtbno2UEAg23MENnT3E594kxBSifOByZ
	 GetkHi4OLFx92ycnapjYu2nHFB0FwrXT1V7MvQKJwMVT0+rv7qvjLqGtm4JMMx8wkt
	 bb5KIgQBaOtV9NPHL2NPwrxMV6lTKFp3FTh+xFBpy5McHgl3icuuCFwbu5ApxfmUtH
	 5GWKcdgVLq2T7vP/sY2nNI5Lc8c14PGFCEEYsv7eWGqM8N3FXR6LR/bW4pdXY7SAzm
	 RPC13089txFbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 904A9C982D1
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 16:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176858123358.25203.16075087281259079783.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 601eecae881eaf5accd38c4872ce10096a5f908e00f31792f5567707502560b3
Date: Fri, 16 Jan 2026 16:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768581233
