Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E02E278146
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755769794; cv=none; b=Sub29hsafPY5C9Mioe0cEK3u8Hk3meL3Q0b5Ff+z/Trzim3xfubaVIdayd7tAWdW1RkkJwbqz+R6wRqUx7S9c9ZF+bryf3jRW/kznlXvMYKlAYqGWrqzupbGY2fgs53RJetFi5JLUma7g98TScTXsB4oimuC7ebomurk3kaeliw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755769794; c=relaxed/simple;
	bh=FhQIWPq4vSaBwdRu3p9btfJwcTp6fR2G0Lh0jZVhBrY=;
	h=To:Subject:From:Message-Id:Date; b=jswBHqe4SQAqcATM+sULlgETfAqn9gEqjISLg61tHcvMsEaYya+L4gloSTUzuMS3IRUH/rYQPzvKYy1gsC47zAIEqcORobk3gnH3cmxrlGiClPbL5l0NjIDOdAlZiCNx4FxQTENE7blkppkpGyGsUhkuKPNJFIOrkRslgO2v6Hw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=geT6eaOB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="geT6eaOB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F45CC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755769793;
	bh=FhQIWPq4vSaBwdRu3p9btfJwcTp6fR2G0Lh0jZVhBrY=;
	h=To:Subject:From:Date:From;
	b=geT6eaOBLeBAQSDonPfzI9EY25bNqQGelI3u0mJoCfuw4cwKjLZRKWIt+EZxljflM
	 9YTv0kRqOKxarl9uE1w5Y5RlRMfhuyrBhmlG67vhIVbfURN5Mt6Lnkv+VU8HqkOY50
	 CoUjM4oI+tO/4PDkxdg9+KgK0jah/dBczpbYvdpN28cSA00UdQMrCl+5c1ia1cE+bE
	 XZVjGN2J9fej9kmtlTUFcfWNRnH3X5LZ5ODNG5FI93FQG/oZ7O8E+cE2MUoq6xrZao
	 BH+3VWf46/vwgUAteWlwtr/zA9gV4Pr+md4sVu7EUFObsZFXswkcNJwn9dFmJykNPT
	 VJBLhVRc72M1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F4F2CA0EEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576979357.14253.15534484691517671408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a34ef34d8e2f0507d69fe452481221d369fa563cc686fd5a33417850f184fea8
Date: Thu, 21 Aug 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755769793
