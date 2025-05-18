Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B1E35966
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747576795; cv=none; b=irs4MO+t8/1NoQ21jbimglopjMzOP5hqUx0Eq/sl2dcY8de7uL8+F1h+3BxzeHO5qSxaObUa7WaSbJPYyeGL4UYx/uF+9ZkXv2uUDpoR772LfmeA+uqnlyFmM+2bxdhz5WbzYo/nvoEPypKK7NKLvJ8QQzf73qTHrnyW56Aq6to=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747576795; c=relaxed/simple;
	bh=lbSPjP7PmE9J4bZEsVAAjvY7Tjt/tcy/JGPyIO2URwQ=;
	h=To:Subject:From:Message-Id:Date; b=Tu1tYtJUL9HvgkkqWcDzZul7D6dMHHg9whjT3m50zeZ1Rv5ofuXj/+INeeR1ZLcS618JI6qMWI50wbIj7j9TbMuzgZCbEHpK6Pots7ZumpUK0ZzlIoKk/eUqL8GRtqtWa057u3eHwXhusMYCQ9V9YX8VNS/Xa+vj9Cg9Y8RaIG0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DC152ELr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DC152ELr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C1EC4CEE7
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747576793;
	bh=lbSPjP7PmE9J4bZEsVAAjvY7Tjt/tcy/JGPyIO2URwQ=;
	h=To:Subject:From:Date:From;
	b=DC152ELrN/TauOrZEzLsqq3X/NMVXjWOO8KCiyiqD2cdqXUi/NRkVWJIPS98dDR2Q
	 3/3k0bhfxFYISMIhDMfgG6jCbyT+rtkV38tABd1Fk1An/8K7HsV1oi9RGFmw+NYVK2
	 OZyklnMbkrKfEg92uRa3xf5yB5x228eV9sI7MkSxmmKVN3JCHYVkqvzzEGegZMWB5g
	 eYS2yXuvnmQa5y6hOSU1s2Ah3KA3PtHYkvFnZRnd58mob0xmPBapJeUefQS5hJVr7Y
	 3zH2ZWNOGCwsPq4eDPDg93nbMLpuZXfXGw87doio8tzQ1GMsuhnRJwASkn5Er4iRIj
	 BKlrbU80RCOFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95664C3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174757679358.27618.9981416994919486528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8dacc73eefcfbd1fb656d75bf6bb87a49f276a73b12e43c6a6ae35dcbec996bf
Date: Sun, 18 May 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747576793
