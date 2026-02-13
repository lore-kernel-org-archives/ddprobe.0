Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34158304BC6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771020894; cv=none; b=K0378JVJCTkXh2Rb40gkOoLw6X3q277gjwuVTBOres/qzE7BOP3m+8JWTfqep2EuO76nnZ7C4JrR5ayPdp8HdqJgQpCfCeAYQr2tGc3YaMSAoggfdkZDApgwbYXG0Tl6dLmzl5cRZVE3EXSOKyGv6BzXduHaLIgPZ0CvZkh7L9M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771020894; c=relaxed/simple;
	bh=Lj6hpj8qasaItXM6y0FUS3edG8RlrckXOZ0UcAic8KA=;
	h=To:Subject:From:Message-Id:Date; b=Sgf+GLftlUJZn7OdFeA3K+Am172eUVTdldMLHLGa1DZVbwDWp7YqaMtW4DvzL7tkGj6KQHgdgrdBWh/4GrekOqfqNroi28R3f5eHQ2++VAiEn2xjjta3fS13Oh7RYI8L8jdVtIj989sptCfFrg0R7EzKxLTu+DnOnghqkGQ7o3c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OI6b7AZ/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OI6b7AZ/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66BBC116C6
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771020893;
	bh=Lj6hpj8qasaItXM6y0FUS3edG8RlrckXOZ0UcAic8KA=;
	h=To:Subject:From:Date:From;
	b=OI6b7AZ/Zqs0c16jaIe6IqAtgzU5H9qc3asYHqFl6WhXX4MP0vOSpMu8pfgcOTrBX
	 0JeBpILAXYXATAzT9E+gjoN4LtrnO4p6g07YGgoBwzlwEIxip3Iox+fE3NW090WCTV
	 VOSzJbnmUce8zWKOlvs3mBePAzyXwEVs7gFgBzAcOeiLzldcPZtDC4GwvNpQ1L562u
	 b1nJfXhuMgE5YNK1yRGlSqve5HZev0XbV1ZdYwtB1gfU/jUf++PtsDQXf0Cv1xprxa
	 arw2NsExp8NQznBzBKAFPn7Dbh3XYCLlbpI/boLJavWDFYtJIfaBzV4LRGk+ki/mql
	 CVa0tdWvPx4/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B678DEF99DF
	for <ddprobe@lists.linux.dev>; Fri, 13 Feb 2026 22:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177102089370.4605.8811807641075414161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9cf6297cc483a56a37b5b0fce7e023c33250bd5c25ffe041f5620a94312bef87
Date: Fri, 13 Feb 2026 22:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771020893
