Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C4FBA1A7249
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745674193; cv=none; b=QiOj5o3yf1pLkw489lLD73RuYVh2KIZTHIn9UHSBZRl3ZOUjnB0ypq1WSYT1tPtdCkYfz0qzuvyuCr0RRDRA3Ev+fw34b88eXtMaxqS7FzZkmupRIl6Ha6lVEosa+uSy6b2kKF6Yw+aLK8ivU8uXIS4fNxKZNoc3GzoVOsKV5dI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745674193; c=relaxed/simple;
	bh=1EQuFxRHWUNos70PeYUqhiut8KK1mWwOVznSNBQ6EZo=;
	h=To:Subject:From:Message-Id:Date; b=foQEuoTpmUeGZWnUQPsu0TG89Fx71YxVflgHGsRXLjepk/IFFqzzMzxkuiJDc78G2rzVXznRm1fsuRUknClOH+9Tmb9zfl3Mo1vExssR/6XVMgam/jHYhIe13w9d21NTU+Ns25/Do2BSmKzqYZnmvRJDRMRR7OeSxcgt3OKGIF0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oD/mcBkG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oD/mcBkG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3C2CC4CEEC
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745674193;
	bh=1EQuFxRHWUNos70PeYUqhiut8KK1mWwOVznSNBQ6EZo=;
	h=To:Subject:From:Date:From;
	b=oD/mcBkG7/3PoUilziPfVkrxl3m/gtum/JWH69KeQhG9mBvJSj5AFeX+7/6HHsMAB
	 Yff2bstNChhDIcUkKBU1Be3I13RV2E1r7ifFM+MGE8g7jub7Pkt+c9i4Zhqf479fj9
	 oqAoicR8xpfWGIK+khf2KJETV0nYt2GtXjw/9v8EZTZSlIchKjLtZcAZBDYgOhxRZb
	 2cfrKhrpOFAvKs/I9CPLTNWjSZxuRuHaPhMrJjtkD6J/xvwXryyVHEiAxtorlYML27
	 541ljFxccNaTZMaXmf0VTKHErq6Q4VKWT+/BgdZtCd3zWjFd4ifdVvSbUYmhmEAxMk
	 +0XoR3bOsc8KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9291AC369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174567419358.7488.13710590983728072587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dd3569ad5b19c9117455a915a35c5e6ac4599e2395fa1ea9343e20a05c7ef1d
Date: Sat, 26 Apr 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745674193
