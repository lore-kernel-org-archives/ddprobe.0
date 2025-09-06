Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 130F91B21BD
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757155794; cv=none; b=aUxvyMMTHqDPqs3isG/2JAzP7bw9ycoIPOP1O/ihVlVWke+P7+Xo9Mv8wxXamTy/jDq7FzpHAzI6qTkcT5DLDxWfT7kzoxIMheyNGF6SRP8aiiVh+02+ptTcuGtaulKIOKaqmBhJrl1MQFJIo5VJFKQL0hlNiXfmy390JLtAD6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757155794; c=relaxed/simple;
	bh=vXdKAG2bRNULI+fVG9+QrS9apUI3LqNxccfKAtwqZB4=;
	h=To:Subject:From:Message-Id:Date; b=mp+tXHyC168a2wyaT8+6LemfzSqbAFiQYjlkAOEjhcTLiBHmAoQHv/1dOsX4CFABJkSeEIdFMxRAjY+8abahJ2RnblTfJMHsPBAgqOg27xVJVchqYaS0vIXc7Mp/+9w2u7AMQApYto83ZZbt2r/RakKtHIY6xqchSdir75Bq3aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tm3uV3kR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tm3uV3kR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A199EC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757155793;
	bh=vXdKAG2bRNULI+fVG9+QrS9apUI3LqNxccfKAtwqZB4=;
	h=To:Subject:From:Date:From;
	b=Tm3uV3kR1hy1vGRepDbVonmfwZ9Mc4yex+vXXEkr452I8pUPzFq7MyKJxBiPIA3sh
	 VUFuSQhxU973Uud5cbGDfdsKZHpaeNtuN9lJu6hWHYezoFcMh/sOQt2HW0SzRcOPmA
	 YNtTJZrcMJs+pYIW4n1BGq3YmQgyh0+gZqvTJ9yUJgwASw8iEOBjJ9Kl/+4FgAOe6C
	 J0iNbGeC1MtTVROcmnPI7QvjE9eI8x9VDHPU6ApLeHtv9/lG3FyyX1iMuVFpSRKoUI
	 OL0C563TPDsUoOf4DMWgCP5euabU6YZWDK0BFfEK1XxMKfxnWe86gCZopLDA23jMvA
	 GFrXGmOaL9rMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F974CA1002
	for <ddprobe@lists.linux.dev>; Sat,  6 Sep 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175715579358.3716.12519353495956394620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cd81c33527646f8ba9fb0d6d557af632c9bc96d4053966218f55365018d1934e
Date: Sat, 06 Sep 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757155793
