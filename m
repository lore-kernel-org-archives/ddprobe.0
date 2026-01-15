Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E438F27732
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768509234; cv=none; b=hx8QIWqfF4o3M5d1c5MjY3g32A5+udANS4XCYdFeNQCLUdb2oaWmOGUBx0zb2lyHaes037dw6KcR0jUq//343w5pK08V5E31PhcxNOec+71w5f314o7X22r7gnL4/0ELUZoFeeRlQ5LdPwsU47xQ9ppYAte4g0qdSoenNZs6mxY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768509234; c=relaxed/simple;
	bh=F71un9fTYYyC3TpjmGbfsiFlyyA1GRrkV5HUlZnnRiI=;
	h=To:Subject:From:Message-Id:Date; b=VyNrpWoUBp8OtbaRtMrDjBwX/Mc7E5aWeRQrqXaoUOV6MKA5k0AYNa3VEPkaXA4d3MJVEPis2zRYdnYeaXH+AGFGJdV32hpan9ScBIiZCcIm/EOVHTg8TFsK0p1KDbRXaHis/4ZLAK5oZYZvdNcNVh2YowZ9d6nDXk3vDh6YjOE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jguFNWj9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jguFNWj9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BFD7C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768509233;
	bh=F71un9fTYYyC3TpjmGbfsiFlyyA1GRrkV5HUlZnnRiI=;
	h=To:Subject:From:Date:From;
	b=jguFNWj9XJs76T5psoW2dsn3/oZMLPp4ot1exrt/NrTXUHifMlPsWGbcA5ga7jIFT
	 /do6VsjEt7FaexDbcaHBxovBZ2C0HplzIPUoM/KhM5ojEUdzjqKNpvVJxLjkPBu0RS
	 5I4QiQCbW+q5MgyGYr1ppVxhd12+yO7Brcxh7okeJ2hgcRaOswDT/x0F+F6ihcIGPX
	 kfTjMRH34yoheD35jQ5o78KUaLvH8PLV6PWfU9R6uRzK9xUZOgBSj/EDno6kBi7bUw
	 n1/2hTrB11ot7janY6Pqq8yYqMUXwQ53WsopxkAYNwjy0HNilLqGPRaT1ufT8pfuXX
	 BfmfxbNYXzbDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBECD4661F
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 20:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176850923357.13909.13034597331786245751.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e014f77ae91a947e0bc3fe91dfc6502334f81d249bff5f698f194a1b62763975
Date: Thu, 15 Jan 2026 20:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768509233
