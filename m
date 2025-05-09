Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45A5E8632C
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746799794; cv=none; b=eI6WJi+MzMquum3sGixk/j3cPfnGEWFflkhKcsrPsf8I1EHk3YjbRce9o460O0T6ZGm5oen+Vd38HxPl5cpvEB+rW4YSJkl4AW9e1P4g+M5Yx7WY87+4o8cqqbbMzYLb9fJYLI55vL5f3pSn9Vnne9M98IWOgGx73/Ps0KvcE60=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746799794; c=relaxed/simple;
	bh=jEkHflRpC9ljS4PdTy17Ebl1h2gL2PjgYNN6mVoRpVE=;
	h=To:Subject:From:Message-Id:Date; b=OwdgnR9zhg4K2Uxjg9H0K4qK+OHLs2yxSEePKRvkSMdpEsWBmdmtUiG5jxiw0i3es3EoydJkHXjtPc6r6SrwR+5V01TGAjnI3DlNo/nUAK6+kfH5lywKufMHomnNvuc5VjE/fobjcxM8KpKYMoAy7nFalvVqrUdIOwc0FKMpQaA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D1a0VBQX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D1a0VBQX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1475C4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746799793;
	bh=jEkHflRpC9ljS4PdTy17Ebl1h2gL2PjgYNN6mVoRpVE=;
	h=To:Subject:From:Date:From;
	b=D1a0VBQXTUg4PDI9deg65RYet7RxxXgUtWZiCMbFXaTfkOiGu1GYcxe2WeR1Vp9L5
	 RKdGuolhrA5nud7asD2xztvuLvNtjkMgfYOIxjQ4v6vIle/t2MINQKj2fGfgyA3/LH
	 j2UvE/JEb5VT7aBZz82iMMdECSE5k2ZPn7Eel1yoa4DGWKAR3Rey5GwAIb8NbW94Fv
	 /TYPbNmXzHIp6HWgEQf0y8nQ5hPaUybO8fpvqYAvDIjgUsV37Kyey7VZGDgYiePkRp
	 wqBsLGoUfSi1SyMh0ubk5/DMn19bJXGdJzGMRKh7uURr1JFq0jYQuYyGJLLiEPkahO
	 wUjez75qIoIBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E464C3ABBC
	for <ddprobe@lists.linux.dev>; Fri,  9 May 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174679979357.22170.11560794599558287635.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b728c623729ebb0836b3b19a26087dd68460fddd94e5424097fa62b060e5a3f
Date: Fri, 09 May 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746799793
