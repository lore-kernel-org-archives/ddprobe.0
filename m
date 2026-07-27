Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6E070435A9A
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785177634; cv=none; b=QM5N34raDqY3jrDpuEPopPYWr/VTbCSH+PurFJHfq11ivsKzRrM/RbMmLujrgRofvBWJ82IBN14PLX0GJszPzV/rDjdxbEWiPI77/er5pwwCRNZlZ36O00GFvKkRCqX6cdW4qemum3EW06H4ncX3PAETWMaEoM8c3xUeB/KyjnI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785177634; c=relaxed/simple;
	bh=tk2b5qVs7tzsXwsv08rJ+gquRgRsGqkTESCrASqPebo=;
	h=To:Subject:From:Message-Id:Date; b=JWsrSlKfAwzrR8AVSfL3cF0jWbTD4SKjHOARrtN60jm8njXqu4HnQDQdkB/QiFKsNcs4D49pdiXqlW8mUuPOhpMOnHWP9xCdTdD1goH5F6mKzGNr0CLqykW7aiZiFGN7PV8g1bhUXF7Dt8RVit9KkW8tb1GdU0rVseEi5qky2AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVv1BJHU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVv1BJHU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDFB1C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785177633;
	bh=tk2b5qVs7tzsXwsv08rJ+gquRgRsGqkTESCrASqPebo=;
	h=To:Subject:From:Date:From;
	b=kVv1BJHUwDUis9hE2MdkFDWFlX1/v5JFmOXkJotZWa5lw0rHFYL+zhyyiQz5dUmSb
	 r/62JV96RFZp/vr98WFPDcVl1D0wiOhmHp16mcSRxMCuht2kl5p0e3FzhriIPcNpdc
	 YRVLy5UCwRnDqaJA1/Ti9GjiWJAgwa/8qHHmN/RmUytbSKMgZ3s0ixRKhZFSZogYvO
	 L61+kv1cPx5ToFgpj7nNE3Yt0qEKFGgzDQ5CoSMauJgUhFwfz1nyfY5NJVzfNdlXbj
	 jp3+Q9gqACYKj1woDpqHV5isd/tY8lvCouT3hV/Zy1xwIrfyHaVM3Rn1lNv++t4G8i
	 9LRzIfKiXP70g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9FABC531D0
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 18:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178517763368.22491.10310661808870618530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bb152fe5f83b34b9e2e388d0d55fae9ab5fe33ce6d79843052a5f02c66326fc
Date: Mon, 27 Jul 2026 18:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785177633
