Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A9A651DFD1
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715720543; cv=none; b=XvQK0rkdA+5RtAvmW/OGLtl81kXgjCws4sXj7FFch7MeuAvhLzAatBPcpQ1fg4F2l6UihGRRIQOEuZRr3Hs69Ohr8tqJBOLNWkhbmCCTmBqxhkZ/0mJ4gHHWzrQH6d+2Z0CFiwH/pWw9QZPsNEHLFGVk8ybyqawOvaFpyTWr5hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715720543; c=relaxed/simple;
	bh=fyZK4WHRcg7JY7uoqV+8vwtiqT+cP9vImUSyy2u1FLs=;
	h=To:Subject:From:Message-Id:Date; b=DfG1oepcNmHBjurjwomhhMFYnCst/tEiNFVNjfRTNtxdzfuPZC8Ntjw92UykWlbXTQmlPVtshpCKtW+3thS7PaR7cOy2S/nDCt095edQ4i5lvueqwYxDe4Y2Iafvx+QCLrnMr3iGv3oSCTafuX+a2YjIDvOeWnvZiPI868M4MQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWT0tvCh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWT0tvCh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 3342AC32782
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:02:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715720543;
	bh=fyZK4WHRcg7JY7uoqV+8vwtiqT+cP9vImUSyy2u1FLs=;
	h=To:Subject:From:Date:From;
	b=LWT0tvChxvQlMTkvBN8g71aJDD6yzgX5jF9wgtD2nEpB+eL0OPJNUrdGdnPTpY3OH
	 vHLqEuxhw4zVer7j/hTI61+qt/CbzQu9i6kFzvAK8jTavOtzxnT+qvOrA2N5lPJjqP
	 yFP8Z4r8nufQ1T/WSBC29wpoC62hevr3KDsnVlMfyYZiYs9Xcy5iNH5IZR8LoZ/L0x
	 G1t4J+IdYDqzrOQ3KZL1PxE+nw51HTb29TywhpcrqZL+V1RiUuLN0HF9x19K0rURPV
	 E5kduM4bqJqa8fH4LrIq9ZWh+sa7/5cgCQlAI16i9xPIwikzpFnfMXNE5n0tyGtPNG
	 FOGnzdu78jrcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EBCC5C25B79
	for <ddprobe@lists.linux.dev>; Tue, 14 May 2024 21:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171572054285.14167.3517867404711642433.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57b89c202017ad2275254e9ebbcfca429f8a9bec58939a353d9c0424a991286e
Date: Tue, 14 May 2024 21:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715720542
