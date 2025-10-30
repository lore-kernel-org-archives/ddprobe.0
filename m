Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E820257AEC
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761810594; cv=none; b=e7aAdJAqmxmbFmm34b3L7TZeTWXGiTBV2/KvaIbdS6TBoj1uHQ62bsjjEKTOieKRZxcOV0vww61m+8SGy/LpOIaH3Mln01r8An/UFJt4dpLTN+jahD6tWYzcyTnWODmiHfQ2MadC7mx7epmyWMpJ7zlvDfths7uohxDk39HuDk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761810594; c=relaxed/simple;
	bh=2dPijudyUij4uZ9xvdzfYp1WdK8HM2GMZL0ZBw2sFHc=;
	h=To:Subject:From:Message-Id:Date; b=S8hx6lDqt+MPx6vfVECe/kYr4EfcvGsCcpJP1EifbN7DNg805jdbSGKD92I1Oq4Yj2cVABVI1uG2vLKkCtVWtzihl9HkR1NBUqLXv8TDvCk2UUKTdSxd8ZyPzvdR9Ug3ka45PSmxFFDu+0M0LWxV3zu7BLrw6PbGahPnUOCGegw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q+30BT8t; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q+30BT8t"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31B7C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761810593;
	bh=2dPijudyUij4uZ9xvdzfYp1WdK8HM2GMZL0ZBw2sFHc=;
	h=To:Subject:From:Date:From;
	b=q+30BT8t86S+G3OIsDsNkLae6XqE8k//9H2Nw4ezpB0vWiHPStgJIN0E0fP0ZHc1A
	 cY8wTQleG/iodGD6N1WMgFupWKrp7X4BsHUpH91KY0hwAbrWR+Ic4qturz8tT259j8
	 BTpL/tQWWM/XD86fWKywBty9fcU9fSQfS+mFxpFCk/eG8Exa0nFUxGh4iZpDtWBj31
	 etGo94V4p1csxmFUHp7rTXjOChZSNCocLipJep/ugqo6tdJCo4gLie0cOcfszQ6pri
	 zt+FvmZ5t85w4z0J2M2n34RcXeVsf3tZkO8Wtl8j71hj+wKKnZYW4cAwejX6ynZS+o
	 craREqJCEGHpA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D8ECCF9FA
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176181059358.10975.17063770466055666342.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 213bfc2273e9bd6f39774bef5812b16ed4f51d5934234a3cf2f97b0a005ff044
Date: Thu, 30 Oct 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761810593
