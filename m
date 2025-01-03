Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 389C2191F94
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735887954; cv=none; b=aB86XV1dTCX0heubyEMHb8w2wcLY4HBJPUt8jXWoROvjwb602+yqwWZ6ewFYoEG/Pv4n2bhZkfvLbHna3tKGnbG2ySEVHjRuEplLknDm3QBPRftpHP+9cQZX3PyHeqGiAGLK/9bNgW4seL50KGfUMq4stz2AMELqwJ9CIP45x04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735887954; c=relaxed/simple;
	bh=pc0gKp8ohwLKKc2So3/Lp/3lNhbB523grBiayfPgBaQ=;
	h=To:Subject:From:Message-Id:Date; b=HCNJKbRZkIq1szy3wuxYoXPM5N9UTXRj0169WOYSVLZIQw7ZJd33nHF7iNzn3cCJi2psZcenhKVhBOiHyqmAZT6Dv4IigsN7oBggwnBX0bDTnVzsd3s9+qpeRU/40EMas2XcbFeFtzP14BEnlD2votlLkTkW1lXFtFtCFru/Zhs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m5jywcOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m5jywcOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0FCAC4CECE
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735887953;
	bh=pc0gKp8ohwLKKc2So3/Lp/3lNhbB523grBiayfPgBaQ=;
	h=To:Subject:From:Date:From;
	b=m5jywcOep4CA8LFGOXivTcVIKGQfFspfbBZGn9+Rgox6uEoiyB+QsA09OosE/gLKf
	 rKrU/ccaAAbB5Xe5cVPtv34FYsp0T5tamDvyjfB6vm6T2/HmAU0KMpM+mNiJkFCm0o
	 CVGtJlaYumEGlegZava2h5kUPGCD1PAhM952cB8PGXI2Vu3XprEnU09AC4wdzgYbPb
	 hMS+VIzlQ3r7Z+pjPU7wSrpzukrzeWNbNO1xSv5f+S7hMEO1C4XN5KLR/aDEPjg3pj
	 TVTZeWuzid1XXEHSRwROPwH/lsl/6YABiJ7IIzFdxS/FwGUUDCM0JUvWTCCGZ9Vnep
	 2ApEo/6CIZnCg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B32E77188
	for <ddprobe@lists.linux.dev>; Fri,  3 Jan 2025 07:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173588795358.27058.9987757527012796612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c7543efad9e0708dcdc998b3c4481577f04976f0640916cbd7bdb8bf3a090d9
Date: Fri, 03 Jan 2025 07:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735887953
