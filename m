Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EB701863F
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:25:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727843155; cv=none; b=ILE/bSO6h94eQHkFZZOI9MpPw2kD46QY/9Yjnsyut9s6nwm4oeBQbQoppHlJ56auIodAFUtWNAZ5VdlEtBjTu2uc8b2taZqb0mYYewXIe8/Q+CRdpWUZmlqMB8mIBHZgsJenAolkhTkhULDgNRXZl7u5IDGbsOQemz/iU6Xf8HM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727843155; c=relaxed/simple;
	bh=8cqYeo0lBG4C1/1joPks//4lSkXyVdstNUmH4gSYMN4=;
	h=To:Subject:From:Message-Id:Date; b=RZAjxPXYnlHXfbgVXFKY8HYHzlmiIim8Tgxpe8+SWmJyYfnhuaRsvsshFwnZsS+okuGKUAjgegarAbtg+hf4eaAU7R2oTYsZ9adQLNvb+01EEPlwnGx3Uj0A1lBFDhbme4nq82ZbczMJOwdOq5TSXHH7/vwEmPmYFUIssqIpVDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B18MaD1C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B18MaD1C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9B0DC4CEC5
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727843154;
	bh=8cqYeo0lBG4C1/1joPks//4lSkXyVdstNUmH4gSYMN4=;
	h=To:Subject:From:Date:From;
	b=B18MaD1C8A2wIsqkB/rUjJy7CEd3Q94APajirDhUs1Mn0qKHebuK+n8tVxDCaQsmf
	 Q8VHTjJ/up4pCE/hjzk2B5CsnjavUGVSU36c2CIO709gECj6R8h0Ap2+ZcklGSvI5N
	 AD1qyQGazlEQic+Vd0S3a0zR9M1dh4ZH02gbwr4FCnzboUsYlGmFjMBd0tkfDFV1rK
	 CjCN3DFRaGUJcfpZvdVUH1/c4+36MPqArlQYuEgVa6d+Y2V9vW/jxrfNQqR1jWAYBW
	 GNrOX0Todx9MPJtZ0f0gfc35zJaMUwzZ3E+nyeIIdDWV9TIFw/T6Vi+F4F+sCrhE2h
	 NHGHpHrZaiJJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A385DCF3195
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172784315362.25335.13990922151471468245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 29f865085e81eb96fa5b09b9b081bd428747216725ce1bc39f2f78ded672cfae
Date: Wed, 02 Oct 2024 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727843153
