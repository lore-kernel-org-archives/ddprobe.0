Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCA013C689
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735245354; cv=none; b=IG0vdTUQnkINwWGqyNzlTda3R8aK4A85y8EXnp3S5ap2djZ6Iq8hcboNuUifNRhxlNQcSmftcDkmwWWMm9ypCzckudjIX3Q4mA77MD8CJcaJVdKG4bQrCU5MPIKIcsTxkF0if/rbaEsRidRVs4SC+N/4n4PtQEmlHe4LZEvpZ6Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735245354; c=relaxed/simple;
	bh=WDdTDt+sQf9qpkBREqreqAi2+KoisoW8obTUahYYlVI=;
	h=To:Subject:From:Message-Id:Date; b=ZqgOdbr3SeL4CnHWXU6O+cnW08T/NJZfGQKuRp95jkIk9TwZa59OywjK18tpLQyBQ1Uof309x0/9RHKoQF89T92dtCy4HqM7n0zJgsrTmnG4zOkCa8ASREWDBqtMOPs01Wj75DMX0HQhelRLgj4qSmya2O4485+O/OgmsSge2cg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jJokN7Av; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jJokN7Av"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B57AEC4CED1
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735245353;
	bh=WDdTDt+sQf9qpkBREqreqAi2+KoisoW8obTUahYYlVI=;
	h=To:Subject:From:Date:From;
	b=jJokN7AvJRIkC3BnPNcQ/LcnEGOQUM+SRNJANYuJLslOtIs9I/eZ/vef02+ujuyhU
	 1SP4nsAxKMmVxJLHKUFQAV3wO0Ae9zABvLeg1+Z5jPIL5amQZsWSpaf5hkgAHNnG7s
	 yUk5vqIkPYEvQbOGuVlW9UvTHXbAp2TVflyMZFL8kagOifqNeUzKgKN2w6i3ErOEcm
	 iqJM1AQ0Iv7FVdvWy4STzYeVE3QUyyE1H15eMPtPV99SGU+6TB4zdeceWu+gwPjM4K
	 Ig0dclNmUqbxh2nblLlQcvxj6h9rmxA2OMQiUhL7sZnfRMidUktx6PLYFjNYTXJd6f
	 8hZ1+AHIoXqEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E179E77188
	for <ddprobe@lists.linux.dev>; Thu, 26 Dec 2024 20:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173524535363.17250.5125542510428851414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f89490d9558ee0a2be758b157543d59225479d893a96f5e370e40600aab874f
Date: Thu, 26 Dec 2024 20:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735245353
