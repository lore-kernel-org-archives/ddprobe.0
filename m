Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D9A5189
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756343995; cv=none; b=pw6NBbh4okqCSvxY7DtpOJa2Ef4l/u4n717bR4fpquEox2FaPH5aH3daKM9DxDD+tLK6W8/p9DtZBTQZw3m8nIdTX68wyhSu/oePNk6VLqQyAdibUdQfcf3m8wxTRUXTd5/gB7INJB2ntxvXfEbxcyZjvG1iiT3Xm/7UzMqtP0k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756343995; c=relaxed/simple;
	bh=RJSKFEiD28HoFNAoSQ7D1SNhDwP7BPpOfOwPQKggOFY=;
	h=To:Subject:From:Message-Id:Date; b=FT7KUwoSMO++Iy8d9e8D7kxJOMwO1RN6kZf3j2JzUVGPy/c+XfVXBGNZUxyZxNGBTHiSJYNvoIF75edYeetUPiPhMtDBmR28SxDAPqillNLoAYt+I66fMAG33FY10/tUaKwB7siqGY2Ri/lSm/zJ7RCRlvowE2MTqZSJMX3G3fk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c4d0Ez+x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c4d0Ez+x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2963C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756343993;
	bh=RJSKFEiD28HoFNAoSQ7D1SNhDwP7BPpOfOwPQKggOFY=;
	h=To:Subject:From:Date:From;
	b=c4d0Ez+xf9ld8zHxmRbIfPbsT4DFnVt9culQXVHvGtIXDSfHudqrSO6OWnBFdBoMp
	 Y8qmU1ka22Xk6a65GDZi4pR26vgRvEDLhbF6LxOlX7TDs6F9O/btPdwwUkBe9l3Jyb
	 XZqVYGwuZmcy8QemlZhX8mWqFwvlyBAhDNWuSNP6INXQ+kgLvz39JpU7gp05YIfkcp
	 y21rarXqa4HZZ/OqxpCeu3xs2VI17LKRC4jiAHl8Evpgo+m3S4uiar79EsS5o1wkmk
	 ps0akNd6yp60hVTo6w9Y0paj9SfdPG+pxx1H58Vwoa8Gdk+m7Huok4NNYtmwQ8h0s5
	 P21OC00YOE1bA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F269CA0EFF
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 01:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175634399357.16629.13443504394638286557.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8608bed42d4122d1199dafd64d723a782fce195ee32a574b9c69087bdd8a4650
Date: Thu, 28 Aug 2025 01:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756343993
