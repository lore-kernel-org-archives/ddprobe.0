Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C34F1EE7DF
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 17:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738257954; cv=none; b=ZnPrIkhvON4g/PClOpcHlO7G56pbfY/+dBRMuXY4t2FBUNW/2yKRuZqpHNJrUPQRznc0gsgbhcj47vQj5vK3lfUb5AXkUnup9IoW9X7ef9Gs1IAIbFgnEDVWt0tpgD+5jSOkyAOFzJedwqPEUZHrpU0FeNs+2wG5/qoPHcX6VL4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738257954; c=relaxed/simple;
	bh=inclwq2Hr1Ozc0GUJ2RlzurOnCPyUXThu/GOfimCLTg=;
	h=To:Subject:From:Message-Id:Date; b=U1z5aWFMvnGYTEJnnGXCunc9IlO+Inx4giyV5zC2kvs/3JF3NGvvQOcL3Jdu+i/HsIb1FkUEO44JLWpoOIDs/TQ4IsXepz5ttZomA53mpm4ugjsJt0sl2E7O91UcYDB7RpiqrlKgwRbOgmItKtghWHrF4xeY2oPF9wWo99bVcbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EyH7SwRd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EyH7SwRd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B293FC4CEE0
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 17:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738257953;
	bh=inclwq2Hr1Ozc0GUJ2RlzurOnCPyUXThu/GOfimCLTg=;
	h=To:Subject:From:Date:From;
	b=EyH7SwRdL15x4gNnqNpHAVCDwLiL+kBrW14Koyry7a467A2fH1oWUNHev9vQNynNm
	 K7EXXk/pkEjO2b60ymV2KAZDZ6+8ezCRNGSEntcRgobvF9l4GiXZ89Oesgrn9wYceg
	 /YcaJzH16QoUqV3Uljp6s/1lhv76TzRlYmbS1ot7dyU/6BOLFXTY5JTP663bmSxYgp
	 jOMKuurJhEZmwHYM8tWPxtwB1GZAqOVphIDtOB32R6QnL6p4UKUk0MsudXUBkZGKTJ
	 kcSsJwVppFoIlsDQZyMDu0lkF21QXaTOnTVXAsM7FH9vvF59oN2307dN7kgXb1ylVr
	 7S/adWKIzQkHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 930F5C0218A
	for <ddprobe@lists.linux.dev>; Thu, 30 Jan 2025 17:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173825795359.15416.17676097279664026112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 120490e44b021c90664e937b6f9ee00e705f566f22747a4206a729a10e88f03a
Date: Thu, 30 Jan 2025 17:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738257953
