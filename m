Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 335F4386441
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790174434; cv=none; b=G64zfzVkZw1ST7lx78HHsx4Wsn0gzR54iYSRIqNRPyRapbiUAMBC8v5DU0BcbTmctxQVGKIVK683Xl9OlEaCJfpnDwbO4L3SFxAw92MaVn0RwO7g6zn6sQnj+1guwUkN8JnfwsAuufmN//CgfSwExZ/6M1K8kbrSLEtJFTDR4io=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790174434; c=relaxed/simple;
	bh=4y9BpxErByk07WMQyikH7Ek69l5Yk9dUByxxjGD/9UQ=;
	h=To:Subject:From:Message-Id:Date; b=VmyQazL4WsYF2Q+FDFTG+M796fAN+JnzMT4aVPgA+TaXuIeuN8Yc27G41acp9Z1/iRVGhW57etf47N35sPFulr1zixxhon6tqKqtS9tS0VaoPwQRrkXoqASBvVpSv8dHHvl03hmmFTrU1Fp/lavOb38w9sBMA+59L4uHmv4zn8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d0LxNUdm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d0LxNUdm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1E0C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790174433;
	bh=4y9BpxErByk07WMQyikH7Ek69l5Yk9dUByxxjGD/9UQ=;
	h=To:Subject:From:Date:From;
	b=d0LxNUdmQTjyArjusItZy05a3dMVBDRe2xXDFZ3lfhsTsPk/ZKgy7IIccfOh+bqbs
	 zoybMclvhBG13AYx+iLRAwqiTEOG/wbmivdeF5Sr8WXmyVGWQ7z265lDyTBnlMBlxR
	 CJWyJb1RpMcnZ2iwQ9CBL0RuUseJ9rM+LpTr64G1KtPINQZuOMwKSe9WkE++mRrDkx
	 Whcmwi2w+NFyS8xywbW6LelgFdxT2VDOip4tNZcXu2dXEfdVNOvebgXEa2VfV3bw78
	 64QVyq3EoY+Pi3yvtR5htVwhLIQK3PZIoTBW3F363bY4JhDkS2V2hsM6o/lxTiOwbk
	 R3RM250uWR76A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5CD7C9830B
	for <ddprobe@lists.linux.dev>; Wed, 23 Sep 2026 14:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179017443373.4402.12534430325578556982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dcab212effb45aca6049dfe789802213ad5b53951d5099ca2f128bebc94bde9
Date: Wed, 23 Sep 2026 14:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790174433
