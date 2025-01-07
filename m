Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 275A31DDC2D
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736252154; cv=none; b=OUE9OEnJf3Mzec7xUAWi5eR+kg/IcMDpugKrr6uyDB0wCQ5AEXdb15A56GhCvIRIwHM//X75sUNsWO106fFtMZoGKpp8/Njb2cx6A2OP6pkTPgn7aDpL1M3PPZtDYYqxnA2U24mnUsihXoIaDqr/u/olhqvO2J545z3+CSb755E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736252154; c=relaxed/simple;
	bh=0xbLSU+lvcYXCfFqdnl9bcOm9A/LhPABmt6TXvZM7PM=;
	h=To:Subject:From:Message-Id:Date; b=aMPn36KLKwi3FRHy9SOpMB3l2jQSg5VJyvSr1AVL+q/oK1kam+T4y1JgAug7anGyS49t6KaBVqteTegU2J0CbnPLoTgASM1bxZ5M2mkyjwp0wA6FIsl7dA5m2jfl8keGpL2odMcR96BPetZqF0UAFPMtf0vruOp9oBPed36XoBc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kErk4+W9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kErk4+W9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B221FC4CED6
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736252153;
	bh=0xbLSU+lvcYXCfFqdnl9bcOm9A/LhPABmt6TXvZM7PM=;
	h=To:Subject:From:Date:From;
	b=kErk4+W9bt25rv1nN+IZd4nx4NDIaAbNHXxWO+o4b7sAzWpi+WCqwtdCV6RIHzgOv
	 ZZmiPsyi2t/habBm+x4ECCoKwRYp1TQQSjK+uZjaL4EuRw4c1AidfcKJMCzEuFrbGn
	 Z3AYv7KsY6d0y3soNmyRmsRR/9Nb+Uf8pnzaQ8O5EJghgaBg4NBfLK0AntZsxoLmq+
	 w1e237fdPfyACev4Vh5P7W49/Ag4v5z9gIylaLwSBuAWjqO+kO/KswB3FuB4VxH1AT
	 INnFkNidzTVpvfXqKnnwakVqKuxSu7q//tnrupWqB80ueQuLG+5z00+bvjHVGvTq9k
	 OtnbltYMp0IKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A8CFE77197
	for <ddprobe@lists.linux.dev>; Tue,  7 Jan 2025 12:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173625215362.20993.10116748370726295280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f60689e76554ceb3cfba604432dfb2da62323c561505fd7fa641ededfddbf49
Date: Tue, 07 Jan 2025 12:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736252153
