Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6899421ABAA
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790232034; cv=none; b=NCtCCHUsAmIni7H69poxCMqEhYnHd/VTBLWm7IY2rglF4QbCAjBxsXtDErf5tdhucZ8Pr1RR5u9XOJ2yMnuk8+iXepjBXBtiRo1wZ7FvwBqpKW9rac+xx4WYWbijDTE0CDR5COQ8rzAm7k3FpzkNx6tg7quC6+raXPlucf/gniU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790232034; c=relaxed/simple;
	bh=FZDVCCTEXbGBQgSmW+A7MSHeW1oafEeelaA0CFLO/NQ=;
	h=To:Subject:From:Message-Id:Date; b=af2yTGDhKoWXr4uFg68HA/lnKo6sgpANT2TLgZcWQfvGGKsGweoPAhv6d2gGamyJWG4pWUByUHjL3/zbPXZ/bGBkMhUe2hQCwZkB4ZCTLbja2vpCYykhVa1d7eElxpcVwgxCHo4c1tY2OdJiPtB8CTiJRlCW/533Jn8cVuhGqx4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cKAU3EpM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cKAU3EpM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D64EBC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790232033;
	bh=FZDVCCTEXbGBQgSmW+A7MSHeW1oafEeelaA0CFLO/NQ=;
	h=To:Subject:From:Date:From;
	b=cKAU3EpM0rV9ejes4f2s2n/3b9quY7H7SYEFfw4haXP8ml7BFiN2yJzutMfIAKcak
	 A+WVm4OZyt2l4mLy/w+wCA5RYmhk/CXl7/YjWa/46M4WUnYDifep+mUmbF+g0fCkC4
	 XUID3De+EWPni31OpcFmLMG8I452W27qLZeu9LOVBIo/cGrBLr9amsS0VNUFehG5LJ
	 NQBkJ5GJ9pkocaOq5AQglJI9UpxV2sR/7csUHJ8xEbrq17hRr3dox3SSi3YuqiLRXE
	 qCJBNdN/Aj114PqTEbRGBy/BZ7LKwhzEQmDdknka4Hj7gujllCXGXKXjn5aDflwYQ5
	 2CNV+AULTlNWA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B28E7C98314
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179023203371.27064.6726576302877684800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 437ef537702e912bdaa07fddc6fb28b27f66d96657a3c8447839781cacd57c85
Date: Thu, 24 Sep 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790232033
