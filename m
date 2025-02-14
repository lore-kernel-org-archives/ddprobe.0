Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 472A614B088
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739506134; cv=none; b=iZxzCUXRp/HzGdLnuNK+8XLJ30VRwsm5lm2Cfn/ieOscDzmRYPCN87Lf4I0V/DjBhOMzTvh3BqJ8B8aZYiqOR1wjaWhTGN5lzqFqDtZAT3Nnu8Pfa5NVkNp3SdgV6Tw1jJkQ9q3/2vaVlxE/fmcgptjWRGY1EjTdPF8hFZSUZ0o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739506134; c=relaxed/simple;
	bh=lqUhXYFgJtrTcajy0ggY/OHBOjNPK8bMdeAGQ8mxQBo=;
	h=To:Subject:From:Message-Id:Date; b=hQMAuj5Dvj68YF6agFER5F3o0nusaB0O5FXHzUdTeByuS+9ZTcxXZf1FBpUB55pFUsnOw/iSA9WN56uZTWE3JNFo9yYYjRGwX7cEjg49Rteu7w52RksRA8z6T6zGGBPkqIZT9nDs6Rni4km+0/EN8uBukaArTkEjfWW99YG35jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V1wECdU8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V1wECdU8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF08BC4CED1
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739506133;
	bh=lqUhXYFgJtrTcajy0ggY/OHBOjNPK8bMdeAGQ8mxQBo=;
	h=To:Subject:From:Date:From;
	b=V1wECdU8Cp+WrDdainXWxMUp/x9toqpeCveOEcm+wDQ+TBfoNHiKa4AVtj6jzPbGD
	 NdklNstHVZKjk6S3cffvdxDzAxTSfzZ6NCM+sJEFe+qcY5CxS/ZuM05Dz5zYr2/LUt
	 L/a/Fg0N2kBUYBrvrOyHZCpa3g5dpoUv8iWv1Plj0Iq0gock4uYEMR0JbMAsvG5bmF
	 RH32rWvqmDkuvySe+fbdrKpOPoE2heXHmSSguwu8oJC4FUHNXNDYOY32jJTRc1cjDi
	 iNwxmgikxuqiAKYohKgKCOwAweU9crHel7s4H9gnMcHd1X8HuEuDKCN6vzJZ5w0Cyq
	 2K3yCgBKA2VNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9441BC02198
	for <ddprobe@lists.linux.dev>; Fri, 14 Feb 2025 04:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173950613359.19462.13471960712089019697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d4d337aa91941aa676cd95df87e1e2bc0057b56765239edc0cc0f6ac777ec3b1
Date: Fri, 14 Feb 2025 04:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739506133
