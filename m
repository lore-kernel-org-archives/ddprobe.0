Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E57632AE84
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742571594; cv=none; b=Gx0cDPgR5Rl9Dp+okvgTOMXxHcNO7o56hHvQkTp9i86mMPADCLagePNQ9u9BxqpNQ3daJbFVCbivr5ug+6LHKGq4H2KT/bwhVqbmHgrVYey9/AFPwvl5Zc1wAoZBu+zPRV4ikJrXw/qu4odvUsKfuKySqADrM/BF/e3P+aEBL7o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742571594; c=relaxed/simple;
	bh=nKjeHFU8i5HeeRBWx085J1HnhvgY2v7a94cLvea/ATQ=;
	h=To:Subject:From:Message-Id:Date; b=BbOWDukS0N6euWG1GJTjusvBTyFM2Msupx/8KBWoKE/4t5cABEeqTNhBcKJsadrn5qS3mKjlom9XZmZqak6WrzjlJDdu+a/qWatP5o+aUB7OyOxdqZVUTJ7Aqdl/k37Ia+rBEO/XJAABv76doGExP8mqaFvqOxzFpHpKeSu+dPU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nxw3/AIt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nxw3/AIt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB226C4CEE3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742571593;
	bh=nKjeHFU8i5HeeRBWx085J1HnhvgY2v7a94cLvea/ATQ=;
	h=To:Subject:From:Date:From;
	b=nxw3/AItVsnbDfOIbriNTXoRsKkxxkbAuQP0DkAoAhaJJCba2BA/35rwLf3Pk2b1J
	 o0qJkhzxkSTdhATkjyf3SC/9F39Jyrf98nY4aIuOa/nAy0RTwaHcsSZXrxV+d7NFyQ
	 N4R42CAEqaEBp0+TQoDbwbSJe2INaq7f7RgiHXcVFAOcwyBK1derm3EPo96ueSIdOf
	 4BSJcPJ7PfvEuQyN/Dt01ZSesTfRdgJaxrupOWudu3wqR0FUtYz89w62KLYwlCYwys
	 lDsm8ppy8xjX807dx691mgvH4ozPFu6mrvSQzbf3dTgBVF5pM7I1mqpfcTUwZ4PfuQ
	 lcoCsgP+GtzTw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5146C36000
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174257159365.25124.204635930740905816.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc76e60813a121053e0ba1678e9846feb8bdaaa0edb93a3a41a0db3311897b80
Date: Fri, 21 Mar 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742571593
