Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2EAE4238C1B
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760467794; cv=none; b=na6NSHPWH33aVZlxd22Ey/RAEYkIKR8W2OrXzYaSKcwFqVw9SZ2/5dwt7LWDla7yr1n717LbM8+nnE78Czz5w5LYfOy7WRoidDno4k2GwjKG4Ox7GMo+ijuCzrK9G5jLT4xd399SEzlyBoUUzyYYR9Bp/hNZ0Up1EQBFOJR1hJo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760467794; c=relaxed/simple;
	bh=rXR1HTkTeHOznGtR/HudbRe925OJa97LLeC3rl0Txag=;
	h=To:Subject:From:Message-Id:Date; b=f8PebYDPsY9BcL3p8U9yv237mrQrKwuHarERNnrOZP4mUtVig/bEdDPZjp1+mkcwvf8yS/KeN/kE+Tvlku5t2pvaidSYmvxd/1mes8xRiJXzm8P4hhOkOk9h5VgJojvwmFvTVOghk83r4PlzDU3lK9MmfFP2pKsWul5oVReedDs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RYc4+SL9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RYc4+SL9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0E7AC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760467793;
	bh=rXR1HTkTeHOznGtR/HudbRe925OJa97LLeC3rl0Txag=;
	h=To:Subject:From:Date:From;
	b=RYc4+SL9OVmfcTPg5oimZo2AeqzAHUIOoljISNHiRUtiBSfHXIjIUlvz3IzwM/HXF
	 MXnCS7fFY8RVwvgohgBZz4XXTmCV/30uhy34obD/Grq5zwAo2Jigq9ZJq+9hKauf+3
	 At39oh8p2/I9eyU17q0NJ2RScYlHoP2ivgddC8XxmS7e9NJcQZoL7I8QWxIoi6isD2
	 4vh1EfoXX6iTwpcAHlfDA7M/HZfgPL7Kz2/dxpQCnkE6ZISaJ0EtBeZhjXKvUqdXf9
	 sBV6uhE4TPNoZrw1XDka1zuZ2zaONWf2WHlKb6Wd1iiUYO2k1wNKuJAjrK1VN1Z9jR
	 ujyjaDpZfaUgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92168CCD184
	for <ddprobe@lists.linux.dev>; Tue, 14 Oct 2025 18:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176046779359.29350.8401941496623232822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4fb758dfe7dd26128a1738cd96b1ee845e3ef724a0ecde3062d4f43f164b623b
Date: Tue, 14 Oct 2025 18:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760467793
