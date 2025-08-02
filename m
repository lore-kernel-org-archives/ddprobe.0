Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EDFE571
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754126394; cv=none; b=sXS/iwwoUIAZHYfsM2Kl7sHl4jGJaeCYQIi7hHmgZPwSdhq8pEGSXP3OzeAwVyXuBsFP5A6CY+0zgxmLcWF06rlgCifO0MW/wBuNYhq9HT6ZftX8dgwYChPB5N3Uxq+SOH3RkSSP0/CfkMVBNpkWsLMAaup2Y10m/73IcptrRHg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754126394; c=relaxed/simple;
	bh=Ja1kph/6VLzn6PcGLFeE7oa43eK2//O/iXIqVsPwJc8=;
	h=To:Subject:From:Message-Id:Date; b=eUi/B0F2HQb0GTccr6pKcxc0EBquZ8OKtx4dlJ6vLqGfXZ3UEwNMpaWYOYP5f2LubcfyOC7twOog/CcQq11T32733CZ8XBeGV2s161vzlq8dwq8ePtVdW4U1/bReE6hizWXLwkII2LH0aZaTnnxGBu+xxp/6fcPQo0xXtovK9ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FS2wTfsU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FS2wTfsU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37FFC4CEF6
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754126393;
	bh=Ja1kph/6VLzn6PcGLFeE7oa43eK2//O/iXIqVsPwJc8=;
	h=To:Subject:From:Date:From;
	b=FS2wTfsUjcGO3RvJaXz14TxxpGiBcilTSmKBnLDo+OIs0x8ff1VGsYaTmQldL7tzk
	 Q8cmqjRKrNqCmziaZO8Gf0VA/kauF7v8wVrUJ7V7hxv1YcF116QC9an8/I9yovQyut
	 O7TxSQ89mZ9S+X8VUe5HL0A3W6Qmp+MApU0xYTtJYH3MvelwNpWRH1xkhcBmTmHb3z
	 /mVbFiKOfFNVtn2Ggak9IEvNNLKRYUAv7neErAn/JiEO7ADRriGeCdHUbGVPfLm8fT
	 vm6ZhKn2puUlvCbOsNPvWtsY/aGGgzvjUnfb3b4z+f6FnNuD47n2XxRrHTHhRtRGm3
	 J37LjcRy0dysw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94B0DC87FD2
	for <ddprobe@lists.linux.dev>; Sat,  2 Aug 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175412639357.2646.15355837806188815222.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e7b62fd8371afe5e3ec3aea275e06f3f5785aa53af5cd25a4030a66e30ad88ee
Date: Sat, 02 Aug 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754126393
