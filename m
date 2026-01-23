Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2909B272E61
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769201034; cv=none; b=BlDIVFe17SPd8WiQ4qaMNW5cTS0r3phXBLJjPs6x9OdptacZ66+Z0IIHGg4qnMHz0o8uLhUU7DOw0lHFzzNfwMe9ClxWPxj6WlU9pRe3Rn0aqD293VwEFwvnzqIaXOluocAunP7EtKylDNwqpZz9OHE2tOD25o/MzlxgCKtg74w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769201034; c=relaxed/simple;
	bh=Mgikgxb0xqnimStuapfZQd6MRbXknzYkm738nvmimmk=;
	h=To:Subject:From:Message-Id:Date; b=pAj/kD+AE4bQ3VSxOvLtxYxBluWWAS5DNJjST2YBC1Y8LN1kDXDmpswAsubv4T4pAh/c7ztN2xPhHCx6cA/LRxxfeKKfT1ak8eEhVJK5ZTZVpj9nN2Wi65O5w6Cw/C3NQ1OgVt77TIExTvSd1UkczMtj3mCtirhZV0+h12rqYeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEgkFlgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEgkFlgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6DF8C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769201033;
	bh=Mgikgxb0xqnimStuapfZQd6MRbXknzYkm738nvmimmk=;
	h=To:Subject:From:Date:From;
	b=OEgkFlgVm/0iSclEafH95R0lFekGJLUIW2Pob+2aPN30EozsGTCSykhsSqQa0kCYV
	 o2cLhJSU6hOF7VphK05CJdD1CEWSsRNPXLCK7K5xwjvbZcgZYUhM7CQhFIH5ljB0V6
	 VZmh9X72ZW6BlQnHZKxb14Piqo4VIYGsMjH4Zd/P4QLOaHcD6VEXfsqxTIq9CwOAWe
	 /SvNwRoJbdxXsISvPZjuwngOyXhI8dooI5NMvH5Td74zBt/eN/jCOyS7NKFJVgH/Ge
	 hUx7n8aOS2ZA4R6dlQPkGWSZqcUdz0SO68Sivz8WxuAK2WXtJHxYk4Q05xluqEQU7X
	 6Tw6uQLRWz8qA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95646D778AF
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 20:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176920103358.23817.17330702098603754280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a44ddcdf2a56c58612e9fa2aef1aff01f1b72a212cc8ffc2b232ae47df2caaa0
Date: Fri, 23 Jan 2026 20:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769201033
