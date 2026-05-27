Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C77B34E774
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:02:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779915754; cv=none; b=Ek4XVa4uocYKkSNn8aHkpRpMDNYDfyGbkRH9M/PvjTLu63Qa7iZK6qNFOGRp4US7dfSGQ/hAFm406AHYnPi5oXXcMtAuLC4lljl0CQkMTsxKA/Pc2abBNDIfQnn7vYiNkvzYfOOE6zTX7Upx2dCdaN9CXrFfw8Yr7Azql5g7EVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779915754; c=relaxed/simple;
	bh=L1DcTtEd6ImPRFkQf8WdjA00Zc/6Pc8ifQN1pEGntbY=;
	h=To:Subject:From:Message-Id:Date; b=rwHGUjz9mcnq5XanU6akWHPatImL5MH6ddWaO1NFoP2ODsCZUyLa0euO9AKVvjqs6k5T1KpbuS+n1dNFieTQPSAOa8UqJWXsk9Je3mZ/tl/9yOuKOABeQ62FWKk48fwtFoo1MMdrH5w0jqnTMaz9kSXsvvpd1pvW6HqI/nXoZ4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mJeerIHQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mJeerIHQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EFC17C2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:02:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779915754;
	bh=L1DcTtEd6ImPRFkQf8WdjA00Zc/6Pc8ifQN1pEGntbY=;
	h=To:Subject:From:Date:From;
	b=mJeerIHQr7GDG7aHESWkQOmYPWR+AIgyurU55COzEyiPE//DV/IOM+Q+ahkAX3STv
	 VUHE0wiaxwPECOSDyOt/wyyzJOZk4XdPM/hQqkX9uOKGwlVzRZqdhgjkQzu1IqYb+e
	 /Jz8XyEILIDa0X4JZKYvxLiasYdpkdqs4koL8ltlT+wf9dNSG90mTXSl5JuiKly/8g
	 J2wUfpN0sPBOrclMa+VvgQuDr8Su3t5ptwnio0eX1CW4FKy1IOlT+k4AiVqzWq+h5a
	 29EUQxFzaUhjeEXofuxEPtUyBc86iPkWASVyLp45+xxNz2cODwFxofFsa+ux1lkThh
	 yOLD6RpcKb4ag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3983CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 27 May 2026 21:02:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177991575377.26100.14651989324167092378.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 878c56b3c61dd7a799360349292de2395253ffd45af3d75634ce25dbe3f7a2e6
Date: Wed, 27 May 2026 21:02:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779915753
