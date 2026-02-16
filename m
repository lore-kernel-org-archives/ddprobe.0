Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECCFC1DF963
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771268694; cv=none; b=kBJElGwPqxnpOPN+EZNVn/ZoidTMUbzTH2AqgyKE8jVb+tXYjfnMncx4pcxidFdkTFDMvtnhawoh5UyLCzVFbYZVRQOskbuARpeZjvJY+k22+pT6d4gfcbEBBqKEbGhdUM1qUQH1iFcQGsOiKf/BVt2vuWB/VvSmvgCJMoibRGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771268694; c=relaxed/simple;
	bh=XKin2p69wjPqhbrPoasSqK0y7gK04Z948u+ffXbUZPw=;
	h=To:Subject:From:Message-Id:Date; b=GOiGQR87fomPlLpmqYxC1d6EEdINQgxAe5zyDzLPcrjlsZyADoQ2RG57l2qHYkwop6Qr3jyuAVLKPAwq/QqNbrI2wngHsgzHrEIa8itlKi5BOKaAgBiSdaaF9hbE+Kswv7rwGMiFebH9UMAw6voNygjnz/40uAMtdzFxVr6DydA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgM65V7X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgM65V7X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC25CC116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771268693;
	bh=XKin2p69wjPqhbrPoasSqK0y7gK04Z948u+ffXbUZPw=;
	h=To:Subject:From:Date:From;
	b=JgM65V7XAk4QheGIuREN76hIU6WLmO/m8fPzctLJsIpIpHBxvggoPrF8TcSTlc6Qv
	 TBfXazrBMOW/HbayT6ryKjpHEykN+6mDlGIvSJXk05KrcRGdNyh5li5Ps583lGcDPZ
	 lyJc6RK6/WfcbchWryIteaRidHydd63wLpGEbZAWZCn71OxO6HWuQp8IYAeAdX84n8
	 Ec8mBhj6CTkje2C6/lTk7ot/fbjMCMI8gyrvIyeQnS6tiiqAvK86zNRLcKh8skt+Vf
	 Te/MLI79oPRhpPQtawLw7wVxXbZNv7JMNWE7XYAJpEwAE0nEnziyFwbNSh7sQ5CSlk
	 kf4e2/7j5Vnmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987DAE83823
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 19:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126869359.5275.16527566321387025521.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 572d4829d97b7b3db6c089d9cff78c9a45f5e03494cebdc43106ef704ca42d54
Date: Mon, 16 Feb 2026 19:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771268693
