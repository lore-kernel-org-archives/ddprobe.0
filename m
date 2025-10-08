Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A1142882AC
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759885194; cv=none; b=A/D6bwCpXdOBOitw+kwBePt2ijhklGY/yC8uAsEff4Wt6nvLw9lgct5MaZ3RJ61YCUAr+SCjZeUApbW8YL53NibrEq+/N0+ayBPfGPEpghXZ3skta+TcuHTyWEIgvieTwcKiPpEiQFOaXBw4PXAQgVi9j7EYcYW1PJxJRgtl0a0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759885194; c=relaxed/simple;
	bh=e4vSU16cOJAxnY6pSa1tqNnzuPkdWUJkNajFHt0uNis=;
	h=To:Subject:From:Message-Id:Date; b=AyLGyTP2jTXsLvK6los69Vpf4xTendrRYOMkRv5vDksP94Grxb6xswwHXwJHSj4vUE4y99txBrt+jK4qz081+JM+oMQJOFYNaQpw6Hdd/hAPl8tzLkHAzP/qGgodgbO/f+CHBmJmt5vCaEqEuTLHNttCkpYm+AVr6+/0/cVoV8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mDxiFJGL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mDxiFJGL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A584EC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759885193;
	bh=e4vSU16cOJAxnY6pSa1tqNnzuPkdWUJkNajFHt0uNis=;
	h=To:Subject:From:Date:From;
	b=mDxiFJGLiVWGg31aqAtYlHc72RioxIWxTRolEhyq407BDXpuYJT7y8LygfqavcVqE
	 Y33JW0jnlke4lGAj0kd/4Wyuz1TFChjqgnUSlv2lH19GplloIW4rkBM4943X/7oQgq
	 iKm4bg9shI4Ri5rd4UKy+vrWA1j9uLR1EbXkJoy4oN6YQz6XMr17fd9LGMBYLqIK72
	 aXRdnVoRkqwc/NKhe3vP8zOgXtZxDJ1B2fm5q2HyfhIZ7znBKXMJm8LxQ20RamMMDL
	 u72rpzMKBYmJB28DaxFB1xDYsoHfnnkDz1R3bfBma8Nwfg7BZ/UFAZ+vQkkm+aMMve
	 Vnxk1922lHVIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F331CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175988519357.10809.453303365319130029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a6811638ac36f73c9473206f390a7726637b6d34310625304b20199ad88c32e2
Date: Wed, 08 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759885193
