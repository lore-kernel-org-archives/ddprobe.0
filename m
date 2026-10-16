Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37DB2EADC
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792117834; cv=none; b=J7D1aJHl9QxW9Yw0ajTB8jzvoTnUYD+kUSD+q6nvTHKsiSxla5GCqrnQ//yyRSVMBroKPEi0b/N+q6OcN/EaYMOlZPez0Fy9VThQ+mxaEfCILjMMygCXXo+IP6T5W+ajSrZzFy751jDLXM4ruLk3cvIKAaj1ylj6QxOla6KNjJ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792117834; c=relaxed/simple;
	bh=TrR6JHL4yRwrTD0Y9/KwZfjPpj2jTd5DVyIkyGZKkAI=;
	h=To:Subject:From:Message-Id:Date; b=THJNXy8Mxog3kHp5oZ6+I4VI6YXB5I3VJNE9vCZjPg6cvRkHHGQIV4bJqz/w/rrnCpsCO8HtQSa+FHJsTVmUYldp2nSO6UFlQkRXQl7vp4C/onHaloQNtw/bCplIyPet1P4zADjBhv5iQ8FCucpYHuEE0/iBUfmNjawMoKrGkvQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O26JMw83; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O26JMw83"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA05FC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792117833;
	bh=TrR6JHL4yRwrTD0Y9/KwZfjPpj2jTd5DVyIkyGZKkAI=;
	h=To:Subject:From:Date:From;
	b=O26JMw83UBiqEd9scdqUqnjeqn1DOs7iFHW/fgJLOQ3G9mqfKd7mDMNG1cRGeq0+v
	 rY+wcWwh5KQ4XNGH8uJPOuGsqj9i9gSsffCErmv2tiynIppJXd1HgxTE6Cd6aGQzXS
	 A2J4ts/4jVYGcDNYX2Q22C4lMUv2NIaKNpexy8ED5IjIyJIgK8hkmC6y6ERDQ0IVPs
	 hyo8V1M0XMNHWJ6nYZvtcqv24B+F7DD76SIriYf3v+mz6lJXhnZ5aq6Mv9siwrsyCL
	 ZDZjV/vkYxbne3DmmRzu3Y+gjLUxprnrCjnhYW/2/KQtWk+xx5ajNoPic0UabeUJ7A
	 E0wwHdeUhQPyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4F6CCA462
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179211783368.14211.5230223317026319717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67202830bcc9214df8eb66c1888b2bd1a2686ad4383d2a0dd8e84b36d32745b6
Date: Fri, 16 Oct 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792117833
