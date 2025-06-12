Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 348C310957
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749758994; cv=none; b=U7+4ZcBqfMXud8FLro8gNXBk3eUMy/KPVBw1OPrqcK1v4uXrlYE4Y6AIP+IVs1/2FAvFtEBM2ktAS64eg25lLw1mRRfaJ+PpHOzi7MnEm3o4joSeCrSxV2WiIe87/YmTK2v6589VH4BpJnphbkK3MhZ+2mjqdGCSB8Cc6KnlT+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749758994; c=relaxed/simple;
	bh=PDgPBSZPzBwxM6xwuAvkWVpil/KrP487aQPBgH3pf4s=;
	h=To:Subject:From:Message-Id:Date; b=bh8iwTa5xB4VCrBiejxCKqFLkdStPnX6P+vUAtpdMNNM6kNT9NU0TCaAY3YTaN7LoV+u2h3J9n7uYpYlG0rFmhwjiNEQ1+4MjQdmwIvmjW/7bTJVvrD85gawXPP/tvcgdbDvwzc6kt93ZL/g3gVporuogBMN+OKgDIhfSZfIdF8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Qu61cn1w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Qu61cn1w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45E3C4CEF2
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749758993;
	bh=PDgPBSZPzBwxM6xwuAvkWVpil/KrP487aQPBgH3pf4s=;
	h=To:Subject:From:Date:From;
	b=Qu61cn1w2+pw84yn4+eTjqPqQ53P6FzoREX2eKsx4MUKW+W1uBicOTG8BBtmuwbeK
	 Jldta8l7FZA8n8QBWrHUe4LrS1Y6VTLAPSnu+t1EJnGyRulPqAUzXxnC6BTPMR+2qM
	 jhFVm3XnBKEfXF609RHnZYyb1lnY48WP/0Q/G2jNYx9kN33ADYvd4AQNUXHGatR6F8
	 T96z6kaJIsio3qtMXStu9HvQN6/T8+qmXhruY1mijkfy8onVMrOyRgR6y+K+gsNzgv
	 QYEcYwwDqg5mP2D92jHrlsDA1A9EdtOT4NZuKG7RGYs3X2x48wDRZ1ZtMKffeRrzkq
	 qcwhzuB9H7NZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9085FC61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174975899358.9127.3061513058134207407.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01d3dc1322983e03b763e042e00d57187c0f318e984466fc17a34cb33e111362
Date: Thu, 12 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749758993
