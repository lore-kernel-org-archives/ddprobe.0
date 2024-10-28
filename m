Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 394C5154BE3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730084154; cv=none; b=TJnWeOk7kJxvadw7iZWoLCoZpUZ8N6PfmShHU8vZDPP2Hz5mLJv84gPCohJo00f2+ndf8cVBbYqLdH5j4Og9k3VEIQ6+ADARtKChKzxyn3QzIOUmdllfAaAVpjVsvItNB0mQZIsEuRcV2AxA4n4Dub11/nJUZ6Dn1yrgmqtjdmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730084154; c=relaxed/simple;
	bh=IWCkHGlkQOdU4/m9kbHskCiFWGclbGPWuMUfpeIru3k=;
	h=To:Subject:From:Message-Id:Date; b=Gwlfa0Y8QeYkOpPv4GWX4UgW8CdhbHDFytkXSTfqa6ACv43PP1WTCo/UbKBnifg/JtTNhovlQz2C1Vvgt8EzgR4NuvFtPMglUUyQ6NBTyTNg2rNNgPaRLFqsUqL7ABah4SrP4MxMpzvTK/ulNdCeN3Z7FQFnL3puURiPyDHf7aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gPAI+aHR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gPAI+aHR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B11D2C4CEC3
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730084153;
	bh=IWCkHGlkQOdU4/m9kbHskCiFWGclbGPWuMUfpeIru3k=;
	h=To:Subject:From:Date:From;
	b=gPAI+aHROFJiuGPa3Z+1/65/qfpHpK/oDR8PRPAh+p149kuacdvH9EowQbPs37KdS
	 Dpqa44ZXXmDuisFTVBQElsFTGTLLdvnWTMcK/zqIyxEDK0njmrIkUzs85MuNYF55MN
	 As6lUWX/MrsEoG3nZJLbkMJDft1LYaGj3HUn3PUA/vye+VpKvU5LwJHzntcM1TerLW
	 UD38dHsZvX9/+YtgyoSec0lo0v75sYBKThxl5VvHMC2EDu+FQpAesqeJRtOhkugv3y
	 /dpDP7SrA6rx/DiYlOHWQ5Zx/Omg48o8rSNfsw6z2UQr+SLnCtk0UVXtmfBLNbpa9g
	 BoNj5n2TzxbpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A13CBD13590
	for <ddprobe@lists.linux.dev>; Mon, 28 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173008415364.6625.104171236645111671.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b776b7a98c7d3198204075b7f1834ed9b82d5fa133865b92b6194f68aaccebe5
Date: Mon, 28 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730084153
