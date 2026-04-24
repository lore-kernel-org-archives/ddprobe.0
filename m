Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29DE926059D
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777069054; cv=none; b=gqFBeM2br+TC75zIvt8nQ0rvyZV7D1lMiajM0B0/8JpC+fGTJ5pz1fbb+GpbX+Uj/GPG5jBYBRsWBCClJC4nUHqKqdDJRtUygD/E2EpTdwtsLatdRxPPkdI2m25merWhAXjxJypkw4tzs0icZnAxsLG7+1eTRXufBBvpX3dJ8Ls=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777069054; c=relaxed/simple;
	bh=+lGtb2oXlhnMEyzwzdgg0rMoM8DCsQzsZTffOTM+Y8M=;
	h=To:Subject:From:Message-Id:Date; b=dVhEEPwvAnsa5XscJBsebRaviThFBXVanFqUo9IVbYspmSP2/JfkS/5krRHtzw1fk6DM8tRx+y/1UFzabXZN0NqkM51pqk6n8tCx87cGv4qzHf9lLnZk31NgsRUfWZe1Egb+l0lYBcU1myov/vH5X8nj6Gp7Cb+SWWGlsWMvcY8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uACZ/3tO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uACZ/3tO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA47AC19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777069053;
	bh=+lGtb2oXlhnMEyzwzdgg0rMoM8DCsQzsZTffOTM+Y8M=;
	h=To:Subject:From:Date:From;
	b=uACZ/3tO0pZsTehpS67rcWeCNbgkzpxNTAsZL+YGyjkSAoliK4B7HxZ1XdHC2T1Nc
	 casKgumO/SKLUQQ7bZsg7U3CAF4zdqtXHAJQKUcocQ+eaDGCe00+lr0N562CIPRNBW
	 nYchLTsBy/gvcc6pBZxlID8u9JMfznJP+GEBSfHYF7xD2IE+b47zLhmBI0CpyNySus
	 p9jfBzWufOUUB9G0UOvCRR+R5OgaIVdAvePgrgk1MH5YuQ1bRSSv8gTHwMVettfOTF
	 DbdIImiCGQxArw+d0S6/3kv8JPc6GamWkNuez70gSt73b/XKh1oj8p6f0nAqlwpVTI
	 7CnqOGgcoFlwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A93E1FF8850
	for <ddprobe@lists.linux.dev>; Fri, 24 Apr 2026 22:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177706905368.23723.10687611131834330112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4719c8c6946c81968f20ac584d68a959b38983327c5026762baecdff7d6cc191
Date: Fri, 24 Apr 2026 22:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777069053
