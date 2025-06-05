Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4624128E17
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749163794; cv=none; b=WWdBTOlUYFevcW0gYq+27sUO+3ob1yn0eH4+eX3s2oMmqC0WKnQhRfv5iuTDEna+JXs56HOOsxu3nUAalDKI+OXqZHjfduTy5D630lhvuF9bIbiWaGBt7iFb59ck2HdRn78muFsfh8e5Fj7j0RD8zRu1aNg7+mdsv5D6CQZvZuI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749163794; c=relaxed/simple;
	bh=C2FXWJujm3MHviE138oK5M4ukdyxmm1V32KrJEUuyGI=;
	h=To:Subject:From:Message-Id:Date; b=C+u7tgUROlt2/jgHB/sJ2okUlqO0zoh64Yc1c2B1GiWe+/GPGIKfbwODl1Xq5HylVcIVkDKrhG6K6o804qb1MknXqxwdXpqL4zDM6QTL0lmmJF1DBtb7xwlf/dHC6wWB1OaFv9OpaCsf+DzPiiU18FPQuKK8KBLd6jKZz1WWUno=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=swzCe+7g; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="swzCe+7g"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B83CAC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749163793;
	bh=C2FXWJujm3MHviE138oK5M4ukdyxmm1V32KrJEUuyGI=;
	h=To:Subject:From:Date:From;
	b=swzCe+7g/lfn+E/84VqTW+ESULAHQp3zMNy1niA9wSzYm02yOHo9a89nzml3jJ6eI
	 6DTkDh1iig9SPqivzI2AChdKXHvzWuATLRkqmWEQw1BeogQYkCqur8bzwIIDGl7bsS
	 BI9OjkLCylXyY7PbI8/Uh6YOJv4/UY0/yyjLZxvI5m+BeRFRLzyIFstJsJaDWWK573
	 PTtnDVx+8r3dmFkfpyW3eOIsPObdCbjr0t30Y4oT6gaItBIDfWXbthIe2jWB5j/chl
	 ofVC6M7hGQqXdyhk+wjZND91sBTmgEjHFjKel8VDQF53AqWVfLRHnSMfpC/C2Xrt/S
	 bck6mXfv39MbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 911E4C5B543
	for <ddprobe@lists.linux.dev>; Thu,  5 Jun 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174916379358.13423.17353270844255122576.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7013752043bfb21cb61fd05fad25c2378a8ef7c175607b3ac6f8da18d435584e
Date: Thu, 05 Jun 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749163793
