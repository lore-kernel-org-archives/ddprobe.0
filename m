Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D1EE2472B4
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752496194; cv=none; b=G7a/Ml6AiJPIT0NJ1Tyovop5Tg8C1h7fb49wLmp8SCYG1zoCfbXS+b4xUV3sn5UVyFKoirRfBuga8WhkxcAO+LZ0NXH+WtHQdANpYyPtIS32KcqoyTxZvbw98OwOZBS5W7CwedcccVuzMzIJ3RZAqbTS7w1fZA9Y68jozo3IJWY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752496194; c=relaxed/simple;
	bh=94xTuz4Q5wzW6nK03eS3E5JQ3cpedNsJfrkhSwuCVlY=;
	h=To:Subject:From:Message-Id:Date; b=rOwFz0DqOtoHvBwbe/H/r5rkOPMTaMZJiuKd4SFKqHNjj+ISvNdIAT2uYjp6WbcW8QaLWr/atspceqE06VZolid8DxvHtLcw4Um1uKGFFSs7cXpk6p59u1Op23mHKH8n/+z/JuKuD097+Iov2dZFVbaJl31KatM+I20EMqvezUQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r3L3Mi8U; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r3L3Mi8U"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5862C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752496193;
	bh=94xTuz4Q5wzW6nK03eS3E5JQ3cpedNsJfrkhSwuCVlY=;
	h=To:Subject:From:Date:From;
	b=r3L3Mi8U3tCJ1MT/xUnCvuN/Dwi47fZCRRDPOCEhc/iltvUTsujTIyOmilVdHnIrh
	 7kV3ZTG4ZuhK9UdNmC1Jv2MCSGQtnMgmeFH8uFdrgkusmnqp1zo8aDGOiqWPg2hFNU
	 gEU+yrokYT0cyXpdvn0H1xYUvCuTg4dDVOFgXzAwZ6Z62Yc3SD55oMfObTyPVLtzd+
	 pt0GyuXtOB0472KDSePKATlrN/rYe15R7mg2J4VRhVzTWjQ5rDtVPeq6Kw2JeA6Z3f
	 Wbq1GgWNthHEaYyMPWA7PBSu8tGHp+1VeWiKohWpqSE9gzDSPEfZDNcn7QrNj+1g56
	 739brJTX2bv8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9473CC83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175249619360.18008.2523443466611170961.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6ff5d1dc0be38c3f67c4259aa0de649776e980dce5ebea9a685671a19c871d83
Date: Mon, 14 Jul 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752496193
