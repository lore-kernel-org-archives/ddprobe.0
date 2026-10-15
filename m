Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E0B34825D4
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792099234; cv=none; b=IvMRkBxjk9mto8DTlA/+jfW9vFhcyJW5DEabfrtBByz9wBwZ5B5MNTpmKrxczLNSnl3909OOY9cPCLfUcUQyYgzKBhYoMW3P5hvVeNpvVgRYuKvPi+06GV8eUFDLehF+y/zysHPWFCwFjvZNSbb/8Z4+SvfrewdY6sf/NoBFDCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792099234; c=relaxed/simple;
	bh=Vj+RJu/3tAHMARlgcaQtIrP9ZaT9wwUB36YIGPWwrP0=;
	h=To:Subject:From:Message-Id:Date; b=bc7kxNiF8P0eKU6oqBPCYxZhyXDWn7NAld6kllNGcN9G4yUQJLs3AOSMOwHt0V1CQj/Fa4kxUExPcq5Ih9rTDVz5oQLrvMzn4sqOwa4oAdZqEE7IjM0bE/CIRqMJAxCz4d8k9BETIcX2Wa5q5G/1CsXTgyZBn7snwinhu9hhX30=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HbP552U0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HbP552U0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3BC8C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792099233;
	bh=Vj+RJu/3tAHMARlgcaQtIrP9ZaT9wwUB36YIGPWwrP0=;
	h=To:Subject:From:Date:From;
	b=HbP552U0I3YD+VF4y5sJ31bdt73jdg+fM6IXlLQbXK8x2PR04hVh6KpYFLjpxrO5v
	 WzNUD2Otmt9sXzy9OIlxLTzogUb55gQ4Vj1HOdWh0Z2Q0Mbl4pH8wRM/trL5RVIHy5
	 JCg9sPgHJ6bh2l/TE3g/QnUTPEa+LNtPckKB+BKPtyvUynHInKkLQQN6SNvZ0udCY/
	 JIW0cEd0v/ATC7q7ob/kUvQA4aoyMCEpO4CWOYrr8FEK8T2MZCdwcLgaRTUhBfA+QV
	 Lh/Mc0VrCldo/zW8J/8jwcidDRF0W2pQM9nt0zU11vVAKq+rhJg8wqKtNwXJ/JiSSy
	 uaQQgf+zEpX5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B08A6CCA462
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 21:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179209923368.11939.5319368619536472067.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 35229988d60c34401e3d4160b34b0291887a4caa3ee45fcee93f56d827fab327
Date: Thu, 15 Oct 2026 21:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792099233
