Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F3B28640B
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774020294; cv=none; b=WNGsFfXFVlco0jsskxbL/JrzXX4dKWTnmO4VojLz6Z1YPmLGmiib+kYnXYpbIW/zwHQaUOMlnv/mUMAvivBb3bKF1a5TDnIpX70aJDPWIx2hMV+f8LoeWszKYyOkqbd/hj/WTqNd3lrXpz3JveMExbXWisLIFBA+/0HypTGDhi8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774020294; c=relaxed/simple;
	bh=hzJvtKHIpRJQEDcbELxGcmttJKLN8MfvMWgyVncUNmg=;
	h=To:Subject:From:Message-Id:Date; b=joBe3sH3ruhC/PsFMbueaH0ptZs7Objz9Wt7kM9LaZtYaaZI3vf1RkPoOkd03Vaak8iFB3g2/JW/m8MoKNWNIa7AygkecOgbCieyx1WCm5JpPCKrvsrHv8AMSt9umt1Da5QYB4Ktn9qscFzCboVTdQ8vzElFT1MkhmHJq96dT/4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GOHAoiZv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GOHAoiZv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1346C2BC87
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774020293;
	bh=hzJvtKHIpRJQEDcbELxGcmttJKLN8MfvMWgyVncUNmg=;
	h=To:Subject:From:Date:From;
	b=GOHAoiZvN5HY5bivTEV7G5udlKQCL3tju+NgCbFzdfAUimycYwvjMveKCQcA/WEIi
	 MWLjeNOZHrmNud8BFvv9tGqPqb0NHYzc90MvsonSZ/FCj7e1xzTEfWBQCCk6B5bdWC
	 RULOnQ8KnLQWLYHDzRxadDGnRZIgJWbvcAcspg7w38/EbrcroDBgOn//La9h7AXC2/
	 ItKhzp3T1ndW6xYjTmbYaHuWTnetCgXc7VJIgdeuTre0G9SwPAnkOH+Xszmvi6DheV
	 eL2pKkbRBY71wHrft/fkBi9ldAVqSjrS79yXShh4rx3Zrku/5t+Tl0HAhgoCrevlee
	 GTvDGrjHmiKyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCCD109879A
	for <ddprobe@lists.linux.dev>; Fri, 20 Mar 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177402029357.1676.10190388426587075347.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 285189ed5293740cb53350c5246adc42c08411efbdc14b7630f204b208b21cd5
Date: Fri, 20 Mar 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774020293
