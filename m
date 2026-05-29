Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC713F44EC
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:32:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780068754; cv=none; b=f8iX3Aak6Pw5pZKbsFlCPD+v77Von/R1NM+nfzdvGF0Moswanvj3wj+5l4x1/WkF0Qgypf92sQkq+BPD9sV6SvQSxLgI5j2ZFNUcPw88wOxI9jEifl6IJu7dRu2f8NAjTfIV3FdNsOrmYFMouICSPw9VevBTYj1hrbraDeTzBAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780068754; c=relaxed/simple;
	bh=O04yg82PVFXMCyG8Y4YALWnPac2917ytQLAjyNZjZy8=;
	h=To:Subject:From:Message-Id:Date; b=FpeWNU3PMVQn2ojzUkeFY3E3pOI0uf4ktu83dzutHgifd62+9oUBfHa9reru/ty/R7WJcoNp5INN8rPM75qT/RWy0x168o46IcOqySDCIVlTMT98p+cn6FalDpSmnV6PC48L8BnLU6tLsz6YkG5WTLr9NM+BBTxuzr1dmoqNG3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZlsJr8+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZlsJr8+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB66DC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:32:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780068753;
	bh=O04yg82PVFXMCyG8Y4YALWnPac2917ytQLAjyNZjZy8=;
	h=To:Subject:From:Date:From;
	b=VZlsJr8+tbcAtbes11HCYLRQLDZerZY/+y06lt18Zg4GPxHCLZTQejscJqHU6uW/x
	 ZfJzHjvtd73zd+nt/2QftAi3Z0rCgnk3fAlg9Da0CkC+zB3QzBcWasw81ucUfDZEDG
	 RZRjsVUwsQ+oR57OXcqQ5lYGGLqtxKGq9df530Bri4mqPFzF9n+XAjc6DV8iMuwdeX
	 ack/j44GyFB3LJ7EJ3i6+OOm1XIXoP9sALJ2biO+Qp8te4ZJvKh9hb6YnY/gDdGbk7
	 WV2BLbbZRyER9ICRwYa1ZbHOv0nn/xWn0v+zs/LoAT8hzRCP66Y41NvDIO9xK51uK7
	 KM4j6b70Wa8Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B35F2CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 15:32:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178006875372.23934.12246084074561543242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 87182741ec422a48902183857cfcea1e760b315bb016d6d053665ca705e41e13
Date: Fri, 29 May 2026 15:32:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780068753
