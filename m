Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 428A5388899
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780229674; cv=none; b=RAA69Iy6kMaC6bOBbAuJFTmU/0O1ofg5NOUeEoXdNb6hbFDN/+oc2i7GwWc6GIFJPhFsvCrdN1zodrrrhflsAWFDfds4uLkhBhUTSSr+FdD6J1BPZtLk2Wxd/SGlZydWxsQIvbvrWK5WGB7IYHGrbU8ynJZRh2ufhG8nfVuvxO8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780229674; c=relaxed/simple;
	bh=H4uLUl+Ix9BxB5VRc49msaO1h8+Ky0z9BvuFHtdcCW0=;
	h=To:Subject:From:Message-Id:Date; b=OO4GYu7OI1eIUxgNcg6GWW2m9AT1UHSs2fmaTMKZAEafoqdlT30mbce61/PrN1xEH6KIrRcm6xHaZlb7/kzO2TRVx32Qs2tWznTGsgRcBr9vrmB8vU6518kfOJtMLPlIo/KYaEgp5Ip1Q3+r+/qieMbO8xofyzB9Ihb9+XpG960=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBnsuk+l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBnsuk+l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6D59C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780229673;
	bh=H4uLUl+Ix9BxB5VRc49msaO1h8+Ky0z9BvuFHtdcCW0=;
	h=To:Subject:From:Date:From;
	b=HBnsuk+lGkzBXHVU2tVKptBEVIgSpNVDlWqxlecE4lAbKtno3wVAI3iZM/x7/kcOE
	 WC2cjwIa5QHJJD+pluzh1QQeLGAEvmaCcF3ZwNxMqSrALD8aSo/K0Ywq16+X0eujeh
	 uYwY/J1hZdwrn4b0s6yKWSw7SXK3+ZL07nKxR/HNY/k1dAWcBmCSXPV41f5N29t0XR
	 IYV6N5ytBPmc5z/bm6L3ll3WOGAhlQpyqzZUtok0URm19OUWuusjjeTVDCcTk+6MEq
	 2K6zG5WCb/R0IkvAul3UPcwN1ZoQLYgrpsr5fUBZQKOV7muzopuSzdS2RvrZB/I+KK
	 fT+8dT/QM9cHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE579CD6E52
	for <ddprobe@lists.linux.dev>; Sun, 31 May 2026 12:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178022967368.1635.8468679227136621356.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 97cfc5096e4f58a9176ea9227d486485b1db1df2e288432c6b8c34f6be9ea609
Date: Sun, 31 May 2026 12:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780229673
