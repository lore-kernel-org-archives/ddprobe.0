Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F7121C3F0C
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755686996; cv=none; b=OyT/2mkbMYXG1afe/iWQlAYjn5mtvb+9xIl7O3nH61pa+zqXJ12fXZTaHisCsyXwXwoWBuxCOGbnaOj6480UcsKsawlH4NuHYRbEt7yUo5U1qcqYTAG1hO5XumZRLO82hCQqOcSbnUrm3br6cZ9xcUywY6XkK3Ebbu+4KN8Cmwk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755686996; c=relaxed/simple;
	bh=Om2j1dLMXpRAq0aHaqaA6ZRZFJdn6moXZuRXThzs8aQ=;
	h=To:Subject:From:Message-Id:Date; b=AGCRZ2iBpkttbrhdtUkO0d08wLOGJ+fz4HrUBy1xKX9uIgScW4j/tXrysdJ105kKLk4twSDM7FRuwAgLHLAN/uKN/VFaCreJbeS4t0N0FtjzVkx7t1w23isfTK+gEu/qUZTYmJuV3OmzjkvYbKXfn3tXY2DbXchu7DIIhSyP6Fg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R5lZsRz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R5lZsRz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D86FC4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755686993;
	bh=Om2j1dLMXpRAq0aHaqaA6ZRZFJdn6moXZuRXThzs8aQ=;
	h=To:Subject:From:Date:From;
	b=R5lZsRz7Ibm6FSu5iapzJO22ovvNKufRjYecnpJg0nsARBRJY2B2t813rD2phCgeO
	 1I0WXg5BLdsN73z+Y8qxGNEFGiTDyDpbjNzSTIcc6lm4cefhYZFyUNjJaOIf7kWQG3
	 q8OHfcfBHsOUP2KTYYrbPVGbOt/7wJDIPfo8CQ39nkamBQAbsaL5qs0lQMW+Upe3bo
	 EAJ//mjpqJDl94TJKi2LoUkR2hlq70oVcvIxzIK3u5HJRNfaFTO3GcG0H7bvAEwvPy
	 8CgsAMM1aQ1ajT2DVDhLpra+pjSaJIy9qFtU4mRnus43z6PecVBr14SDPuscaEGXYg
	 0gzXkP0I9jCrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F8CFCA0EDC
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175568699358.11726.16919782350708589000.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8401f8a263f801f43eb67eb50933f93d4803aa0b95383a8370b65c67873d886
Date: Wed, 20 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755686993
