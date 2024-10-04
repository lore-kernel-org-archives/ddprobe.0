Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CEC381E
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728018954; cv=none; b=iRejZ4LJRVSBmwZoxxd+f08hP+NItWYNoC8iBaE9noDVagScWcdsqWzmQ9KvB7YxQocIjc6qdYqEoQFwrVl6HMn7Y3SammvK62z0uJtaGx5g0YovmhMKkU8s+69KlPrwNIQ4MO5zgHPYesBxNaSt7woXgcqmdYqmp33d7l2YcVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728018954; c=relaxed/simple;
	bh=Sl56aszV+zgbfVjy1X606/+y//lM19YZP2mlWUCl3QI=;
	h=To:Subject:From:Message-Id:Date; b=HxrHIxmILfhTSMzld2ORydLNqHtmCJDHQn8m2HTnPPFFEzWDbhuGcXe316E3UrNeGoScymz4SZHbGbrYYocpb0c77RMX8EgC2325VdjeXDRxYV55OtPpbHEuHpxpaGcbDwB/JtDLtjFjJELPTNbbHtNiKRyKWVyEcH+Xe2t5VKY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=heRmlrTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="heRmlrTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60B9C4CEC6
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728018953;
	bh=Sl56aszV+zgbfVjy1X606/+y//lM19YZP2mlWUCl3QI=;
	h=To:Subject:From:Date:From;
	b=heRmlrTZb6711Xkjr4BMdMCefQzxw3YNJASyTpWuvzQDl2cVB19ASx0IgHXEwGPcp
	 SuTgTIcctEvbMb5ZCXou97N8kIubonj0EspX0DvR+uVsQl1PKVfiaSPikfyL6g7X1M
	 1nnikx7Maq2HAGZ7m2YVHLqA+E9H4+Z9du0HrzGY7PqqbzKvFD2mbOCaTEn8efeCOf
	 ik6ot7as7M+0Mp4ZS1YNOx9+DK9MJfp9IbGFY3wLK/fmN677LW6y2q2jLUjXZepikP
	 3VQs3+RqTuwgg9Jim/ReoOb0d4+fnsAmg4m39cUV47UVoVnSZmUOutitBdxkEaEYc1
	 iXXSUuBu1FcUQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C28DCFA749
	for <ddprobe@lists.linux.dev>; Fri,  4 Oct 2024 05:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172801895362.32629.17270145184082393340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea6efd40ec2e7203f17807f649aade7487fc60de7d8092b02a3a2bc911d513b7
Date: Fri, 04 Oct 2024 05:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728018953
