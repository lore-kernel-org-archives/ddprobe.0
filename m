Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14F1A389E0B
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773890094; cv=none; b=PZkluZ4Z7LqEIaVLiNwQE0MwoYDmAiQdLCgOsPKMAA/EZlyWGHGKDGsjcYyYuVrcgPU6kB7/ldyEVxIfwAZBFgw2hB6aZRZZ9nixmMKSqv9tKXoSRZl9iw/f1zQp4GVBV1k/dKfPmZ25CJQxfbV2qdxXwjyUTaApCxQKKr0vZiM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773890094; c=relaxed/simple;
	bh=46DZWLSJVmCQ3KX1Ody7PvT5Q92Qj+RVnXF5fmz6yWQ=;
	h=To:Subject:From:Message-Id:Date; b=AZX6v5Z62pOVV+/MKqdNRTch1dIbohWrfz3zaY+19rhX4jqj6XxR0JeszkrCCakATSmZd8ysT2CAE31a6y+eKUR78RDK5XA3IQAFTqsK4WKeHYE/aAB5GLUMNGdU5ZN1TS4KYKVp4R3xONxR85AgGH8wIU8NLt1njEibWvbWD8s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=J1aA1jMp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="J1aA1jMp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB665C19421
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773890093;
	bh=46DZWLSJVmCQ3KX1Ody7PvT5Q92Qj+RVnXF5fmz6yWQ=;
	h=To:Subject:From:Date:From;
	b=J1aA1jMpHneq4L2FZumHYaPkRTbEUpzPpmMBr2IFHig6qTzThx8AiTcSkKYIhH82w
	 ORIuN9ZFqNLTdysCKGi+G/mRzVHLk/XYev0/+TTxEMKk5u3rKe4TK87pAG2Fw4xTPO
	 kubiQsI1VX2QmswO8RvDEMKaumsZFFPq9R4JtK5mUQlTXRKRyeDWzhL/lJufOrAhtj
	 74zrQB49ACfey4CxmiWE7SO6NoRkjXjVDc32UpabJlghsDRwbIAKykHW5+/xQ+6P5a
	 PGAoZPH21cVIc8F5gXbXqkXiUAzLJm/EPAXMrob6vYmy+AcIZ42SPnxJfg+OaNAPL9
	 oxTBuK4DL31dw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B0931088E67
	for <ddprobe@lists.linux.dev>; Thu, 19 Mar 2026 03:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177389009362.24199.6708791613676834119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 444350e89c51239caf956e062e45133badec7b77e7b08070edd0cdbd795a231b
Date: Thu, 19 Mar 2026 03:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773890093
