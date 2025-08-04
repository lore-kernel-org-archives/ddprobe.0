Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 174371917E3
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754347194; cv=none; b=MubFYOD5iGnxWiIn/iQlDBOSs/NzAbFszpQFDURk67yek7WPvoxiQT/7yW4g5dN9FOCPLiMPxyxXd5tBo4tuBx4Zxa5DRDlUCQuirAlAf63yil0SIOwKhteTTrNBEnKC0CD5DaiV8edOLphBJOaJO96MxNPj0lW80uuDK8YZZ64=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754347194; c=relaxed/simple;
	bh=pna5/8fPq8DDanlxFOjVHgssdlxxXoQS9Habv5grJe4=;
	h=To:Subject:From:Message-Id:Date; b=TjjmIbeowrOxCR8j9Zf7HgxZ++SJSPbcsCnxRYUpfiOw+/6rA/n081XhT9Y7HtMvc5ojjDtPLeWoWZQUoPe//jUPxe9CSqyYpztrfCzhZDFP1d3RrybI5M+0EYuqfqt6hYEJoJu44olwQQFVysfP9SQ8g4qN0vbzW+T+63SBhfI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jEVlFM9J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jEVlFM9J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1120C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754347193;
	bh=pna5/8fPq8DDanlxFOjVHgssdlxxXoQS9Habv5grJe4=;
	h=To:Subject:From:Date:From;
	b=jEVlFM9JC6eULjP6bJQ4AZTJmdVk8QoKBrvqBTInOV5HO8Zkyumcmk6tBfAa9RRSN
	 Dd0FgC45bWiJVBNKC8e2+yBu2CT3RYsfwzPTjq2UUWGh0j0L1/Ns3U75JBLsSjSlMA
	 nq9uE23ejDxauwXDwvECv4FJjSLV0unCaD9MHHkUBPor7rQIQLkpJAsW/Xiw2eTIQz
	 m4iL6mb+ahUYRCipTG+oLYaE7wlZ0c87TlvqhEXRD2YwOzrq5F4sZr7uEUye9KrYBT
	 gTuXsZnoxNqFY7r+D9BZ4M6JubQEwWeevnLwHp+GtKbp/mNxuwZ9vkDpdO2df26e09
	 TWIfen3nqOEWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E5A3C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434719357.23569.14225911998215217488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d0cbfd3e8a355d45c4fefa7e0aad5dd015b42e489146316a5506401b8eb4ea4
Date: Mon, 04 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754347193
