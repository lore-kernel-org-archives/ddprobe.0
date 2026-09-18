Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7F3DF39CD08
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789705234; cv=none; b=P7KT9jo/H9yPVtrQKa0QlEQGdEd3DwVjaGRlyPXqrtiKW0ytYoRODmGFwWNLZKmmnuz5QByn7YaBGIx/+KMv/uQAWizVZtGqyJ9vtjTW1NmApRnWUVt26AU3IGh4stfiZAbKLVJr/DE70haXWLjEicEoeFqaYlWrt/Igh36VZMc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789705234; c=relaxed/simple;
	bh=+N8+Be4k9xsEWrmO8FT9o1+MpTc5t9Oar06V5lMMCSg=;
	h=To:Subject:From:Message-Id:Date; b=d+BRDg9qV1Ej/ehZ/VDgIie81O+e6ewWYr2vgA6M8oUmWrZanMDBGShO+/2YRVdiPEokzce6hVowJd6BjIUU5i7/Bm76u8qRqF/imwKIlapr1azYeOqa9zMnsg4WXIpPf1HcljPRAIAmHu72wDhyLLnz+1IV0y8+CbEfQFrnVCs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dfJ+/D97; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dfJ+/D97"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 0008DC2BCF6
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789705234;
	bh=+N8+Be4k9xsEWrmO8FT9o1+MpTc5t9Oar06V5lMMCSg=;
	h=To:Subject:From:Date:From;
	b=dfJ+/D97PM6gP9k7QSqz176B0631ZH8o8jQjzlPEU2yg++vnSwe3WYj+t/fIoWJXe
	 WYCq3qc6nfdQBZzMl03p1huxiNE9J4rFDlOty+bZaeI9brSSJuBzv0rEk3rCfT//w4
	 Ufe/56HpRtRor8nzbzcQ32LKxjjKdg5t+pss6qMw0o1UMxu7/HDaUCs0v5XLWr0O9c
	 wZZ02EQ5OZHnPp+55GFeWnsmmPy1indlhZQRYN2Ojh6SfmC1mZS+dhquwyeAWLGayI
	 IPCh9ZFszf6c+kJEu5NaZUJbGZkWpzLryQrI2muGwGxhiLay1CtqIWw0kzpNx7teXO
	 RD7y62PNE4lgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB790C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178970523382.5228.6591427423225083815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2aa30e4fe0205f1c0f675669891c602bf3dbb07dcd5a481a3050190b9898f024
Date: Fri, 18 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789705233
