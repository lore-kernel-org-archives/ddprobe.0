Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3B0265623
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758878394; cv=none; b=c1g7Np+uM8m+jHZm6owNKFNd/3zi3gft8g+lPixsu8WF1yHChjVfp8O6F66e08JAplCVdNSCWUL8zDGygQZ2/NfwUmMXWcALPiYbgjG+JLaR+ew7n0Ha3AJUIJyAwCSHrFqDFl7t1DyUkVVz19pWadAKAoItA8UusaLHQcV+toc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758878394; c=relaxed/simple;
	bh=ExFZ5jvhNFROfOMMof7sJTTScUHMRRrUWdllvwUuGzw=;
	h=To:Subject:From:Message-Id:Date; b=GeX4Niz/9j0YcohyaXg3YbTHasicGnlQMm7UiBNsJ2SWYuD70js3aBTu/Ui64ctLjS1kQj+LHBsL0jVpMr+4YD17/cNqRaC1YfoCdO7NUZwfKTHow6DIyL2Y/jpeXcaEkTvUSJty+ZVCVqipkkzWAdX21mL8Fiy5I3VcKBGBEsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iLq86nMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iLq86nMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FA72C4CEF5
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758878393;
	bh=ExFZ5jvhNFROfOMMof7sJTTScUHMRRrUWdllvwUuGzw=;
	h=To:Subject:From:Date:From;
	b=iLq86nMQ5Jw0sPMq2wmvxKQ73KsP4poE33kLOcpMEyUWLMbXZxjHPO3mWUwP/+Xp7
	 5QABTfFJLzQtIji/oZnef/FpmCwxNwF2N/Sn3qsSkUdZ7/JO/GtaMS1u5uhXllMgw2
	 aLcIIoyheWgt8//KPrdGb24OLqQCSjvOt2EMf0WQdjgE2xJj3SVwEvjP8U1BZqwQty
	 yC8x2BINhJUEWbhCmIhtn0oshcxdd9QfSKI8V3WbQVKDh4LYt4E1JC68ZykFvA/+Eq
	 bafvaDmLPKbKrN+kenxi7EVPnxlz1Ea19ujryMRRA8IlTNoUeIINTQlgTIxMaFubg/
	 /yCLOS6VTNbbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EFA3CAC5AE
	for <ddprobe@lists.linux.dev>; Fri, 26 Sep 2025 09:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175887839357.28746.35671149657493760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 214092e2a59a99203f42ef19540d0f022a84e6f1663b124330ded528f05bfab2
Date: Fri, 26 Sep 2025 09:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758878393
