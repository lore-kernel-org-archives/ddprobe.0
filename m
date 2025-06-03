Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3224B146A66
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748953194; cv=none; b=IBfy0ew7n+kO/gPM3D+x9Jd6LAg1UAHWgJIx20mm9fO4n/4+JchB7Zkcjwmyz3tJPDkvkArgULItY4Bl6UHIZAbii2LoDFp6E4dOyA0TI3RX03/gZ+fIJbcSpCEpmzvtCpnee7SICxnvWFqtf26bAdCndvnJa375buZ1oYwdC9Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748953194; c=relaxed/simple;
	bh=plzZENnAAU+J9Yty7o9cHhC9xLwDWTbZvQHTW7A2j34=;
	h=To:Subject:From:Message-Id:Date; b=GKLgRNDgCPiW0jHpGBMjcGxk3WHx0uHCKLLPplRrbdjlUpKue/CwA25Stb967xfMQ/FbmO1v2Dd/sS+UL0sJbuaasWdxvtiC7wyLCLLPUKevbescbMDpEvmj2BKAPf3aZqOGexNaI7Dcse5+r7hwfzfp1t7XjCXrAm9GfrHN95M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=THQxSRaA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="THQxSRaA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DDAAC4CEED
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748953193;
	bh=plzZENnAAU+J9Yty7o9cHhC9xLwDWTbZvQHTW7A2j34=;
	h=To:Subject:From:Date:From;
	b=THQxSRaA7SLJpcCrdtSW5goa1Lcn8KZmZ0BTK1Agf9R0vvHK+QHBT9IR5Ga0BXL66
	 GUDntNPMfeV0e7VrMk2BhW4YPduceMHFj23OdbriJcB/og3ZeFnLZZuvDtxVLKfDaD
	 I8kRsmoHQ8lzNOIkvNLZjQEhWlPn35rcsRpW55OVxCzNXS+m2MdYjWSs0EWssHD+v/
	 W6ffEPmenNiYz0xZkAWtwGTEN93cVTFJR4G8AD4/D6bZOsuXIxXEhe6LLV4lATi2F1
	 bxKtIUYEEn5aEYh1IITrTw+OiMT9oCdBKf0QZo54Zp8xy8llyL3zgjhHc00PIxC/Ak
	 jYb6565k+9p9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E71AC5AD49
	for <ddprobe@lists.linux.dev>; Tue,  3 Jun 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174895319357.1645.13277564935333874979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31f042863c8f70d2c5cc2f21b14f526540f2542c1320d947eb1dc0633041a4b
Date: Tue, 03 Jun 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748953193
