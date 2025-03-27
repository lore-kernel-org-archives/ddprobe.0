Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EC6D1FF7D1
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743068994; cv=none; b=tKqs00MpS5qfeIMkAZSiquLBEhEM6Vw4N0vjMsThoSWcqwB2k+VYviF+0hFiAn7UOuGPnmtA/6FJGK8QKMFaMe57F2HI3FLGOur3iIkJr3ugapLn9COP6ktAJxSCz8ItZP6x9YMlZ0vKOgRjOnh5scBjVPDNOs8I/TcqWzOSfsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743068994; c=relaxed/simple;
	bh=0ucQSlXMMInZdocu0MSHyXB2ru05AjPz+9RIsyopNjU=;
	h=To:Subject:From:Message-Id:Date; b=eP3EYGPX7TECvAww+SUlyDqv+N+hUTH80Mw90Rlk8d/Qho3KtFWs25mhxebR1P1CglKfYMn/tGt5/wQYp1JetD4XDvMCWSwJaVaCq8z+yTA1Jd+X62GLlj3CsKSgQh3pWFWTdTncdaARNBBC/R2nfEVXsrh3z1CcnNjMoVbtfGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJ/D9iFf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJ/D9iFf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C33C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743068993;
	bh=0ucQSlXMMInZdocu0MSHyXB2ru05AjPz+9RIsyopNjU=;
	h=To:Subject:From:Date:From;
	b=AJ/D9iFfkOc1kOuizbeadpo0RO/O4DhplX3wuNpM3EzgPQGZrY9R4HJh/7ZXaa5aL
	 WxFxKNRP9EY8xeYVooezlLtNTs98EVDXWSXw5F8u64TqG9EwUCLGR4eXeL101/Ogim
	 T+Xtzq9RKodD/GXkoH3zwJqKjCTkjxkGN1OUWNyDCr+1WYd7GOtyfbdRiWhS7ABESj
	 1oAQGzuDgsEXdxfZUjQojwW7IKDU7/MAm1fh/CWcHNt8cCEpMVExcJXp52w21KxBRB
	 QmRzCR1YiPzIzxpL0N5B2HUFPR2Nyx4ua6tKg6MS6At/kv5nbZR9THNzER5Wq+UUII
	 RQU2o7pc77phQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9818FC3600B
	for <ddprobe@lists.linux.dev>; Thu, 27 Mar 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174306899361.21515.5816360620175750871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74f0eaa3c27086899d46434398f52c34ce6eae573ff5f31e05bfbbeec4a87276
Date: Thu, 27 Mar 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743068993
