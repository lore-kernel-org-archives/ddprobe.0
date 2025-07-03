Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F194B1DC98B
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751554194; cv=none; b=oJqe5KTtNUFLpfpgbMRp/lGHKBSOrPzSIaFqN27yNeacXEheNs/pZa4LAEK/I5/CtNGjqExw2lJeaukWTTOQXcsCZbXpaSZ/8/BL17PhSHk3IAOETigageaHn7DOdeADVr3uOsypMK2EKGz6wnhqL+MuUFBJhLXTRXJd4HvVd94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751554194; c=relaxed/simple;
	bh=+4a4sP38nMBrFRxC/hiNoaf68Vl8XXrJq9qrGd4cMsE=;
	h=To:Subject:From:Message-Id:Date; b=doe9TtCJpSLxfO6AAkyiqVlC6xIApdbJFJhg7QyscXCdp7pOnr+s3ctGnHBSRNraxTYHyVkNRJEckCH0iFhwqHCHLEf9Cp1tVR7VzvFlZIcHbhYtvYuTw43f71d1s3nQfpbSInDgwcLkWDIafOH/X0X+lvlkTZG8v1/+6nW6Bbc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tmRqdHuJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tmRqdHuJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D787C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751554193;
	bh=+4a4sP38nMBrFRxC/hiNoaf68Vl8XXrJq9qrGd4cMsE=;
	h=To:Subject:From:Date:From;
	b=tmRqdHuJERbOgTiS3V8MW4TviC9ImOJ3YAhXyUAXS2UitaM7Op8CL27oEfEB5k/rB
	 FiM6DN4WknkJdVbv4bKxcxCopqNjYaZq3V4dnT+cZKPmuEKTPdnNj7OypZDjjArbj+
	 kFbMyEnf8r0dpFODiuUCsCqUjLqst5VYHKfmN2DalexxDwPd1ZGA5kRE5clM7y22k3
	 0xse7VHLdsqBjejV0Ly3zviDoQiOAZQfNuJIZgH6pIcn98AHAljlXVSvA+KWraEsNV
	 mM9xYAlSaTttZz09Go0WP6Pq3JFzx7FUyzFtON+7fvB+swRgbN5XIyBMNzkN4QLw76
	 rTbxopmvCUl3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECF7C83F03
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 14:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175155419357.5837.1233424144971028310.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e40dd77cfcd45324a9ad7e1dd1f7d23d80127a930bebe9a9f2255ac66b94846d
Date: Thu, 03 Jul 2025 14:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751554193
