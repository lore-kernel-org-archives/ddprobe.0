Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 661A7313540
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789017034; cv=none; b=CrKYOnBQoSf72j5TZSIRmhGjPNNZwYQUEz3xrnoX/+ptnobK99tKE1+xoY0P9lvnH1cvQ9dHm5XP7sWo/nf28UmHNp17fCFV1PP96y4/bhI9yt9tuCWNMEy/kLQ1AtAlhOR/vEMVfK2p56DV4ldTOMNFT5mrwaTex+FrRUw7pxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789017034; c=relaxed/simple;
	bh=Te4gTbqZbetHLmeiYjJObPn6oATInXIYejV38LE3cP0=;
	h=To:Subject:From:Message-Id:Date; b=KeAQS+RprJ2N4xMioJirDMeOX3M3E/FQDUsqVQGOIfx7p4yNnuyrGeeeVVs6M/Rhpfgb4ukbSauW27cKUiE2sNQEbR5LuNO4MXsKhbild09JgNnS48EVBriCZ/k8naV3mytJPiGbWQeUiMZiDqEfEuG112MdpUMMc/YpZESNZWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=omnrSpxZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="omnrSpxZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1679C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789017033;
	bh=Te4gTbqZbetHLmeiYjJObPn6oATInXIYejV38LE3cP0=;
	h=To:Subject:From:Date:From;
	b=omnrSpxZvc3iemQAfW0tx80RIeHQdaKs/4bYphMUEjSyCrSo+T1r8DJpsz21ncFxY
	 fkMzO/A8euMBre4rU0dhkHQJ2r2lLglrCAXdX3Hg4JU5Y/dpsii0wZDaMsCS/dERna
	 FqQMhVB+0aFrMcamvtbhin32XKyKctNV7nxp/oLjmiThLWzKysyr9R2OjJ6omCZC7e
	 Mkom26w3t3UbHDmEmjEUOF8X5fifEGr3kO8UOsJLCxSADgvfxPpwqjDJXeUJv0YQel
	 Qato+bgYKTyKiTdSVfgKdl0WqQsSvsTzkpYKWkKX7+Tyhx5Yb1bsRBl8PukcZLH8Z+
	 yeCDs850mVM2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA96DC79FB7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178901703368.25884.6815384179645251731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 526cd473f4a29a5bc81a301d72e314cddcb49c0e8d906ac30b03901d907950ff
Date: Thu, 10 Sep 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789017033
