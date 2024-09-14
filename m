Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A6251CEAB0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726305954; cv=none; b=Lr/Dm/t8bQGL63+L/J4iZTtg2+idX8QoE5fPUypSKGpu1WL6cedlVZFjuYOM89TT2ovehTe/oxlZhnbJ15Cnr8XsiQz3Bh6YZ5b7/y6zCOHIAgfYKwjdfWNvp/VXvYlZOGeLjEgGzi2DL8EL/gDnHfX9EyNmQZi8TA9Dv9yQ2qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726305954; c=relaxed/simple;
	bh=FCnVpG/Dlku4p1sbfkZEhLiI0roB5OyJBh2A6/sd/XE=;
	h=To:Subject:From:Message-Id:Date; b=oeOv08CqkiYuGcl2HAE8NWU1BguGf+oKJnW+VHgSO/1oVqPN47YvW4a22cfuDccPex+CFpx79AJl8LFZlylnax0apO8WGeASulWwltVFTygQUdkVMWphg7WWX/8Po4XhKkuf8xzh/X9yKbUj3CaP1cLtI78mG/cjgiNou2CPPjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nJ2e1Gcd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nJ2e1Gcd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB854C4CECE
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726305953;
	bh=FCnVpG/Dlku4p1sbfkZEhLiI0roB5OyJBh2A6/sd/XE=;
	h=To:Subject:From:Date:From;
	b=nJ2e1GcdROOQJMuv/nwEYZRqXcLgTvYAWYeX+vZJUXRiw6wFNJEf7aCWFz1N7ss2O
	 HZ4qurSLOrH6scjSAFSlHTYDYIubYsJ3fZKPg2KhcQkH5lZwfmMi6upR1cMs1rPIlQ
	 ImZsP9hM7CPHS444lmO0fM9M5TZW6/W+21PqozMISY2bbAEk5TnJuGdxBanOhE4Rzm
	 pveEKMtqLIjuTNAr4mTgWOBt22EC+7DKtKUgyT4cfweLvlQUugDOEmzNX7lZHFbdVu
	 jRp3hmgHIm192jfHoBp6KU9IhF/mg5Y+tImmqZr9l2NCGaD/ZeS7Ws0BbJ5ERyEdoh
	 2a7meSIJnpSMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98DDBC0218B
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630595361.11640.9033208631717570559.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3dd7ad78ed9a5fa4d6d95960295552f942c43a42b4928295e3bebe0f586db0af
Date: Sat, 14 Sep 2024 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726305953
