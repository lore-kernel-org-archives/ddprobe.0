Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D10B21D3C6
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:49:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747709395; cv=none; b=nvuXDhel4pGflz6TGuqYwyS6czfkQSg2CqYgZa9PiSsvwQKZctqZ9PLKTxzNRLCaQj76l0wddYLPDmXjqh8BwPh2OdbsK9SzqS4bPq6yziWVZ2S/UeXml6/y5wdJ2QeMUq4nW1P2o3jW7BoMEhz32J/lF1YeGQV9xwBXavbo/5o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747709395; c=relaxed/simple;
	bh=6+yi1vV/Wb2vFwRO0NI4ZxgrG00rVzltTOdnhnGsL2A=;
	h=To:Subject:From:Message-Id:Date; b=Fc3ZMf/SaLE8/ryZp004VxNUIev+YEevVCRPz3Nsu/bvPmw1FP/S8FkXLDZjapgs8fYg8IJc8hREwqluM1Vb1LGnIZs+rL49/2VhkkaJL4jE7ohyE1ooaY5MojNh8v4QH5xXI3Rl7IeqFJWYpxb+aXxmCPEDo4WEER9Pm+IDq48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ly8rVMpY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ly8rVMpY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D5FCC4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747709394;
	bh=6+yi1vV/Wb2vFwRO0NI4ZxgrG00rVzltTOdnhnGsL2A=;
	h=To:Subject:From:Date:From;
	b=Ly8rVMpYjDsz88M1IWOlNSl6Pntm5rHuWf0G8kJp3I6zEv7dus3tYXZuKRps3r4IA
	 2ObnfhkcUbljom4mX4yDEx2shIZUKkLQ1moDBQUFCA/Zz3iJMmZQRoPQdnwCR1L1zb
	 rdyuu9NH2oLK5JrLjAgqJfiM8MljIxf5+BH3gU5ErrZovuP4lRZU2AXA5A8tu3YHAV
	 7AZ79camgBUUjhRf5ZZq7oV8ZyZ0dxB4UxGoaf/uYTeV4GjeplDt4RKD9pJp0TJr/j
	 8elcQ0yqxfGBRMj+8/fVGec9NkW8jHlGGEEvzWHcUSoKa0yp98qmipmxE940K52CLy
	 ySZg6+gi0wuRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E7DDC2D0CD
	for <ddprobe@lists.linux.dev>; Tue, 20 May 2025 02:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174770939357.27834.17446341534718043999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df49897dacef53af09702c61c8b9a02c54272ff3ee01b8b1392be55409200d60
Date: Tue, 20 May 2025 02:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747709393
