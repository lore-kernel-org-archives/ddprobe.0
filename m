Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4DA6D36AE0
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717320323; cv=none; b=Z0d9QZUoujaNGYfhXS5oQ+NgQ1gjmIdLkD5Qoue1nrtzbv11+glDLi4Fzl/uY4L8z36nnkswn3l4zKC+CXea0RUP6fQ0C5qDxfXGvodgC4g4g95VSr0FHAQJO8MQkq6mfRJwO68oomlLzgYYKSGWcS5SZF37W2av9JmBPsc4y/k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717320323; c=relaxed/simple;
	bh=guPZaXAkJrmvYQC8+p9F7riju1lB+eoVd8sxcwScIIM=;
	h=To:Subject:From:Message-Id:Date; b=RG+Ik78jBWsF8eM/Ma3NdbDZCmpq6uEwhety9SsOrNnXEZ9dm6Z4D1uJbt+ZTg1ZmCBybkYoFi8yZLjU+JEvnMZ7dAXNjmRyolr1iCr9Gh7IXhRQeywvW9bQdwochKief+WDSPEy5ZouU8udEMZCTWkdyiJpoyk62CIWNZj9bAE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X9KYEUUe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X9KYEUUe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB429C2BBFC
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717320322;
	bh=guPZaXAkJrmvYQC8+p9F7riju1lB+eoVd8sxcwScIIM=;
	h=To:Subject:From:Date:From;
	b=X9KYEUUecHDpWyLzCc6GrnkUiE9fBZTio22bPDS/GdftvzWJ3CwvYAv1mQOZcYYWl
	 Xhw5EFNzVkT5CsRckguo5g1tWaqfPkaXTHQzfv+guKl6O4TMkqrAPFcS2vnZlCGPum
	 q1sJL1QlIau+Z9srPkwSIEes6yFjUfTzceDau0xyKlBh+6qrMFlPxEAuPQBBAc0mNV
	 jA5V4yue60ZAUXCffJ8tSGH3XHtGLzuCa5I0wtKXC5IpRpu6orscvFLHDKXihCMk5B
	 av+cQdWdwGxadYpi4FBazosH639yxrtAD+uovwrsmnC6kdilLMG4nDVsPr3AsuYHJL
	 MPSqsCmvq7yoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CBE0DC25B74
	for <ddprobe@lists.linux.dev>; Sun,  2 Jun 2024 09:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171732032279.24536.14507897282847815468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665d61219f331434f90a3b881868e14d7338c167cb05a019a3fffcec48eef5bf
Date: Sun, 02 Jun 2024 09:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717320322
