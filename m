Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 096EF249E5
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758472194; cv=none; b=Wcu/3FmlPeW2jPeBen/ypLRsfxhkIvPAy23UIInDCTGEYUrxPU9Z1twzwZTgB5Nt+HxtvSa6r4yWcsNfAoYLCFb4DjZhkhyaYsMS8eL0Zws3NqYvC3HQ20FykxPkVBO84M/lUgta9dONZ+KhCqsDYtFr92OLtgm/z1t9TtrNr/w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758472194; c=relaxed/simple;
	bh=8H55bHU116g0boPq6XDcYODQ2ZELIDzdi8Em4keKs/U=;
	h=To:Subject:From:Message-Id:Date; b=MZ+tjO585q6qaHTRG7Q6tlY+BZztvZT9VV7owmRhnVZYO5MmtQkfK7FTlNzwJKWJWzBQAfVhh5qWWifytgG6kcq6oSIIL22utBEE+YN48ylFnSfO0IbkyEYbmRU8br5M/ncQMATT4xr5MEkXEuNxHk40V2N7Ze7/D6BoZuXddW0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LiHbmzhz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LiHbmzhz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E799C4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758472193;
	bh=8H55bHU116g0boPq6XDcYODQ2ZELIDzdi8Em4keKs/U=;
	h=To:Subject:From:Date:From;
	b=LiHbmzhzKWquTnlC68Bt87OHFLZqjFzpGh6fPzPs2qy0TpsaEML0whSly/OdXMULs
	 JmlR2wa31fv09ffhlIj3lpjGyqHs95GZeiAE23cUIA2AHkUOCtozDyUyXRWqV1URo0
	 FRMF5chMhozwUU8w+Vu+wSyMK8aO/hEGxa6Wb+s3A0yrtEChJjSlP4DXgl2zdpLNNN
	 vF3dyjX5XlSrIozohndS1cpr0B/mTH6sqMmmK/2u/ge16te/D7e4KscZYjIMChjlOo
	 sBCfilxSy0+Ua7h4KH7DWfAOw2XXseGPSv3WO5Owo6mlwMg02tMDItiNDfrQSItL9B
	 9vKsi+tJdK4ew==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9079FCAC59A
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175847219358.15838.2246125031917813660.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d440c79839ed994065a782f311b908c8f8b9e39c7afcb282ce71596ad7ee49d6
Date: Sun, 21 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758472193
