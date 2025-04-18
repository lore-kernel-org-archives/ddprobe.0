Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C3481C32
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744934994; cv=none; b=h3cxdHvKqD+urtB9iKVa/GsFD7eULaDSUcnYw+UQQEOVSK7nGdmU+r9rn/Szp5/aLZ/tBELINbcHphO8QKg3+XqHbW0NUTMK8NAnLpo+v0iwk2xehyRGOXWslSJNTkmZzxdd8snqZ0WtIg58Md1ecRgdDgU6vL0q4FXfVKSbcKA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744934994; c=relaxed/simple;
	bh=bQKBE/sUxCzArJ1qZ9IXm5SurWvQ00ciYU1OAhXjRUg=;
	h=To:Subject:From:Message-Id:Date; b=REXzT4hBTz8X6lJyrApXkXcyqwy9P4S8bzepTqDa5hX+USYowDScqL446Gj2M4IwGFPJOYX0vFmWfd0az5JlxTxSWjYbbpkTT8PZv/hWPftQPYWIXCwK6d/y1NqPi/yMcm/sVyJwXpSbMMNb9023P/YyFdXb97KOtC6vNGpB7T0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GvJiHLD3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GvJiHLD3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B2121C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744934993;
	bh=bQKBE/sUxCzArJ1qZ9IXm5SurWvQ00ciYU1OAhXjRUg=;
	h=To:Subject:From:Date:From;
	b=GvJiHLD33VnjZluMVV1YRqvIvPNc/+oLPNCygQ8YMqLgrJ+B5WYk9FX48y2jLtdQU
	 CqP5Rf+yQrylSLTy214NGOhlHYNcVYG18O8SzMM9AiigrY19fIDMLm8+imVZn6P88u
	 Yi/EvkxR/oQZBVWETbn59mxOBZaAYbXuAQ8bmge4g7xI3y5kxtmSffJWNVtP0aTc86
	 0BN5NwlYbsAlM4rAQ2S0R08VoiNRn8ZXmw1rb8hjH+VpKOLDO2OHAO7bMgNGj6XMuT
	 klZVAhIVeUFG6a8D5ctmfrZKC7P2fXgHtXAHxNpFE8bhWZEKEP3+zNFSdY+Mg+UGP/
	 KAOteQdaT+r9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BAB4C369C2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174493499358.8136.8730981927218837878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 44d6f53af321fbdf2183e655cff58a2e30501f5a12c97fab506a6404c6eebc83
Date: Fri, 18 Apr 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744934993
