Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35932217704
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763698914; cv=none; b=Etzu3lAb0v4sShsD8oz/SPLAHVzARpvOd4gurNcmBBnLyCDzUJ/dH8sbLg29DgJqmpfwUUvIVfiJ/7WRiGq+M7zQPANYaOVylWHmDIeMeIGFHJ3vgqZrtMfkkeJzis1UcGSnS+x7z0IpvbiSaOFqKkAfCS/abZo2I61UuD5ojII=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763698914; c=relaxed/simple;
	bh=ty+25hGIRnGr8dvIZ6ZGTlzB07r04+7RgSSjnjRBFeY=;
	h=To:Subject:From:Message-Id:Date; b=mTC+MTaTjy3KaTp/wOqCwbIEPipfoIJUbEPOM+u9yuKQSYlXoDTYfRxC/sLdlqv1SIGr2YBr6P1bQC8JG96ql6SEf1BoKexyGnG13JzEa3IzVKgL0YKtBv700F4XIDgfCMG8BVmw85Rd2qCNMzlkI7doVuGYQ90HtpbCTRAJ5qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p3yP6ow0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p3yP6ow0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B962FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763698913;
	bh=ty+25hGIRnGr8dvIZ6ZGTlzB07r04+7RgSSjnjRBFeY=;
	h=To:Subject:From:Date:From;
	b=p3yP6ow0eLPy9Q6s6w4KUMdSOk5WZJns8qORWVQk4623YSSS8Y0o5T+zyDBrZPxcp
	 EzJ9tUr/cGlvYf5uw/I6R1Idu7sfc0WLU5CM7Y3CPZDQcJ7mWC4QoFIHnj78rJ04js
	 KnGyx71uQtDIUkfXTTMHjtLhspf+/F/qj7pEXcfYHkFLEBvE93jO3I/ijG7PxNu2NK
	 1v1tnvRlaNsVZUO4lEb/bCg5Y0eibbJjM4q30cCjmlSKeAImyyyF6PzbHmwU7k0dml
	 ypLP6TUpYRxIEDnYvR+Tw3Vv2Czys0FI4ws+ccOpsAJMicF/UH+PxpqG18D9ewYnb9
	 CzWKf2nHYbq6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3E28CFA46C
	for <ddprobe@lists.linux.dev>; Fri, 21 Nov 2025 04:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176369891365.19461.12748875197537572232.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 58be1cf08dfffeb8696ef9013b8c5a3045c69b2af6b9bd1f757d919f9298e661
Date: Fri, 21 Nov 2025 04:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763698913
