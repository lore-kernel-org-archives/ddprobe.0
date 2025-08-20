Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 306792E4270
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755688794; cv=none; b=OtwfffIY+2/DZzoUhufmqjHx4Wbg0Uihg0lO7VgtZjQWPcYbBoJF62ZfuKeu2GNgAMpTjIfm90dlQpS+mQrva1ba8bAwwzMzRNeW+sBmCB26rP3H1YlTASNU0eZ53thmnnSnUunpTDq116eHGpZoAYIulEUjS91fGpoAJ7WifXQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755688794; c=relaxed/simple;
	bh=ZJRFm6JeERrr9GZfUj07SRzdtFOXj+5R8lXlMErS7BU=;
	h=To:Subject:From:Message-Id:Date; b=dxwdSQCFpFmUXvdWZ2C6hF9xnHdM1LBDnqnjLh/oiAUcavY1rdJmzzXKE8n4IqrRT3+SgH6s/iD9FpmmEUpJRQUD1ziZycjegLyvsPbehdY6NiKsC/zqr79QksKEMs/EqTxpSPs97NanRHeEmMIVBVS69vgwc2hmqNHqWVqtUVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FZ1OIXZL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FZ1OIXZL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE8E9C116D0
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755688793;
	bh=ZJRFm6JeERrr9GZfUj07SRzdtFOXj+5R8lXlMErS7BU=;
	h=To:Subject:From:Date:From;
	b=FZ1OIXZLbTT/U4jkbaZh8JPlP6Mjgps3Dr25RcFbHA6bV+iGuo+yIiDp1dki1/rkH
	 7TIidygDvDN/+pkJ2PR4e0p6p2P8Jz0eVu/JnOFGr+SgYPObkVStjj9xJcvvw6gTkg
	 Qc9Qb8TE3zjPS/cv0LweKOUcCtg8IlsZ83omGE9iv8orhbT3dkRKnRP5Y0pR4hTbDz
	 YmmGzucC4pssQLTjS7HZBTLHyROqJtwIW4B8t9whASq3mdQ9Kn0bhZWrGngvt2+pV0
	 rCvbCknv6ZCQLXHB9trOtfLl1oOCpMGwo3X225T/rZItANutJl1bfw/UIBo9vZSMJl
	 dizLUgCShUovA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE57CA0EF8
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568879357.12256.4660105382652883400.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9988069206351d2050275b66dccd6549bc79b2c18690d4844ea2cfd6a0127431
Date: Wed, 20 Aug 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755688793
