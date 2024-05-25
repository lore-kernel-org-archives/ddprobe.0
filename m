Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 686D6DDC4
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:44:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716623063; cv=none; b=jrsVh4wnpESm+/YjMXfFPBZR/zL5QDNApj+s7S2zO23ypPtHMmpzYOH4yLzwn0gzJd7n4j6vggm78N3/Pnpogh243eKTxzHPlXtlJUSGCiXszj60cUdbsuPwtsrk8pk5UynuENJd80di95OjIulK1o/eVIuKUpl0M67oCfqIQ0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716623063; c=relaxed/simple;
	bh=PRML7xGqWJoszf3osQf2OxtTWmIhxkNWM9uHz9BHrmA=;
	h=To:Subject:From:Message-Id:Date; b=f8ZpRjshvcr3BmReHUIh+CiB6Ig2eQOScvgSP+xUxED0x1GsItW3P6xs1xHBDMyTWJKMFcKBKtBdKyPt1ztbnpLuO5j6SXLb0PZLTrksUDGxsGY/pY+1DQdVEWvsmlddgrhG4HdClxiywgPisyRchFUkAFPQZwY/OZfijBJxgk0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qGvbm8bc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qGvbm8bc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A8EC3277B
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716623062;
	bh=PRML7xGqWJoszf3osQf2OxtTWmIhxkNWM9uHz9BHrmA=;
	h=To:Subject:From:Date:From;
	b=qGvbm8bc2G5uqg1jRuPoSMsf+bgqn7FfDn9yccHK+BcDb60m/DE0vODGsrY02bBai
	 O17yIToVk7f4JL8kjM8Y8h38Hfkh4bNysX3/lFLu63fxBhVAECKuik4hL249nFHr0m
	 kXbIEkFgQ1fIByj9hbEoKyTnIwixLCHsyoE5gkGs6tK1vZXVRi9Ea026dBWuHqnq6V
	 JaQ3hWGoeLM8tLu7NnDWuqXX2w2ta8iTc61BH4onLg7HmzJRFwQIyL1h9uYGA7hj4V
	 qc64wlTA2B9ixjhIv/STYfeDXaMMM6sFV03LVXREXwT+EEvL/XUt4cGHXkcxrvqo69
	 o9jvDzlzBuGjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1BDDC25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 07:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171662306277.3196.5991558894679271785.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 979ebb092eabb9ecb1a33ea0d7bf3d02ccf08f76060d7f3b37392dc1f68301e7
Date: Sat, 25 May 2024 07:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716623062
