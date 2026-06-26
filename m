Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6008F1FF1B5
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:07:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782443254; cv=none; b=TVpYlmvr3preACKaGUAy7+J7ccK/a5+H3yRqnsTNoo3Pc+48GLGCjrMehsYlETvejzRBzLwE68uclhDvQoQzH4ETB7oa0C2Ib68QEFCgsqMhh3B2DI99MtJO7OmhpCsOKoNP7kBwCnVUyig9+0q9F+DUq/8T6rUohr1isDHYP6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782443254; c=relaxed/simple;
	bh=thc9PI4ssPrZETUYfm7D//bcGXbxppyhsDzPxjL4lII=;
	h=To:Subject:From:Message-Id:Date; b=Nac4fypfXZkQbIDjRbrgXsOXwQuIWHFbkk7n8uILRCCbxSHNATkSzWggouD1cslrL7aHMmJZbWKt46kLAdl74EFbxGiQFuo2BQTDkpuo2xPP9toYwgaW+KkBW5keR873LdMyGlsLVabMoGRfutIHVccBfLS3e4ohD3xRs2DQgks=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QP+BgCec; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QP+BgCec"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0ECAC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782443253;
	bh=thc9PI4ssPrZETUYfm7D//bcGXbxppyhsDzPxjL4lII=;
	h=To:Subject:From:Date:From;
	b=QP+BgCeciUW5HH/aJSFMnd1EeFFZqoqxvLKF2d0gYSKG67gIZY8jRvipKOYLk1TdP
	 EHsn+lN41rw9aX/AiMNPDnUFV0vw6A4u87Pe7LDvR1O4G1BiHHcDEoXaG8kq0HaP0C
	 8CNXIPd35ICN4mxC15mCI9Sb4E14y4zCmsAh/mQeQksLQyFi6ij4osDVYJjQtNYlWL
	 LAGZCJlgrgphxVwE3VEWQJs4cUyMg3UwZkAYojF7VP8BEjXSfilDEtSh9ZUJUBa42y
	 jtCdegQ3BlHt3bjbKFpv6jXByyBcR1G2FxGRh8rXiLftiEuy93a21yngu2E6opcAlP
	 Avi7QuXD7Dniw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA88DCDE00B
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 03:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178244325371.14911.1640654536028509489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e0f324ac96f3d0c66277688678f45447e025ceeefaa675991c3f7394d84855ec
Date: Fri, 26 Jun 2026 03:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782443253
