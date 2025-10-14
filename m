Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22FB51E3DED
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760428194; cv=none; b=Fr9PsfkU1/GuJJLbInYVEJQwRzZdrSwPYmNPjHm92bvsVPWhVc719rQ2G1EpNed0WCX9dCt9b95zNyg+JyBs+yUbvTOHkspEbtbkrKBWB+JxiZnMdAEl+iOs5awGzUq5ZoAbBgdllodUsROWo9HqWxor3VuWAOKj+Qhxmihg4OU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760428194; c=relaxed/simple;
	bh=1hgjmKGHNS2CeRljo6xiADd5PjelQb3FEE6ehkAKXWk=;
	h=To:Subject:From:Message-Id:Date; b=RNvpzxQizW4REkjxbw8ToXp7B5Q++fsYXDjB5/CRZ1k+W5m00i8aSbDfkDiwdXlRjJpvMExjUwI3t8gjitHQ5ZCasn8xBLXiiyVDs1ndhSOaSQ+By41d411zLLADbfLOxe7hEVFN691sVFRc9rFumIrkvjBgM977AWs50gCw3NY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s3y8fiDo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s3y8fiDo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B53C4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760428193;
	bh=1hgjmKGHNS2CeRljo6xiADd5PjelQb3FEE6ehkAKXWk=;
	h=To:Subject:From:Date:From;
	b=s3y8fiDoxiUF9bAOncsVWqiw/0IAYXNjn057DgCOUYZ64G4alQ97zhLR7c+MymxAI
	 hY6QtO3yRFyRf4Cx61HK07XErv+5ab9BZBRakHrNt44eoAuog0a/bHpIDnGI6evty+
	 9p+4vvnauWItcrObRrSG2Vu2g0hyKSOX0z+zDJ7Jc4oDN0F+qFl+oiPlTyY4VGqZPU
	 eQW8u3ji1MMepg+3Ac4rjcsbj3D69LqwRV2dh1MEuARoyZVAp1pbbxQI8Fr7yTspGt
	 qQMmhYW3m04PxQx3So9SZ23nQTxVsGNuP3LXCPbt+kvFGnVR3vX0uVraczDmKt7pwJ
	 vwvSNFuj1fQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5E0CCD187
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176042819357.14359.15022154911552911619.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d41c538116ffbaba6394873eebe3bfac0e3c0ed7741c25cfc1dd3d447f434f35
Date: Tue, 14 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760428193
