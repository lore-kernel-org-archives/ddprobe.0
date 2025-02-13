Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AC07206F2A
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739475534; cv=none; b=eMJi61bU3n/NME0ND8A6+wNqynGGG+BDA5Hv9rmQjW1cqg1OHeVSrXmrTVVvv9kQ9xTQJ4epZ1uXglJL5O3A1uKjrk9K03mw2E7dmkBY8WOUfJqZ8kcu8injiy28a0HeTMAg1l/6uQPWLSLyJ3QSB4vTFx3U1IQnn2yJ1briqLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739475534; c=relaxed/simple;
	bh=+Np5NBx5AmZQTrzDACukM2CLYpqubtznvxBlnigTiqY=;
	h=To:Subject:From:Message-Id:Date; b=sHsXpP2C9RbPXpyV3hOJghDCKjsEri9heeNPicf6lbVAVrxwDYpphY+hX7ZKtoUYmkrLG1Ho/6OD7AYZr5pOsErnUCM+FEVo8lkuI4L6GznpLM+N3Q4VJT7hSlJZRSm299jrZ8bAHCog/XQuiB6cJ1DzXcw33rdMJC2j7xBZrKM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iVvNoPH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iVvNoPH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B110DC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739475533;
	bh=+Np5NBx5AmZQTrzDACukM2CLYpqubtznvxBlnigTiqY=;
	h=To:Subject:From:Date:From;
	b=iVvNoPH5H8BfQm1Iv6uEmmWy5ShyOSPOAZ7RrqSBcZ+NlUttp1hZeTHlXjLOC5CXE
	 I5G5sSAdwLrgVKDGmiNgQY9lXTk5EzkJJjRBLajs5VLHUQEDUwA+78ayAopHLBEfrh
	 d105C/RvqK1qFSmaoFJsuuH1idQQe4sGXVZIYWI2kh0qejvQYIYkcwA2hjWGADXUh3
	 jg74HOley1P7uQJGrr5F3vZQs3vVDtmlza8uwLm8vg/CtZqChZ1trlDu6Sd350dSsp
	 0M6LZpkRnP1jsNiY0u13GSgKycXrS1L4DeQKRd0uFKwx9B7Wy7URCa7iIPk4hUNjnW
	 tVa5tv8AaO+qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98961C021A4
	for <ddprobe@lists.linux.dev>; Thu, 13 Feb 2025 19:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173947553361.6380.9850601246927688789.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88a57c648f5e856fae08a46e6523776c7a19aca34af1d325578d74b8ae6ea01a
Date: Thu, 13 Feb 2025 19:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739475533
