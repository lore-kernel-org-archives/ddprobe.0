Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DF892248883
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762823394; cv=none; b=Jrme7KObYWvgmAVQX1tVQ3pQWe9BNAQo7U9qrImu6XrhFQ8laZ3GC8QArsoD/ukj8+90kX3MjgOvtA+vZHeJeZLF2fgg0ThUj3H/ictdH8Sc7lVxAsikWtR2tzK/GpoIFU5mtneYYumAZMyyiMB9afRrVMuRwEcojUJg3HqZ2Lc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762823394; c=relaxed/simple;
	bh=VUS/B+UolKQgTt4lY+o+xrrk82mIYboVD5X4EqhiKjI=;
	h=To:Subject:From:Message-Id:Date; b=QmZXLw55F+4te0befvef2GRF/U9dpeOw/xIolCznPgL1azMBSRtXZ+M3C4WFmrrW2UhvL5Ou/7ET9pnxC0P8hHoTorfAwaXBGngfoTQ3xffdZHFm4Irixi2Zy+SoIuPq0qkl+vfB5wZqk5LW56MV6yzX9q6VGOmdOMABJ0ws6Qo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qjgrYaFW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qjgrYaFW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D06C4CEFB
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762823393;
	bh=VUS/B+UolKQgTt4lY+o+xrrk82mIYboVD5X4EqhiKjI=;
	h=To:Subject:From:Date:From;
	b=qjgrYaFWWeUak/IZcJlsXrH/G1gN+or0klgMs1M0Rfqf+yX719muYto1Ytb/PbZ6R
	 bnaEfOxJGdoQcBQjMpkPVqvlbUUJJb0LUKNE9uCfRLIdL1tnohkouzhbru8SAyocSL
	 abyas1EpnIl1o1kfmOikwQIfV5fPKLHCCTplAzaE2JHlGbiMlpRPbD6mXefg2A82aT
	 GYtADBcCAepW6bwuXYz19UQvkISr0kTJOycqkyyMJK+FVY+OXXEfZDhKoE5TI3lZbN
	 jRT6IjZfjhIe8woDUga4o7gx2d4RV/2JUMgaLD74FQljB5cK3ol+abawciLL+mFDFL
	 wUgXVAd/bdF+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9832ACCF9E3
	for <ddprobe@lists.linux.dev>; Tue, 11 Nov 2025 01:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176282339358.18329.14095358277489161564.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9934daef87ed46ea281c3161a76f815a1b75da86a0b7a8efbf2eb46ae23c8bd5
Date: Tue, 11 Nov 2025 01:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762823393
