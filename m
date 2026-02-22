Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2810B15B0EC
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771740294; cv=none; b=k/MJCMzdwA+yG5mHEIwo/SjrUrdLL3WvUFmOlTZpFJr2ZCQHgEM16GxnNfHk4L6ZwQzFlVO7FhuiY6RWESlnPUNKXz0e3BpGB6luPc0rLA+c2UDbHUVkcy7AYeZdVR0tbxW8sZX5bRIDHy78LejJCHHB9snbgC6eZYUxSPlqZ7A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771740294; c=relaxed/simple;
	bh=1hflDR3EB4yrKOaijZcOlszbts6YSuh+NF5CiANzAo0=;
	h=To:Subject:From:Message-Id:Date; b=o84SIDw84Y0gBAzbGpP0yKgBtaubXaniod/Qd7hg23WfQBvtbiFD8Ab0WqPt6uQ7h2qylQUaaAxranuDtGOZWFh5lHn2rW87TkQfKww5nnqyKw4JobwV0IclbLO8ysqEsqpJ9lPyyZ2f/OmB6FMc42QwSNWb9QRGAv5ttNgxAdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cugdyVS1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cugdyVS1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18E5C116D0
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771740293;
	bh=1hflDR3EB4yrKOaijZcOlszbts6YSuh+NF5CiANzAo0=;
	h=To:Subject:From:Date:From;
	b=cugdyVS1iidoB5RGEq0OmAT4+l8w2YfwnRfcAZuQJqBQ2+/0rD31PuyWgj/Mj6jRG
	 ocWJ6GCcNRdZQmUEwwQcS0A1sz8RqteG4nHtKGJINrziRa67Albr9swFfaAKLzv239
	 zceE0R3hiQ3KBg2ABazHIwnXm0Tj4I0FGpfKGPGalG0EmNNBuNCczDAWFES+O2j0UN
	 M9lNQt74hTWA9k2UZGmCkgQaEzAmqdseCwGAE5MoV+fPHyPNIOwHN2VYrwRMtTCxkM
	 258gxKS+5lRXnSGGRS1uUJW3kaPzGVIgWpppUR2PCwyv2DzLPKIzthPnja3KPbxUtr
	 CL4Q33hdkGvnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2074C61DFF
	for <ddprobe@lists.linux.dev>; Sun, 22 Feb 2026 06:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177174029362.23968.13135984240024548595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 495075bb47d572c56b70b7f0d36a98920a97b92482678056ba57021b3955d228
Date: Sun, 22 Feb 2026 06:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771740293
