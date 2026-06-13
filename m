Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22E263FCC
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781316394; cv=none; b=ZiEpdfevjJ1lqqGaNBEXIgy1NrpULDDhSHreMwHEWwsfNpGmGnKKIBh5LIk1SruT0ChywueDFfkhB+SHPTF86y4AhKW/Opts/SUc0hs1OjAYXKvEQRthgCxbdoJeZ2TQ8U+LTSy104QqoiGI7KWwfY7bBhaaLwnXH0L8i7ehFx0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781316394; c=relaxed/simple;
	bh=Y8aMr50q3I7eUMIcqWPsLm0VDlLtp0iYTx+CYMFYI8c=;
	h=To:Subject:From:Message-Id:Date; b=uQnfmaMCm9aXKkZHJHEJAcOyMTCfbvBY/YlHJH0EslxUGXogFuKMIfnI6YuJiZBxLuYoekFfNr4XyyFPK7jeYuyYdF5Hi4d1uwf4BgAm1sq9p9N5QNu+xz53G0wFalJYgDexDOJxZ+BbFmxis6UFDJ1fGQfKLGUQvqXsdiazD3Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bxvMHsd9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bxvMHsd9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4AFCC2BCB4
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781316393;
	bh=Y8aMr50q3I7eUMIcqWPsLm0VDlLtp0iYTx+CYMFYI8c=;
	h=To:Subject:From:Date:From;
	b=bxvMHsd9I/nU58646lhTMLX4iqyk7CZtW31guECx89WZNxP05rPamxGbOI7KIjkix
	 Mm7j45tzJPz6THkl/sirSNmpoBQ7dFPW2HiLxhepE+uP6/w6JdL7g5/8HaHKFrEwra
	 vaGuH5uLC1yrGtT/C9RdW3kgJGmyrAxU2/z3h0JmsxDjbJN4erF1jzpSEN1JAKr9rc
	 yhcRZvrzTQfCm6OKs4TXapXo9E8778zF/5RSAdsh66NENSH+BQFK9x3uptvj81iTMZ
	 zqazSGm/8Ty8vlGcttYGBP/HrCI6J+Q+8PjOJZqZqtp8UTn134rtaFiqESNLp/ITHr
	 7Xq3z2Fsh6Dbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E14CD98CF
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 02:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178131639367.13223.13790472841644265125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d6cc13a201f74dd3666f9b8b48863be4ea7d448348b5ad0de3098858bda555
Date: Sat, 13 Jun 2026 02:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781316393
