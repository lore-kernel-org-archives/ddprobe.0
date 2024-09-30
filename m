Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B9D317798F
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727694954; cv=none; b=iXMwMujc9VD04/D1lsI1a2FxwLbf6CvtGyzPOabcp0Y+6N1EgDipDU1FqEPFy5izef5WuIs+7KJL6y1sMUEApWaUs9nNzIZqABfZtkUcPlswxCnNrDeAc0G4j60+lOpFBT8ODF0Vm9Ew4esocrpbAvR2SmSvbToqEvDlAQqSWxc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727694954; c=relaxed/simple;
	bh=tZYbeArePwkP5YcZJWLI4lOWszBvki9wCExA6PaLNvM=;
	h=To:Subject:From:Message-Id:Date; b=RSkp44lBbozQbtUQUM2z9fCCmS146vhNkw1SRkhlgSUMF1sGKEClnkNM72bd0xydddrSsWBrwJvmjRN0iqAziOZdRYCDc7stp8FD0CDAIir/3TTXeuZcWlXv69RLbg6nuIcnbN+nFfkspC3tujilArBJzdbf9DtLurz8XSTUpgg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lVdX7Aul; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lVdX7Aul"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFCF6C4CEC7
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727694953;
	bh=tZYbeArePwkP5YcZJWLI4lOWszBvki9wCExA6PaLNvM=;
	h=To:Subject:From:Date:From;
	b=lVdX7AulMn5YkzAOERP+yFLWCVUjxOnUsYI3uvB9/xFgyxWlsDgh5PftClZGkUwlG
	 nFCZe/GtHAuZanFbezb+JriR8t0jld0NQioQo9i07z3/6cy1zjPptcg0i/X7lI14Or
	 HrhUE1Lkz8DuZU6mHPXUH+rwN3ouqneI3kWOvpEr46wY7qc1I37w89LFgUIoJU/gBE
	 PLo/yEOC3Ow4pFOexTox2QxJ+PuL4EVJq0BhEDzyuNcOjhIEy/Wnt/J6FKaKeD2cq7
	 AGYRzIL3PjIE4/AW+wcwpaVi3zP6Xx1GsAEZUIItjgfnbMhceATaS5596CsW1ATGEP
	 hImXvw08JdjUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A112ECF6499
	for <ddprobe@lists.linux.dev>; Mon, 30 Sep 2024 11:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172769495365.11178.2463517666887743795.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbdbbc4963196e8252c886a03ef7be16091ebbe59ee8fd25a6cadd999905e54
Date: Mon, 30 Sep 2024 11:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727694953
