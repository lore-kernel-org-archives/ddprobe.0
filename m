Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63B9F53FD3D
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789068034; cv=none; b=jmfZizTylQgBfmgq4geTI7R9xYTWIAGatK3ajcuAD3Td/n5Smjs+UkZz8Zf2G5IkG200vqmW6l0Lp82hAakFJvJ+GXyxNF2lKPY0a4meygyj+XdbwjI81zBIorOG5n0ULl4ylbSYekx/Dfik8BUkybimN8z9gkZ+xdYNCop7Lk8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789068034; c=relaxed/simple;
	bh=7NEZHw2jnJyaeRrr90HbEONzbrWVteFWeNxHr2YThN0=;
	h=To:Subject:From:Message-Id:Date; b=qV7/2v5nRap4nPGORAhUCbeZSxURTx+LYbjRTEQsKlw8uRvSXpMBSUKvVwZEfoqroElJDqv9MjoAjdISAWb67obrVrJIJMPXMMaPbbhtWP42PswdyQX6nPFcinHTYT9HWu2oriZlkLvpJbkYDvrbiuKnL2gF12JeP6/6+ocUiFk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KMt1TWkq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KMt1TWkq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF0D3C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789068033;
	bh=7NEZHw2jnJyaeRrr90HbEONzbrWVteFWeNxHr2YThN0=;
	h=To:Subject:From:Date:From;
	b=KMt1TWkquT1cKM2YXtqnROuwiuavYcuIgLS3xrUq033htZXZnHyZmenvxqKoBVCxb
	 mz4+SX37jM2IpdkqpktgZP8aX2/6s4N//IqwzHcK5Bu6jEmSh/1ruS2P7tC0RL0JQl
	 BR/+GK8VISrV3V50h8lKHfdPXnxyEsDFCiYAJly2duwG6YU0PkzgoSJJtODeB2S3A6
	 /xWGQTzrUi9V+FQgXBTL+J0t97KM1OIJvfp8BVRLKd41fYe9oR64RBC95F33VJ37pj
	 Bm39tD4u/VooZMYEvTNWHNoW6DrxaAaUfNARiPNGhwF6SrHUzI/GiThDpBjbeEPeLZ
	 ttfVURQzk+6+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA3EEC79FBB
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178906803368.27449.9496642216289776092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8b403f8ac633a9c7d50ef35d73d21515d1b158a2d177a901d516163abb965726
Date: Thu, 10 Sep 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789068033
