Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 231032AE7F
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728639954; cv=none; b=nF9G+2qYKVeRyqBtuuMtNrAOmX+JMkGxGU15bee7zGVsT6VmHWTUpF+GS0naLIP5iE9xIS/afQhVtGszyxe/bDUs90uxXOpUQivMgwijwwoCpE31ZWv8eCnKAGy5t5nYN9jTGU0SD3ZL5BxzFimgIW0KEK1PnNhV8t1rQNj/810=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728639954; c=relaxed/simple;
	bh=RuSLtNBsx9DBAFi0nPPYTYUL906uqk2CHzzNiCD8kLU=;
	h=To:Subject:From:Message-Id:Date; b=Z44smWXGdv+qquqZaVeY+aKfFEpzFh0bafQRj6u5IOEK5k6P/HfQz3eA9Z1gNOR+xUo5GhSpUASts3oSiyVuTkOpNsaW7X2kXkdzxrC8qfxj0oLkPLPop0FDbMWt/qCKWA74kpxVe0f7JMD8KNOmy9l7PqvN58BCC9a3pYJyvAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g+Iwgixq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g+Iwgixq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8694C4CEC3
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728639953;
	bh=RuSLtNBsx9DBAFi0nPPYTYUL906uqk2CHzzNiCD8kLU=;
	h=To:Subject:From:Date:From;
	b=g+Iwgixq7AveuIJjNHuQgDP+qvzSDfYqOxar5D7lXjup6Yn49gY9IEwJ14y9LnOgd
	 LAhH0SWUjQ/QDH/mOVXh3qSE+Kna+IL8KMjqramufw8pXceEaPTqsJ/8jI/YkQ6v+N
	 GsVkOaZhw2md9cIH4VeD+JghAUJ0b8dakRH8bcvvgaXCQdc7h7VI35Gc+/OHnynoU0
	 4JJx65xOWN3ERmp5TUPNk/Csgez3jrLGBS9jIUnaBnCwCgiOfxKhs9o1SU3F7HT6pd
	 eMfhFBPdovqBakHAy2LO7HqdEdzEuIH2z1btxNa5okOfV3C3cgzamqiBogRCNqnmIv
	 iU/sAQ8WHwP7Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966CBCFD30C
	for <ddprobe@lists.linux.dev>; Fri, 11 Oct 2024 09:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172863995359.29924.9455885679177109760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a756d736f2559c41c9bb8b9eaed9fdbbdd996cd455d906e7eb2965ddb9a2551
Date: Fri, 11 Oct 2024 09:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728639953
