Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F0832FA2F
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764247374; cv=none; b=mbvbbDCFXQ+nJR+Ktk6zy6LPkqpLXOygmeqMd8H3GMOb16BOJKsJnRImXc6I3mB/0/2VkmBhYJo//emOSDMuWQpriyz2jfdOPmrmzSu3Zcc8np814SAA18qfpbE9SIiyRVi+/OXiMcVUBcaTw5DdBtKKpgqr1cVguML0vFSFSR4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764247374; c=relaxed/simple;
	bh=EZt+ZmzhnYgvp4zEFzI7EAGM5Kv0fo63ax6p2sT9IKQ=;
	h=To:Subject:From:Message-Id:Date; b=dcrkChBez2sY+ochUOVGPhuanb+mYnsilK5c6qnoxKeZsvIu5giwl0XpYKl684nzqrUy7WxkRAO2Lm8HM8zk3XAUegkzXfjGAIol7ndcn3xtkfb64Ba/wXpu2ms1aRbkpiaYc+v4dpIMJQVH7AciRBscYG78p0zdUQpjncuPOts=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kCis5HzJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kCis5HzJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9AD2C113D0
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764247373;
	bh=EZt+ZmzhnYgvp4zEFzI7EAGM5Kv0fo63ax6p2sT9IKQ=;
	h=To:Subject:From:Date:From;
	b=kCis5HzJW5db1tI145GakEP1SoS7qNsVwnXN39uOWcKUFb0MkOwQwlfSjBh6m/lwd
	 enMYQVVQ38D5DOvXzwE5Vve1aFj5G1i9qsWJmDgtU9S39lWdVDl1XVsF5xwIcTLyCV
	 AMx385B3qz0Giby0x7RJHoGCETVuya3lb64gBpsa7bvzmq9OYkMU3T+sse0zqHXDkJ
	 76gQE/n0MmoH+veU4eVJA5j8E4D7nDhBzPrRcUR1N/+tyQjeutymUmTqpapMYXUSav
	 alBtX7TAbeL1N1fM5gxwkOkR8cQUXwzV8qCzlhPwwoKQy7JSeQlooEZr4m1GEAa08S
	 7NdQveVTKkOxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BBECFD2F6
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 12:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176424737358.3038.14206491280154151142.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b735af15272a719fe2f24cdfd739a2398df46e30073ddd1fc029ed1c805981b2
Date: Thu, 27 Nov 2025 12:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764247373
