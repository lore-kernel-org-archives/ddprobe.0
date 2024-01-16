Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 167F71CA9B
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705425497; cv=none; b=JZ3hOP7a3B0h06XDZeMsznaKyWDHMZjSHViq6J9vUZ0lLQ6f/6AKkBf3AELQ2xrTsQlOC/lcuMF8nvm0mmC+FkinmMeArWYPWUhARewDaSaCFrMfBW0f+OWMSV0Xyu1K7jANUw0ld2V2c2a3yXWeiy8CJI58b4u2v1pryFF9TVs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705425497; c=relaxed/simple;
	bh=/PLo3ItfMrubzRv5NmVDXp7x0opKHB8fad2Ck0NcoFw=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=fLlks/DjzmSirg9FKOYouaCPVVNG7Ibk+sB8/yh8j2noMJzyE72d3jAHWE348CD9tPVRHwslvfC634mM1IEAXGF5rRHkGfJWdf5zNfePFrOVGvpJUscLxMVFRzuzjEyBckuxt950B/KCqcdA5PNNICTFg1vcjMEI9gMXuPUqEkI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IpaesZRW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IpaesZRW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 83240C433C7
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705425496;
	bh=/PLo3ItfMrubzRv5NmVDXp7x0opKHB8fad2Ck0NcoFw=;
	h=To:Subject:From:Date:From;
	b=IpaesZRWzBi0rbtOUSMsrWxA3yjfp66yc2bCu+jIiJ0wpPtr1Y3dIGgfUG+Cg7DhG
	 qU45bS2dTyEmn+i+syvlZ4tlgph5vo9r3z3GCaDQ0mhg/C75kx7Cvws6pAhf+TwHo+
	 GyJvKbgaHVJAWnxfEVx7gFThFls9txGa/B5WET9ktAlKtie+VjDhdwjoUP7d6JOwxo
	 DCGiwPtYhc+j/SjyDcLqCGLgFfUXGjep3n+2sitXrUfmVhmUjJyKRsxvE+dM9uKCZ4
	 Dh+tSVQaevGXTiTFN0RvTGjhfcYCxQYZlt6CVIQpP27nmmtZIS7X1QXbmRtGRpomd4
	 IUSZ5wPkaZlvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 66EFBC47077
	for <ddprobe@lists.linux.dev>; Tue, 16 Jan 2024 17:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170542549641.25654.4804373598821427357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30f76b796c8f6a090a404b1f8d63f85f71687b5f9483921bc75156a452a45cd3
Date: Tue, 16 Jan 2024 17:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705425496
