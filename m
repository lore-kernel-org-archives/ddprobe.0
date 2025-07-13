Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 327634B5AE
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752400794; cv=none; b=TLRakrew5N77Ckr+rEvdEeDlMszJQHX/lrvXgHI+rG8D9+r677EL9k1Nber8XF/1Io3uIN2YJ/y/3LiiSxMJTAxDiuIdrO9D8JPa8yP9GwQKp48N/PB4gx2Wz8m/4rftDoV30kjTQO8vByXT8Tf9flSDU8byte/2fN1LBJNyY3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752400794; c=relaxed/simple;
	bh=2jALKGCNa6j3fTUaWaPqpTLbi/eAiWfRMwhy9U6QJlw=;
	h=To:Subject:From:Message-Id:Date; b=MK4v68rJZ4OvssyonaIUH6G3qzroF7c34qdCbYojSaBsinka6uRy2YfnqSkYFj2VFMqmwxCTutdXTXV8+IWz3cDWI+CSZ2waFx/e2ahnth8HAUObx8XsJ9H+qiCrIP/a90ORRpbzdYw671droYo8rCTM5QdhOfjSLzpYCYhe1CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M3T4Cew9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M3T4Cew9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A605EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752400793;
	bh=2jALKGCNa6j3fTUaWaPqpTLbi/eAiWfRMwhy9U6QJlw=;
	h=To:Subject:From:Date:From;
	b=M3T4Cew9rJobLbvlS2pBE/TOfO0HF5yUzHTrMZdp17dYouIX/aT/qtgeJdq8d0VIc
	 x3jzPYbMLV5ht6UZAV4dXivCp+NGA6OTtLf9InNXIa5hfX2XpOAh7iYW25mpOgt0oW
	 F7ZxDdhYw9mkdwCRf4XTsu/b4zp25f4S2t+YPe32Onoaj/Az0CIjjLE1QkN//nhx84
	 MnDlejoa4MgkWDe9Sd478j7tK/RCU0cIHl1tTUp3IVl6Wi493AAI8NuoPpxvitK/dC
	 8cahB/wi4uTVkpJsYum3x41ranTrIcdHMNPgfCrDfgyKB5/aNfZQNb6x3qfOe7nZ7W
	 dC9Qm14DqfI9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E2ECC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175240079357.3286.18348133128341715483.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7b5c2345cfbb9b2a6f7a677069b3825a6e3d7a7dec877a4f5ce217f3dff9805a
Date: Sun, 13 Jul 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752400793
