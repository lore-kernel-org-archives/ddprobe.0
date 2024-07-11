Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58C9F187332
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:37:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720733843; cv=none; b=cRFmpkAojso1I8CxTwgnI11nTbGjy1+QnrtZdY0GSvpLF9KwT30iRc2dd4cJr2asWD8ILQKZM2ymvyQIv1dwEbMxqBfegGQd2i5gRrNIzj7W77CNMPqxXPJE3vY2lQPLBVSi1sV1elzKWoaEC9/JMHPe2iNFdf+ysp9a0yaneW4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720733843; c=relaxed/simple;
	bh=7rLUw9STJ+uDbcpl2h53E1zesZxJ2hai1wlPmhMmiEc=;
	h=To:Subject:From:Message-Id:Date; b=A2M+amo4lUgLoODd4QH9P/xY6GbOoIfOgwSNFyAQQrP2chJNtAvBzE2OMnzwux8Wt80iXNdndKJulYN0n9NHYZj9KeUWrJ3hK8LQDpS+fQfLUMnhRobKCTlnfMllxqFF1iO/FgFNfB3rJwn03HTKbkt7rW2I2p8YqdZ41xLpoBM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rhemV5Gr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rhemV5Gr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA7CCC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:37:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720733842;
	bh=7rLUw9STJ+uDbcpl2h53E1zesZxJ2hai1wlPmhMmiEc=;
	h=To:Subject:From:Date:From;
	b=rhemV5GrHXWOXKyjowD1CxYO69toYNfE/Me7ZcZwDMQl5exMFKB3x28WkUuyEvT7V
	 4bWj6nR7RWZYUHCw2cws6P08vHonBntuGFglJ2CgljtNiFL+ZWqaPPERwwxN8K0ROs
	 UwzqgbhXwqriKjwfnIX0MkNXyzdQ8klCqY98WbyX+GizRFqApvQ7BhixcJ/Z1zR+n0
	 m9pDNAb1DqWWJE7W+/4c1VIeF+a8U0faB1W1zMeTnWbbTlgEoxmWDaFqONIkGJIX5Q
	 uNthXq2B5p9fTEFs6BHzYp2SdAK9iKZDFDtVh1Tu39Vy+xaLHWArlFyy5YFMMLo5UN
	 sj27yAQ7v53yg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD221C3DA45
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 21:37:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172073384276.28415.11283484123484334667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3a03ec516fd9ea295122cde331e958a9a735d472068796abf32932694a12cf75
Date: Thu, 11 Jul 2024 21:37:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720733842
