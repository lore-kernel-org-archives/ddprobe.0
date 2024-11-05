Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19B2F383
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 05:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1730784354; cv=none; b=rDabtv2keJ+4J0nCIl7Wx2nZJgaqQXMJAX7LoCvdOzFO/f6VfSQwUM6aPQ9EUXzddtpvEcXmtKFWZSEkPpzia9hVx20SPlfJ/kKmX9AQtSUrNI2HpQZ7bQ13swhsYoPbsVr5JnH4Wt7X+3EH8NTwz3t8GZwwUGBGZnFHmeNxdOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1730784354; c=relaxed/simple;
	bh=nYrIVjhnRIsVInT8ze9RKGtI/nfNgoTkbG6n1ZDDmMk=;
	h=To:Subject:From:Message-Id:Date; b=M41XYxAtzwgi9Yd7vHTIYhWnti/AbF2fXFw50x7oS3h7t4F4Q3TeI9zVFvsfvSaugfAWcOa2QEurtpOtd3mQxXPrndtS8k6q14BJp2/F+OVI6dqfMlHc/DFShRlicGC16U+WfUFLn+GNVw/DG39cUphI8oVjLqMgbN+R8CURGVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Epj87fP1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Epj87fP1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A728BC4CECF
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 05:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1730784353;
	bh=nYrIVjhnRIsVInT8ze9RKGtI/nfNgoTkbG6n1ZDDmMk=;
	h=To:Subject:From:Date:From;
	b=Epj87fP1NR8l/0has4NQczKb6ipX7J2THOe2/VyEj01gsKWpLyAC2+k9vRyBysbTG
	 d/+9beUWzJgnfVRr845k0va6UVUCeZquAwHCJZLlnxskpsWNAvVIHphApOqYQTQ9jr
	 8FjEJJ//lKYm3pRwJzoMCton7UNPXIESrHIrfVMeetN6dahdIxVrrzmrfkBcN+UhOS
	 PExLCnxuPEcKbxURn2FPlJJcRVWKeS9Psz9O9sKiU/IvT2bc3N8+QQvdKm6vaLPdtu
	 OVbJsMHfPdMLxAwnnN5Q9crPJd2scxjWHsFClTOmMBh3cM1lobF1ED2zu89H7t1YMV
	 +18X3f8mPjyZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFBD1CA26
	for <ddprobe@lists.linux.dev>; Tue,  5 Nov 2024 05:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173078435359.22285.5372686524589349166.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b05da64cb2d20af21d1b70ae3e25ecf4a59e63483f094072153bfe62d8126079
Date: Tue, 05 Nov 2024 05:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1730784353
