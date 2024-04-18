Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58A4316E89E
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 15:49:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713455363; cv=none; b=J+HvPHt+Ob8BUPZcxn8QxRxzgRgeTjeP8ha6rkKBsrF5OmqcIlcDDF3yMA1nC+eI4QoUbYl89+0ZiPaQZt4GjvtD64/9Y834vYYfw5HWL1WHAWpgq3/PxzqD7n79tTM5DEljoX9WVyC1C26xd8Dfl1bS8E5l59EShtqnqCtd7Zs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713455363; c=relaxed/simple;
	bh=tvii8cl92wFQZ2ROAug7cURa+/VWqP+GM7zLniietk4=;
	h=To:Subject:From:Message-Id:Date; b=us7624S461yVsNKO0Wc3GAJBV5P3dnqXR97Q9NS1BizJo+29NezJ5muoQK5CSTzzH6oy6Un2Rv2SLLvKkxtEnv5DiLU5arcJ2Kzf3d2K6NI10gLYbTjsY79U4B92rMwlP4fiy4VTA+mhrwG/9AikUKUJgZWieRVEPJGFrluil7E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AysjSITD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AysjSITD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E88CBC113CC
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 15:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713455362;
	bh=tvii8cl92wFQZ2ROAug7cURa+/VWqP+GM7zLniietk4=;
	h=To:Subject:From:Date:From;
	b=AysjSITDFnfM6j+gDV3H7s9R0tzoP8icaaDK9xiog7uIU7pBCQZmTzuCEPbQjpuL8
	 bfHBxaKlEWiPJZIXcoeeWlbzcF9Y4Xc14FaTelB1CCzHa4aK87t+POGlYzt3wBweEE
	 jvClKQ9Yv5vQ8jAz5hh4NNFFMqmWLsWymfuEPiMJLGMaNJJLH/KdhfSB0oJoQEoAp1
	 nzbietzDvznFjtFBpS1lxtjelTsC7VNS4W97ik24xoeLqtxHB0vOFqwuOz102LJPJs
	 sv8i+VCg82nb7lXeG3FbsSMPAHWG2zC8oPHnLOlmYQo+MzKcmUAq+WfNgqn6ELm/nG
	 HxPo0C1jeJBsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D19E3C4345F
	for <ddprobe@lists.linux.dev>; Thu, 18 Apr 2024 15:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171345536284.15715.12195584061560707125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82d08cd04fe6e447258a69bdff15c8e0a93793319d5dfe7d8abb0d351c074bec
Date: Thu, 18 Apr 2024 15:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713455362
