Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84099D520
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:17:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717838243; cv=none; b=RhFnIQfrzDSb3YhtElMz67V8t7DefloZkaAuxxVFiyAF/aSQ5/T+SPVM87oAxCM795Sk3VfbJz9j02oaaquCR1bvp+GVVA03ngLCODrj2hVwBczhABSXwXfl0N0DaTYTeRFOK1MTcyRi6BeBP/DQRdXD0uU8cFg/sewVBaPLi7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717838243; c=relaxed/simple;
	bh=vBtNGzfpK3BFW+C4DEWNfWB6elD1n4cGZGuLowPP0XY=;
	h=To:Subject:From:Message-Id:Date; b=n7b0yhctOvQcfZ7MYwzzk3UFCPSu2VWqj+oV2Wf4MdN9814OAVnfS14RdcyotmBqDM+wbvMWgdcHv6XuW1UrPWwxL7MSBVED7fZJvO7OoNHTxnpjZJKUBuS8sDzfGheZjNXHFQWiShW5gwGVaYaHeSlWpPLqfnaBlRKEaX8d9f0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HEcqa8z0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HEcqa8z0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0DF1EC2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:17:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717838243;
	bh=vBtNGzfpK3BFW+C4DEWNfWB6elD1n4cGZGuLowPP0XY=;
	h=To:Subject:From:Date:From;
	b=HEcqa8z0kZbcn5wBLVOIPBAD3uFaRispqa5731wRqp6U93tciWzv7xk47cpgcqCRp
	 XkfjCqFORuqK/AdU43O9llMdgXmu/RZilQ1ULoIL5ceW1qVphIdFjbRtevMUC08B2J
	 r3L3ST21UEjZqFqujLhFPD2rWxDMN7gm/uY/PN1E4bgpFvR6As8lzC/bVjl3gAOF3C
	 YNCZ0yoR2LuuynKQNVWvDzPFxVdh16uAnPZouy7i9ilB9TPxnJpe3xK8JAtFOtxACO
	 meg0xET793vhF5TTzb0vpaD7hlTjJI+9MB/ud1SSxwTJOmyn/G0LySYc/WrhJcWR5Y
	 OYAxNSWWbcHVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E8D94C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 09:17:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171783824293.19958.17212703052825163707.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 70ceca24e7be740bbb9a228fad3309a710bc56bf1a5118b48d3a4a9332cddabf
Date: Sat, 08 Jun 2024 09:17:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717838242
