Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CF138AC65
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784825434; cv=none; b=XIIbaPYj2+pr0ZtK1eqxs5DeN6si4OfKt+dkODapGtQgCvTA/wDWZUO8EVTeUxqcCjjstcTTeXyFKBEtC9a93di9uPcGTlNRT1rjxmsGMS+/nbG2jnxsuvwxbC+kZdjwgTfBOM2QK+NYBWwa4v3KlgNsCi5xm2afi3jmS5uLM+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784825434; c=relaxed/simple;
	bh=o8xjDD8BEIF805PQZVUfIBUx40yxz35W6P1n+E9xBFU=;
	h=To:Subject:From:Message-Id:Date; b=Msjv78zoCCAEZvwgoE0/uRluAvvQfcPsRFIExTxVBQdhdPJP6l1oXDRN8tJI20CRoZbYQC2lbTOJnlBei5wMfbmZPDVTorXNGkR3q6z9VUZieaboLk0SsjXh9o8gZjJkxZeYN3BnU+/kXhOM607UxSQCws9R0lQedLSibQtAHNw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WwnQxxad; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WwnQxxad"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31FDC2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784825433;
	bh=o8xjDD8BEIF805PQZVUfIBUx40yxz35W6P1n+E9xBFU=;
	h=To:Subject:From:Date:From;
	b=WwnQxxadcgthfzN5QysDG7mJ1qe2tgxipTUwokC3YUoiJb0r+L14NpHVm9VF0s0mD
	 U196XgkW89+W1r3MilbJpSj5lSX8P5DP1RXNWACyXrSkcONbBZSQpTKYXWiKNf6RtP
	 rjaFlkC+TmqdRWRyqkNmRYFNsN2j9pBFcFQFd4RM7CtlL5hIMZ3Ejl4IRcGoQo1/vV
	 fJY+AF3thge93DTeSNG5EEqCEhNJ842Lsd6rXgbT411cYSGFFXJn0MIQQBaPDz9/VD
	 KXpzbUkzk6XYiAbZbZx96HFD/gE44bfCw8aHh1PhUjDzgKFA2E82/PZTNQYz7NOXLM
	 PjYNzTuxiIKNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE4BEC531F8
	for <ddprobe@lists.linux.dev>; Thu, 23 Jul 2026 16:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178482543369.8149.9919061022586760617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e39e8a07f4cef746f26656cb03574cddaee8c8942887fb6a2c9ad8139849097d
Date: Thu, 23 Jul 2026 16:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784825433
