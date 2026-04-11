Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24BAD3B47EB
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775935654; cv=none; b=OFT0VJbh4lJ4w83ayQFllMwCwSJOrMZfoqXamsYnBoKSkzIbdrbMIa71UjXIpESA/n8/jIzn6D/+aJB319hA67e0Hpd8jwngvp8biBH9dCfUl5i/37hL+x9QhrJIgHLyM3CmXszeblNL/lhsVq2I3qkIV5NReO5BTdMIRU3yMus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775935654; c=relaxed/simple;
	bh=6+7l8dXaJ3mmbPp3vfGMHJPxa2jpcBFVEOlgUBmZZ8c=;
	h=To:Subject:From:Message-Id:Date; b=BvKjS98wUl/HFxS0rUpk5wuSoSq/hfNjVMkGWph6ACG1PP5RUQUHOGyKEjt6C05On9qHNeXseDLEvGZWxzH6Tbbqb+u56pSlkY/v/PaNXYopd3QNXd/rY6PEZRvvOg4dxG/osFH9HqgurNKzpBFv5XJ7+Mwa7rlKGVebIKFvJJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Sh41pt8X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Sh41pt8X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBC26C2BCAF
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775935653;
	bh=6+7l8dXaJ3mmbPp3vfGMHJPxa2jpcBFVEOlgUBmZZ8c=;
	h=To:Subject:From:Date:From;
	b=Sh41pt8XT6ooX/es/6zW5sbbNue9wOvH5BZ9QaPOh99CigvcRfrBmETRbW4F2SI7P
	 6qFUjQ9T07abRNgWu8G/cpHmm9t7haXgnyMgSHiXq6jWUsuQsk9GfcURMPPDPCXYt8
	 3A/ao+YyDlmHUglQfgQ1hB96OtPz234Oox/F+UiFbhenh/x4lRnB3UbCwMhI58Gz72
	 4zUKBLluPogJEQE8xn3P6L08W91ByMjYhLKZ69TXtrWojPLcBa4LXwPLZq+jIPmnEX
	 XQws8LJbVHjqzLvhBj4t7Qb+JrujpMVyA240SbwAESM1nkoCL6YUthuvGH1RfLQleC
	 PR2wu8n0H0FHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9AD9F3ED5C
	for <ddprobe@lists.linux.dev>; Sat, 11 Apr 2026 19:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177593565368.26396.13558631372730569219.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3c35fa98dc729c91c855ab8e1c19633db7283856a30fd7d1d63a1cb450d7a768
Date: Sat, 11 Apr 2026 19:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775935653
