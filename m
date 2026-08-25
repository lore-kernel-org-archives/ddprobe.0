Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 54B2134F479
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787633434; cv=none; b=d0RsVvNGOvU77XcM0GmFjcvbEDZXDjsrFU4C5psJG8Ru8cI/CEQc43RPmtVpdezMWiFGxlxx+NUlJt1SHbGBx8BwkwORtZoTIPNQwcwXVZMurI+hERHLVUJw4HaeGrKEqTWMNbF6cdmyE7kROX0GDrD1zA9aI0E19X0FEN9tn8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787633434; c=relaxed/simple;
	bh=lPKRF2jA+YAhx/e4W+qGy5hq8fn02BhKkxFZctNi8Qk=;
	h=To:Subject:From:Message-Id:Date; b=hbVFuGzhXwgnVG9cHM1ndbXeulSxiJhYR9eW81lmYIsGrlTN1DBrVF3+pgdedpefF1Id5FPx8UzgjCn7Ubb+KmKet5dBjLXptNaK2B3jb6lI/B+ot5uEPJZqXFWfhKIYeWP1uV76OV5kkkgedR93fGapNt/J68Pe0bswaKW30Vc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eFUqQtYo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eFUqQtYo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3CF2C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787633433;
	bh=lPKRF2jA+YAhx/e4W+qGy5hq8fn02BhKkxFZctNi8Qk=;
	h=To:Subject:From:Date:From;
	b=eFUqQtYoLepbYsIO0YobfzwCR6qwxG9CqUWT83xE3AXZ2LtXGK1OrmWtiSKKg3UC5
	 MoCL/nZB1zyXB7aGTcOlfSbbkL+cxfPt7YA2czcFM7Az0fVItqZcgfnlYtKjZQjFSG
	 +M4hyWn4gTRAXjO52iqvMV6qhwa4J+SwKLEhT/llIj3lAkO1kNyRpLEBe64qapMpCH
	 iEQf/qZgia/0zt9wE256iLRJWVjNjo3rAmShpzWaf1ysbbOKNHso3CpD3LFBkCfcBC
	 1blMZiqkjD/26C8RYCCLntOr06X/Jz8/ca7g77W7UqfkpgXaQAr5MS5qtIhtiD//e4
	 LV0GHfQnctVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACE17C5DF81
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178763343369.20060.8067959194107176458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd1e1f7cc16773ad089770878918f9dd4e155fec43c79d16ec2c6d5f50a01946
Date: Tue, 25 Aug 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787633433
