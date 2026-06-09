Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FF503CF1E9
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:05:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781031934; cv=none; b=r3n0RhV3um5jbk3y1cuQF4taFStSniB7v9P0hqzw7CId/y7dplTSaDn/XOaG6yqaPjdYVLS+U0UnTrzyx1MpORcKf7aSMpNjOA74+/AeUBjbPw4CReHTJr85zf332AQPyaw2HmujLM8fj6uOeedDMXSkdVq7mvN71Lev2GaSzNc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781031934; c=relaxed/simple;
	bh=m8dTapFRlGirc0g/E1uxBdg7z67eClb0Nc4AkjXRMRc=;
	h=To:Subject:From:Message-Id:Date; b=hok1ek2P7jlGGydUVx0SyFLIcrI3PWlQ8yNDg9sDguDL58r0Sjk7NKTeKseKe3A123Sw1/+G6VMK5XhG5YPcIInW2GMGdCQTWkUqpB7rOYjAOlpYuduNO6LkMv/XRsAXQTMpN1aU5eu9QEQtlspdnJfCwB35h7VeH+1SB6TVBA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpH7pVtL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpH7pVtL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0C3DAC2BCB4
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:05:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781031934;
	bh=m8dTapFRlGirc0g/E1uxBdg7z67eClb0Nc4AkjXRMRc=;
	h=To:Subject:From:Date:From;
	b=XpH7pVtLwaGifDIbf/hqJzVXZjpdITtdFf22eV/jJWxVOl/dEmBcDDFpPLprl81tG
	 UXrHEg9C8LkfT96PUUODhq8eU6JnZMHIOoTOeA2IBGA2u3i7nfwvzMTs+jcmfgOhOj
	 OpjCkTRE6bnAZYYeVJ6Cb5iAimgFbuJpU3PO7Q0ePghPx7L0/g2k8+GL1qSRzHcNVh
	 RtX1rhHuMzxTPII+LVjAfV97d1ZlrUv3OTkpPXE4CrKiqe3jmAP54P1kKDIfeu/BH8
	 z/+zXKETm3dqypBK9f0Zkd6vy5H1Jqj5j7uWGBfVAsUMN7etSsEb3Hgtqm6dFoM32J
	 ZB0jlwzDUOCdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D8C22CD8CAD
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 19:05:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178103193387.16033.8961318793257191452.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f79a64efbd1c8729d37520df7fd9d62b35e21825616d5c717be45a19dc07062
Date: Tue, 09 Jun 2026 19:05:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781031933
