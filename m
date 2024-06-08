Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5438D6FC6
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:27:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717871243; cv=none; b=bQX460orBFSXohHp4lAp2OcQiPIy84t29rY9mDxVYvEJAbbTL0vsV14CCsK/jieSS3tBcec4IxSAnjIJiDihYjndzmCaQPoWCFbxa5IlW/DyL5dOYqJD/AREHOLUw24ceHndDn+v1CrL5oTBQi0iac4X8aMVFtoaWrBFAdwPV8k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717871243; c=relaxed/simple;
	bh=7RKwIxmUZCZLSC5UJHpAtJDo6h4Rv2nVx8BNoEDxAUA=;
	h=To:Subject:From:Message-Id:Date; b=bR8co5lCTwybkW7H8T5ghQC757ZwdVJdd/m+6RvpWDK22GF0NU0szg5nNyusb9YaqXbVSw+RDl6krVtIbMiGR7Spgu6o0G+mk2Mg/oeaz/BUzOHfadPQsnVdPgdl3Qx3flEXNpAvfpXaIEkaav9aK/2bV/n1bzjl4zPypXrrPvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qWJiKigo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qWJiKigo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB487C2BD11
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717871242;
	bh=7RKwIxmUZCZLSC5UJHpAtJDo6h4Rv2nVx8BNoEDxAUA=;
	h=To:Subject:From:Date:From;
	b=qWJiKigoHBLZWZWdJDXMBEJY1UlGzA3o842MeHQjiBXyKF9CxSdk551hSCFF0Rgul
	 N3QO2JHtMclR0FThEpWHZv/dZdwi7lGaSOpMf1OWKNEhNaejOyCdtV/l1MuQxa/GyA
	 rCsJiNpSZZQZkQtygwaxn7d/JbaGBWdpgu1H+bAqRGCKI6OWVYquiCtRQX4V8OYOQv
	 waY8wN2hrAhqM8K6j4WqHBEiUQekcTv96CwdxZF88KXPc3IT08RYrwxuI6jL9bmo8Z
	 yoe+z1zJOZcEsfOexK9cNq1eDV3rtFdfPL8uQgpx+fLq3WDZL4KYcCuJPwfP0Kitgq
	 32ar3GWC6i/xQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB1D7C25B76
	for <ddprobe@lists.linux.dev>; Sat,  8 Jun 2024 18:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171787124275.3638.6752147262394790733.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b870a10fcd4f3cb1156d752c5b41d9486b2512c11e384787a8a92a644ca43d1
Date: Sat, 08 Jun 2024 18:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717871242
