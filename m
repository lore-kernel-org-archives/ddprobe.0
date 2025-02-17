Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29648187848
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 17:08:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739812134; cv=none; b=XNBOJZOb9dVGVAU147MDFLz9hEd4KfWHl1evXdf1i6f6E1o5Mf7J59tEvjcU/lTU2GtrCcR4qO8GkoZCBLLR6b0+ox5KrFWs7KV6trqHyEpJhiyyRzEk4uOQeB30GOI7emXQgl+jm1/iJHUZEYYm0qY7F3kMx3dPlFSRo1l5C00=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739812134; c=relaxed/simple;
	bh=j5oaojGTPTkbIM2vuoU69Dx3A+KUKeGsA951JtcGVHg=;
	h=To:Subject:From:Message-Id:Date; b=brgpeteiy85tWmenTS9M31XONIRt/+rxfTUD1G22xhKLCIzC5MZTB91Aqq9QMaJ/JMEA5Y44D/v0YnrD5cZeo26hqI4eXuoTh3Q8H9ePJa9te6+saFBpH1GJzG0Z+7HxoS7z4Pspcnt55n0uzg7bt0RCvyTl46ljlrutaVr7CXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=vBdZTlZU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="vBdZTlZU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A21D3C4CEE4
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 17:08:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739812133;
	bh=j5oaojGTPTkbIM2vuoU69Dx3A+KUKeGsA951JtcGVHg=;
	h=To:Subject:From:Date:From;
	b=vBdZTlZU9VoSX3UlOL5j5z3ngb6udU47M60uXw66QJyZu6VeCWn8ynPIdLcFW6/Fr
	 Y93gKThX1oK6aQ4WXH0aGKvjW/fUZQHQT7ulL/NIuoQfCPWduK0V4/iGmmnP3LTx1q
	 jIe6V/BAkdQxfB9J/pYoLdl+LTYGn99zsm0cuLDcqMWPJQ640wrLCbnjUMp+Zp38Jc
	 icCulQEQ0lbhhlshCMX20vyuf93ojb9P+DQn9DjbRbP9q3ke10ms9f8LnmEZN8WPPx
	 Z+054/Aynf5qk7dRbVy4iIh3wMA5y9ER/p42lez80SVMO74L4PTByOULgPMvnwswH1
	 Ib7UDSRgWHkhw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91AD1C021AA
	for <ddprobe@lists.linux.dev>; Mon, 17 Feb 2025 17:08:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173981213358.6267.9381970744605326139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fff75fe4d227cac5734699872edc199d7cae11d41b77624c73eb4a641871c728
Date: Mon, 17 Feb 2025 17:08:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739812133
