Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 193AB298991
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775986054; cv=none; b=iBgM1YDXgr2SDsG3PCZ0w19Hl3jzisHn08KvHmlewA0pDMG1N9Dy4BVVaPAJHqrvWjr6XthtSWyS8TW39xe7cduqJfRynHzd9ZcX6KoIPmruG1jwaq3w/x49EfmhxaZYDt7L2gFgYYFTspqJej65Wv8jLkGphLGe4JddCY62Jec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775986054; c=relaxed/simple;
	bh=2gqjwz87aQz9EUW26U/VBTh9xqyV0ixmUv0ecdbOPNY=;
	h=To:Subject:From:Message-Id:Date; b=IuTvU5BHev4sYmaenyfri4YXR+v9s7lE2x/mbj3JbBHSM8gHHuSiMEjsIIqxgAAgEBz+NOg3dN8+9LesCRjWMmycPcdF66In8J1IXcCetndjHoGBibchmZ04q7JW2tf/s0KSzndroOmVelx9+1YK350iwjxr0swiLTB7stD5/cQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M4OrH9U3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M4OrH9U3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C4351C19424
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775986053;
	bh=2gqjwz87aQz9EUW26U/VBTh9xqyV0ixmUv0ecdbOPNY=;
	h=To:Subject:From:Date:From;
	b=M4OrH9U36sK9Mxl4Ru09oNYVvRHQFT0COq214ck/ikhJ+1D8/VaitEOK7SdNUj144
	 A0zRe7xmLNwlk4Xy/UiYrxH52jPjbwFeSlS3CpflZeb6csUaMRPHTxFRZc644nzWPC
	 haTmEoaAQnEFm3AuBngVFhcz+GBbBTatZJ024a1p8L2x+aGH1Hj5xFz4+wLbAAzPEl
	 s537jaQeZi5amhnodVvbVqHPuv1S2BHVemcfs4fNxX5skCt++NjdQLTtdmfyCIVnKV
	 SeEemRki4RX79LMKvhiyNGqZTCY8T0bDPZsb3Z7xgvqVVZdQLNG7LqxGKNsL/wZEud
	 f7YYE1LJDT7Sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E40E64009
	for <ddprobe@lists.linux.dev>; Sun, 12 Apr 2026 09:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177598605369.16556.4554580855691805738.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f7c1947c33e1cb0d676d0d41df76437d5db88f156d6859c68aba023bb2c84e1
Date: Sun, 12 Apr 2026 09:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775986053
