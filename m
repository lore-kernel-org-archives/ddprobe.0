Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 624D0231842
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787739034; cv=none; b=WiDy1YJ42SKo2Xgg8EMWRDKei5sIeURcxWN7wrCnrPoRQA5vDH1bfVjeP0lu0Th3mtCx4FGw9pF27rl/PKv9PNLu/VulS/iSIGnNvFm/98vgfqmL0mAiTP7X7YEjC0WOiUbZYg36KXjbCAckKkbd21gk6eaLaOvX4RtTCbS7XvA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787739034; c=relaxed/simple;
	bh=FB+OxxYEYk4kAsjVN7ZoJGzhWMHfxSjhT5bCBU4cnco=;
	h=To:Subject:From:Message-Id:Date; b=UweViktTRTR8CLqqch3+43BaRQ7/Gy6qvAiyFjnzVHkAxEMB7pE2tu2OMNUUAyQnng2irk1O+6hvqSs6d1CVMqycKpoV4u14LZ13fJpWefWsL+a1kXlRCfL3q21/W4+GM7tafJthmbiAr8+Rpz+9dmMh5r2AMQnc4/A2Igjuock=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OYjDxnr7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OYjDxnr7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFDD8C2BCFA
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787739033;
	bh=FB+OxxYEYk4kAsjVN7ZoJGzhWMHfxSjhT5bCBU4cnco=;
	h=To:Subject:From:Date:From;
	b=OYjDxnr76F5uZAGEYwe/GqdY65wYlUNSaNOS+Uv+tl4h8KrxrJw4IAZ/PRYzHB61O
	 OrSyEGZj1ir/ryFhzlxhzAjbGcuSJtLbsOZmetZdWYiQ6yFaaujgtKr9xi0c3fbWL+
	 /y9k2PQoHM2cukJZCAr6Hm8oOOAid3lhsPZeIfYfeX7Yiaax7ilUPINsp1ORdFeioc
	 UVYIVe3gFfkP0kTzwYu/+1l8HcoRKly2Xx+j90czDhLvQbO1QOL4j6S1XgOmtV+8jx
	 DJPUDtQWHgpxWCojqRTNTBCbTNlblwZbSN26SxgP6z5Ii3/zCfis+rnkNlt5mnDJf0
	 wx7YTafldVF1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC7BAC5DF97
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 10:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178773903369.13832.155672164949588879.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3b7384d07d2427368b89bbb156920a34df78f1b7bfedd14682c0a28d44e85cd5
Date: Wed, 26 Aug 2026 10:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787739033
