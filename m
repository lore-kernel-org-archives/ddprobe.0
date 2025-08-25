Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C6D401C8611
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756144193; cv=none; b=mlIsIJBW6B67UTsOT3lsQGbr4agvVGGN1nh07KtHxJzDqsM0YTUF+anHl4/k55f48yuhexI/Prq2i9aRCxjKjqGR2jbngpDZlmFEwXHlEfpfrrXudLRfoYUUi+LQ/fIPjwipIXU2jdA/8xlY94Sq4exfhr8PfRaaqmWKnNXv4S0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756144193; c=relaxed/simple;
	bh=vSU4BKu1rX3n7+P9dRvf+YlY8MNzqQHZqi9J8O+jOS8=;
	h=To:Subject:From:Message-Id:Date; b=naoxqGKpgokNmxFywb4fAju/CGWMXljJYVJfq2STCaqtjUliNFrumXmmIqq21SY7VcJ71BiyWS62igmbaOewzmMbVLIe+4/gRJ31s1uoPNJykIYEJDFuBif7WayTrlLAnnfJLFoBc3LdzFsxMVyQQ5eH/rTUQ+LEKaqlH/aGUHI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OBCsPLzI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OBCsPLzI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D9E9C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756144193;
	bh=vSU4BKu1rX3n7+P9dRvf+YlY8MNzqQHZqi9J8O+jOS8=;
	h=To:Subject:From:Date:From;
	b=OBCsPLzIC2f63TfGxO1PUpKAVHYaNeTvu29aGMRhjJ3pbew4HHbtFReCOpWBFBU23
	 9sHQJfmYDse5xFrxS50HyxVp6gHRTFU40Ltti6KREf52IwituvpVwvVxNLSwF5vIyW
	 xDN65dkVa8dErVlxJRTy/90+Els4Jf2YpydZVbWgyFatlIqD6OJYlxcBmQq0C/QHNI
	 R0FuZDxDB0K6SlhyHkrZBGa4zLmbLzzW8lIZ6+SIJjtnQhYG0KuAZewyu4/JV2ntlw
	 iZ4R557WK6DIUrXd2iwGJcWEg69S0d+MxI9S54ebLXMkoHU7iXsffv8QSRqeqEv77Y
	 P5kp4vW2OmFRQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E793CA0FE7
	for <ddprobe@lists.linux.dev>; Mon, 25 Aug 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175614419357.18122.14968821053814698060.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0561714337f18fc12b3277cea583793a7a0be705874563ce7bf05c37261edc1f
Date: Mon, 25 Aug 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756144193
