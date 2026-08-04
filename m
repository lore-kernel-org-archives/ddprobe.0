Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53B7230DEB8
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785882034; cv=none; b=iwlOC7EX70K6YwjW1jTpTJkdIULb+VnNwDwK5FaYd0f0unCaywC6N/P5m2Q9zcYO83rQ4ilSLEmi3Dt4ZgrmkdJm5MbIQKarkXMTPRXJz5CZ3R/L/tbtGkfYeVeu4AWbI/9CpWMax7uesyd8HDBmGQiWyxWLn51gRGw3bYa8HTM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785882034; c=relaxed/simple;
	bh=S9kpHqLbuTp4gWHGuT9UQZ3q6rC6bqcQFpPzpNOcStY=;
	h=To:Subject:From:Message-Id:Date; b=ifSo8GspN1cZy2FR8jX05ehFkuPwjfCEzJxNcaTJBWfmR/EbmT60H4RjAF8na8DSGxcj5WFb7VdL3ZB0qQbUSYsIESlCuPgcaQWZ3fJC0U/HIqaF4rDSvV6ijgty3YXd5zxz6rVXMWgYnh7IKcGVyXXuav5qZpsgh8LTAuvk4dY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tCLEJU6O; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tCLEJU6O"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC487C2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785882033;
	bh=S9kpHqLbuTp4gWHGuT9UQZ3q6rC6bqcQFpPzpNOcStY=;
	h=To:Subject:From:Date:From;
	b=tCLEJU6Oe15ffOR8rsagaTjOvnpN1zWx3M73kw+eyBRcPOMTEPbGOKe5GAMOe3t4P
	 VMFT1hi24p0PP76uk77ea4IDBdPzR/tgNp0L3d+kL1f2jYtcTLMHNL+LjKAGGq9i6M
	 Hwwymsrcxl0+6Mkuw3wmafqzU+0zf50i90RIT4rp3VrBZdRX7PwxR6FvP78UiajjUq
	 Sd2U8//zfeRqUkpXCzrAxI1wAZOwGORIU73zttZolrY78hkDOILa/zG1Q0Gwz0cSG0
	 vAptoKDCVFRodAfYKXOlsLJZee8Q1TvikqtctdM4j4+LqL2z9Uv82Y2+xbCzm/9ec8
	 FeHpK0bDDwhlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8AE7C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 22:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178588203374.8265.15629742534643999674.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0be856484a5e6e8b6e57561327414478b7f82b6e9411e5818f94af8ff21d3984
Date: Tue, 04 Aug 2026 22:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785882033
