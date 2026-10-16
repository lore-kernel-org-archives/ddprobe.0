Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56A875A0AD8
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792173634; cv=none; b=TJb3dsKA0IwbAkmv5WNsqKTvucc/vetDiyjdO2+Y6YBVR9b7eTtnzS6xKI/wnTcOSYKuPhNadO8HAaDkuw1vtRQpoKtKwMuVZsyTe5wFUIvT/KKXYi6KwJ9tdh/xuLGNGaI5PLME28dGPcOKABcYJkMSCSlKeINNWSS5cAkx9vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792173634; c=relaxed/simple;
	bh=qOgmA7Skpb8qy6ZBA1JaidwkAsN38FsbdEctGbPcYIw=;
	h=To:Subject:From:Message-Id:Date; b=F8Qyl4f57W77NxiD5dVI4lE/dxsUwjzS60CfatiDjN0XoQVMBQF40fmRDIr40zd373oCG+3+SEgLhymmfCyxuR8iMeXH2uyKS2ufvkWoAj1L3bQ5Bk0X7lNXXvkAEZzlFDqtGX/Ao7cOKqAZ2MgdHvSyg/NvG4kd3qAbJ1exVNU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkCOcpVW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkCOcpVW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E538DC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792173633;
	bh=qOgmA7Skpb8qy6ZBA1JaidwkAsN38FsbdEctGbPcYIw=;
	h=To:Subject:From:Date:From;
	b=gkCOcpVWG1eLw1H9JPLo+DZhTeTNWJR5rn8W3zPJBkmCC6bz9dqk468h+Qx7+p72I
	 iyjP0623wGSUq6nCrPYPVsTF9fQavqdC7S4jAaVG7hU/xl76syQXPnsac0HgkQGSxD
	 AzzECbMT5XWtuGKROjXn8wurFV97smz1/hTEobc2pfPr+Fl97OZCXDttd5gBepxANw
	 +sf4knaEfLgUffiEqVwrmqlKH5tDex19iprdsPKW9Ka7TlpEntgYz0oT4tzJ4i0wDk
	 9TY9vWVOHgZxVohsmHKNkyCOVYj271Abm5RUPnFcecmQaMaY6w2Up58VglHtzVSO1w
	 ChTIdQnC9LwzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0780CCF2C0
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 18:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179217363374.11291.9212319105364713491.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 85a0738a097e96164a740f2ad7c4d91e46bdc620f5e2dcfe6f02f538face3d51
Date: Fri, 16 Oct 2026 18:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792173633
