Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 111D2BA4D
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 17:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1710006497; cv=none; b=MDN7Y7b/lAwxeI2WzJxulw+lqSuXQzOmwZpuPWqXhK9qo777qnrvyaWBrfYibkkfK9X/klFVBHXnv3MpUKW9+2GGg+KIQg+wbBaC/veOaQpYWV+wVdCPwEegU2ApmoH+wUht0/bR4iv/WuGRp1PPe3NClSDhM7ZZaRHx8RgNiKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1710006497; c=relaxed/simple;
	bh=bmOmjNPZ7Io2VKuWiwubLSpJJEey4wtSmawa4pd+oIo=;
	h=To:Subject:From:Message-Id:Date; b=csdUyVw6qZ+PM+Xn2ErL+G2hlcqx1tiyirRZ7otgi2CLr2XTA2kDD2S8WXEeoZOi3V6Dp9M3ZS+LAiqwty9qYZoTu/HsOmr1Aen8/I3t9lrLOu1TkGQCJ8QtY2sp89SntIr3sAJJPUWsozi8L/ZZ6TVjEmJG0OqqCEghXNXbqyE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PTfxl6aq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PTfxl6aq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 86264C433C7
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 17:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1710006496;
	bh=bmOmjNPZ7Io2VKuWiwubLSpJJEey4wtSmawa4pd+oIo=;
	h=To:Subject:From:Date:From;
	b=PTfxl6aqBsK6vTrHR0lumjxdh5bta2CH4y/SEaZVbcuQCheGGOZuw4U4ghcxJ5Hvv
	 4zzHhDgBky2tSxbMschgfYEmLIladlWPaG3ppcuqiXNNHpgNKwuffBFdx/2ckE3+h9
	 qPBhJO4pD5hlK0PoOozP4KoaHfdrMg+/IOpfxBdhPv7qnux1bffJb+o7Q+9i/HFp1F
	 /Q1/c2einYDg8cKcUGkBaLwyOzMeiWDzScjkPXJaM678pKyWVDKZSQvt+jsCZbf9fl
	 nYDWdeP3yONPtLGfyClQ6+bnUMw6SZBgToQ5GPhc64kmtM3edprJBTQ4j3DIATnigh
	 E4XDExuhU3Uug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6A077C54798
	for <ddprobe@lists.linux.dev>; Sat,  9 Mar 2024 17:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171000649637.7949.5933390973132357613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e62ed929236bb57cf426dfdd8fe64b6d5e6da7135386bec40ff123ef3bbbb2b
Date: Sat, 09 Mar 2024 17:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1710006496
