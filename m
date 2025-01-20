Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 499C129408
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 05:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737351954; cv=none; b=aihT+AeWWX0SF+9O5fnT9DZwhpzFCP9BJtPzNcURVbElDFAETATkXSZVUIHClYwAwJyHXBaV5poC4kwQjRAmD0CJPjG9EEc7X8Q+UAdX6ykjvh1578MLoGCaX1dbxVUWDQRPR8ySJlnCzrmpATVqZOxxjw4AVkEQ6mFOAGI6BHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737351954; c=relaxed/simple;
	bh=HPMNdfGO3qifZ67t6KGaCjhDGDReDgQjsd67vVCeCeM=;
	h=To:Subject:From:Message-Id:Date; b=m+5gf3d6LqCidTepV4DHTNFTAomhGX/UiCnKOiSD2o63WU6h9rmtKMOr6W366sKgIfP+2gArWAF8wXpRoqnbF6NVaMyHtlzCvgx2Oim+JYBsk/H3HAHl4S0/Mg/qiACKEEOY79eWA5AGUbi+gwf+ckWRRjPZELrzpjGBjYly1FU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9fnhuSH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9fnhuSH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF54EC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 05:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737351953;
	bh=HPMNdfGO3qifZ67t6KGaCjhDGDReDgQjsd67vVCeCeM=;
	h=To:Subject:From:Date:From;
	b=k9fnhuSH1m3eI+LbmwjKXKn4GflEsHALCxBeCF56Y55CX0JpsVz7Flihmhm5DjVK4
	 3BcW+0505zNRNC9TLMDik1kg1dSmLmerWgLd0wXMDxw51Tns9xeelSM3F63kRPWFwN
	 d2tPd7HsC+3Air4YXmDMDle4luyfCygCTRFjvB+DaBO/hpkosA6l7Fx4iPkIY0WkU0
	 iICZytKWRN2ec6szQcntD8AnoMy8oX+ds9rRbI9AcSP1gimaufjeFdsqHqbm08tCKj
	 3VdBoz6LSBtRN1LBlV3PZ493vTXGp3+izB2hbSaSO/YGb9c+t2CoG/bqUgODB1jFBP
	 In3Iane7vluag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A4C4C02185
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 05:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173735195359.10508.3281909219344228312.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a3413cae94374c9ca4b0aa00d20a5b761929f6605f1a06ad657c2360ad5745c
Date: Mon, 20 Jan 2025 05:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737351953
