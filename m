Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4811879CD
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:46:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720334783; cv=none; b=bZROpaoQ6WjjcvwFfYSOQ+zuwS6ukNu86+lmmnaMIpOj4n65awbR2Q/TJ4d4EO67bff+t4NelnYHNNdzSfrHKDjRM6enfLrXbX4ETqtO1EXCwuY+uAiXno1DzG2QlwZz7xShNuBMDUaA6VSS8YRa/ky9jSMtFNlmWnOgimlCzzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720334783; c=relaxed/simple;
	bh=sA8QN0/wdJRgEfCEkW2acJT8nmOx0TaSYjRmTpny84M=;
	h=To:Subject:From:Message-Id:Date; b=rsefWZf6LiRwZId+3ly8BqkD5if75s5iJ1JA7lqEeS+vcyt0MjiE2q+7Gwc8OqyJBK/gUoTAqR246UqMGYkDS92NZN1nwVtete1Hk7cQBBZlSfxJFy5ZOGyQIwQ0YsMMzWIlbCjeFYx6lacDKDvd8efubM8UWVu1DZ0yMn9JZh4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M8mxh2//; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M8mxh2//"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE587C3277B
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:46:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720334782;
	bh=sA8QN0/wdJRgEfCEkW2acJT8nmOx0TaSYjRmTpny84M=;
	h=To:Subject:From:Date:From;
	b=M8mxh2//bfAyqsJAPyzsvMwfk/QTAL/pccHDSnjn7tLsgpSd7i7oyq7fY2Jxhd3VO
	 ebNBM1/HMAIn4ET9/PmJLGYSR8+3btbq7XEW2/nMZdlAdMBIam0nkHCANwtYdGDRYr
	 IbRbrPYW57p71I5sDi3+tObjVvjH9R2LvwA62uyPFYXTqUb1tmCaknQTZrl6oUtU8F
	 nE6uOE5iQ513BR5l6RWLTEmUMJ7p/bLv0iKtzfh6EYQ4TkyOLf6pYtza872JVEfOk/
	 qNtdjCiRox/AEc2vDVnAPseV+dLZsq5i4FnHcaBTrqqvbfL54PsezDcJzJQB4YBXmg
	 dBmg7IXk3CDhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C4C5EC30653
	for <ddprobe@lists.linux.dev>; Sun,  7 Jul 2024 06:46:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172033478276.18923.14158279847917724358.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 42009f7638c888cceafa58c52be81f5d2cd51fccc48e17ddfd903cbd5594c1a9
Date: Sun, 07 Jul 2024 06:46:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720334782
