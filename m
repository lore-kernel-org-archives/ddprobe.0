Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CAFA253F2A
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756633194; cv=none; b=jviRJgwv6DbjLOJtkGWu287mgi4sd3kICmwjpwp8BnARaMOPHSw8l1AAlIBfwJ98ugPicq3HY70FMmg6+6ub+0sYSv66NcICh868udSqddPv9ub3T1nvpR20u3vA0xWKQ3mgCu+Y6vekdc29OVrDQt3JJ7EkyGQQEccQi4T7bWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756633194; c=relaxed/simple;
	bh=gulG1ur8bdRrO2eeoyVr+5p1MsyS/GpDWQgH+VlcdqI=;
	h=To:Subject:From:Message-Id:Date; b=svNw+loZceGxQnWNsdov8rM4ChpRu4Vlbd2SaTafEEMf2BZ/6kou4/VREJn/1b5HEM7F3b2XiTiaarqwpqt0ImnJgPB1eAeVTqO2LTs0Hh3gDiLens3vTVctvtLv/0II7g+Y9mprRlFbl+V3cSq61eP+gRlbnMWun2m7TU8VuQU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X/Jq0sff; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X/Jq0sff"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A549AC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756633193;
	bh=gulG1ur8bdRrO2eeoyVr+5p1MsyS/GpDWQgH+VlcdqI=;
	h=To:Subject:From:Date:From;
	b=X/Jq0sffkxyYHOyoOtDGiplzOTr+4T/3QxHNHBkMBrtfR2mje9NyYy6nWBB9t4YCA
	 9BbGI3C8CjMI71ays05tvoS+GvM79ZqFqSNV4IMIjOiploFKoGD9L+GzjmysYV8Bng
	 D3PbVC9TIJA4BfrejrUF0O648y/VS3FF2D9zrXXF9h788JoXnv5fjGfhsElNGZkcsE
	 7lfE5Ypq1XfecTyW7G5e+dmnbpKva5kI9Ao58Qa1ii1MLAGWHXj2YxfkZsl1XEvy47
	 IThut5hQJLt5cdRZTIXuld3AXvXmzkViBvC9IefZTPDmaJS9VmsLvjXaIVevZZyUYZ
	 E9ZzS79mQR20g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DABCA1001
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175663319359.14474.4190151223624410472.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d114bfc6d352d9dfcb695e946d4bb1d44c39adee511c76231013064acfdaea7c
Date: Sun, 31 Aug 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756633193
