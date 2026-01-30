Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1311F2C11E6
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769778234; cv=none; b=tcOSRBxtRMuTs6UyO3S/a5zBixK5aefz48N2Y1OKV7Wv+QAeVEvJ+r27fXg7jY10O6twrdubnUn3PdfNiRSudrZaAvmxKKithgFbzNEQ58DzMTZLJjM+YxCkBjgBX2FzpemU5aGyODbNOOvlURwrzz6Bo0xswnWnZ3jRtvFwQSA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769778234; c=relaxed/simple;
	bh=UW59M8urjF+mQsQF3TWZ71KctHXuz64PYJ2l077E/ok=;
	h=To:Subject:From:Message-Id:Date; b=uqGdDJnzDUps78v3bKegcKDH3PMPiyAq+QPEfKQvVdIp2DpXmPqwaUqWcIyRwzI0caArAPThq6m0sg15Amcf/XoTJmqs7EVAUXKah4He+dxTP9YE4HGdc6MVKl1Sl0EZO2rOVqhHA4I4mefXjPeF3Ht1UMucbuiD/5Mdec4rgEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A9m5sHP+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A9m5sHP+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6520C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769778233;
	bh=UW59M8urjF+mQsQF3TWZ71KctHXuz64PYJ2l077E/ok=;
	h=To:Subject:From:Date:From;
	b=A9m5sHP+5KY9FGKXLa8AAHKKMzNFmEyJ1Yjs0P0hQrg+wqy2nJ/aYDkQMSHQAA8ll
	 pjg4TkGsywN54BIsD6yicttCITpfVHzVlEiO5f6tSWicxmaEhzzG8UQo8D8H4AyOzO
	 yYrHUNh0Ff7yGNw6FocQAIJHsvlSXtNHolWX+pSHlEy+ik6LfG0TYGQthjU8XNdjY8
	 yL5C7IWM4QEjUqLI9shcxaM4+9W/gBfGHG2pcneuSZUXAm6eGRQyTbeH4kAGM7qusn
	 Jj1EWWj3DF+UjcAkyT709nVFFRVAiLFkrcNXmm5ws5SzkTAcBomR0L1zGPVB44TwsX
	 x0zutdb1D8PZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F88E6BF0C
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 13:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176977823357.16788.12227508721183877233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9ac61ab555270239af30a298abfaac9076d53056d01262a8e1b09d1506b727f
Date: Fri, 30 Jan 2026 13:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769778233
