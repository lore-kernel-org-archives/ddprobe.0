Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F0C6346796
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762373994; cv=none; b=CpwkE2Alj0uDAcIXtwiPANMllvNPAeQ0HwJIvZTlIPl1bBFhLFnb/m5oH1NeLQlwvsFTOAIQ5vQf3OZhvbcRjAfNJ7j7c+w6MsiG48qKl+caCwRLa6zTLJcOndpjI48r6gJzTSgC8bYiqlFxIN9zTBgHrFesabS8VH2OtsNLhus=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762373994; c=relaxed/simple;
	bh=DNS+KfWgsV8mtV8NWDyO0EfcVLga+dPyMHmIuxtoRxs=;
	h=To:Subject:From:Message-Id:Date; b=GPySY9lX7meNXc062sRo0NyZkDW1WiWJTtA/nn8Hrm2UI5BhUONfRLiLZjK3RJel4LikTPPfHcHQN3vsKZ8aZY+s44lEFGDYdPDp/8Co8S7ghoRpCTzjdKdiPBeTfc/XjOJmtpDhFTT1K8EHxrjljmBmP9PxaF0sC/alcWEik1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R8cKZGm+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R8cKZGm+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B77C0C2BCB0
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762373993;
	bh=DNS+KfWgsV8mtV8NWDyO0EfcVLga+dPyMHmIuxtoRxs=;
	h=To:Subject:From:Date:From;
	b=R8cKZGm+5ycdCqHKatAT70qzSUBvuiar6w2huqY6jps6im203js17EcuWCoD7OrMp
	 GlYYo0QZUiva42tLJKpjlH+stfwU8rlKLeTzyQg0ywQt37gCCyr1CDG+8iq5nKlA4J
	 V4FkPi09YAFZmLqGYWvtg18EblmNN+XJfxkZLXR71Kxt/UHIal7gbW54fKiO80Bw3X
	 Bw6yUAKrMZ8xmuN60w91pyPmkYUZhNgZJG2slSbWLNNF6aYnYeak5iPI2/8Iz4NXZR
	 lCYC0c30bORcpxqlQ+hh8c+zvVu0iSFmKs4MFPwUcJu+glWwXGRkfqMGeKxfUVzTDA
	 HUBjTTYss7a3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95226CCFA0D
	for <ddprobe@lists.linux.dev>; Wed,  5 Nov 2025 20:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176237399357.6691.10854172040713497876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4b31ff849dd61401a94c84e848fecb9201be71d8063e5a9ff473c926315a54cb
Date: Wed, 05 Nov 2025 20:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762373993
