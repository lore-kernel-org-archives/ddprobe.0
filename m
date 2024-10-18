Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1FC952CA5
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729284354; cv=none; b=IMU3yWG2Tk38fXXi3h5+uAvdj0hdv7tCQwQIahCDDwxz1XnS3vGFSlM4QOcrJQaQoPvbhoC7IAapcMzRUcvn3UYvImG6erhJPE7FKYyyP3NPjfLtxKbrROrny7iDLKr4+nPdjOaQNDQwGJVbTz9K7nhaOX62XjiW2c4qLAOTCd4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729284354; c=relaxed/simple;
	bh=IPatWbEO/UD64ygbfS8cd651V1fr340d3/Nd9rwSgNY=;
	h=To:Subject:From:Message-Id:Date; b=dnlca3YJOUqAQpaPuv2FI97EwCxrMz3cxyK7QF4EE+R1f9gOriY8OootfcpFdV2E6tKvYP/Qp1wm7H7/LKU4gXQC1ehadjXcoVM+RINkyAfw382DNSIYbnjH8iWBNpp+jEfJk63QuTm2FaIZ8P2CrqTJ4Pttnc0DCyIGTUzzufk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k6diNi/Q; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k6diNi/Q"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7271C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729284353;
	bh=IPatWbEO/UD64ygbfS8cd651V1fr340d3/Nd9rwSgNY=;
	h=To:Subject:From:Date:From;
	b=k6diNi/QoBN9GCqOgNOC0l7zMShvl/6HrISTUy8fg/ejFcwKzCTUh2MW6Qd5ykqek
	 R+882OyFUubrpINk0yzKjGRBFm4XPZmTfigBInqAnhDzY1Ty4NVj9HVmvcOLhR2zRe
	 684Mv5VYXSjdk2aKCCnOaTwWLBFNL38gItSAz6llCSSNCaNzoiK4Nbv7r9GCSrR8iE
	 TlccFBnYZWAhTlFGLVd486VblwkkBj9t190eTqEEJ5eRRg0cN7g2cavW5d2lIP4fj6
	 OkrofVQQR5OXqQyPth6Y+YdUsUbw87oUjTvXZCko9wDCMGjhQ4maKjThS/TxSEtWjA
	 g53hsApPcPz9A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A06BBD3F29E
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 20:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172928435364.31368.1360371762656263278.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a530e9902e277beb8240fa3235aad8f6d935e6468aa9c96430db131fbae7706
Date: Fri, 18 Oct 2024 20:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729284353
