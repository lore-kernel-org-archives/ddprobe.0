Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380F1213220
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749076795; cv=none; b=TQir4JeziWcf9ySXGueghkI+Lp9vYrtQy21aeChKfvFRuq7nvFtsxOwQ60EqKWRIjCA8m3lQX5xCcNiC7pjwpYwccbfQrUaPOM0CJ79pArhf2/0F+Yl7fnaQRqb1pEc5LDGffCFpZEFnPt36PF3vRNsP8ZQCh6ufRiO2v1iD8qw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749076795; c=relaxed/simple;
	bh=NjV3LpzL3Mk30R5DEMWzH9lAbffa4x4mwm93eeQVToA=;
	h=To:Subject:From:Message-Id:Date; b=UFxAuWTfOtN12+fIICPCnlI8Uwl/3RpozzdwDD49raBjPUGdMuJupI2C4i9qnqhklqiBzX1IlHuknakm/FHNKzzorrk5S1DOjrQ0YZuw12qCNzqc9jDW/bKOwO+7/pCUxXE45K1RqcHUIPY+M56gAPniuUjjn8Ktm7H9aVUos3w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rHHT4wDA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rHHT4wDA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EEEC4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749076793;
	bh=NjV3LpzL3Mk30R5DEMWzH9lAbffa4x4mwm93eeQVToA=;
	h=To:Subject:From:Date:From;
	b=rHHT4wDA4/lQx1Nqcm0GwtXJddQTtFEAoxDVf0I6WfMoD5FqUY9d9BVkJOYK69wNY
	 ah7uo3DMDyoMNcCoyC3VmYuGXfXaiu0gC+dAh0Un/U0giouxrIi24MI3s+EEG7mQKf
	 Kx3R8ILKZZkmPG72GhHy/TFQP70ssrTu0zZM0xSIar+WJUFXt2p7yIVKSk8AdMI4U5
	 skZl8IGpEXJRPloTLiFMT5u6exhcovbyqk+cTHyEwHJ2nzY8MHiI2PD7rX3NIOMamD
	 iPZZSr+zVud6F7vQcGggF7jFN6SBnSdDAllOckHokVG3T1GLthpL4I7V/T06GryR4f
	 7tTEApUAKrTHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92398C5B543
	for <ddprobe@lists.linux.dev>; Wed,  4 Jun 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174907679357.27238.7048203379105769666.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e167ba8a014a4be5c1f4d0bd13c5ef0e93293c92a7dc76a003d16a8d7e35da33
Date: Wed, 04 Jun 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749076793
