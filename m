Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08ADF14EC73
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768796034; cv=none; b=tHfYZpIVTI9v1EAfnpq8NpdWyDBfBqw159D+l5M4AnHQEK3UB8bZoKLylfSK8kQzjnwgAxW5REMtX6hR09Vkn7HnuPWSvEKN65cdGQNHZ3wzQCHcuxW8wHMyQRt7V6rXag8tJO7D3FyhEWqfNAGYYBz62fH8nU7pfHEsFTm2Dp4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768796034; c=relaxed/simple;
	bh=6r0NjEt/z9AEHD6qlQSmFwHXba24cXEHX9InhBph/mw=;
	h=To:Subject:From:Message-Id:Date; b=uC4MCQSrwpV+/GV/8cJaRfkl6jKTnJzzJ83+maoJeSYTwR1awDFUTszooVnKhe4l7fOYM7oYAyb/kVla98mMxStqmsfZLepMWa3e0Ob0e3G3wRYZsyc5RssDUlp9703CsicE0+XURro+pTAYi4ALbOodXyj0I6SYs8GOnSdA0ew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qd0hmys/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qd0hmys/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C63C116C6
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768796033;
	bh=6r0NjEt/z9AEHD6qlQSmFwHXba24cXEHX9InhBph/mw=;
	h=To:Subject:From:Date:From;
	b=qd0hmys/MHIH7ySTT1YUiDF45BV/0WdcOC3dk7p1bVfIOLmzO/3ITbJD+PwGetAFO
	 tTABo1x5fb4bfgu6roXc7gkBXsjZz/DDw8jmGn4jjh6aOqvfD2PL4iLL4/+HZbMN8O
	 d0jDueWU9+8tm/TfaR1RlZRWL8/HifqdlBrRNrKEU4dveGcbCz6/MDPJunZXgyaYPY
	 9zOIxWCzYgM/JH9RuPdz7a0bG7IGSIEU/o9KIFnPBvYyUka75M0CouBtGuAP7sXJge
	 OPEeTjMiV3ZGYiEnRPwb6OjuiMWv9bG1T8duTO4ZQHNbewgp22ZEDsGYIRUq18UWhK
	 69pLk89G4ttyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FEDDC98315
	for <ddprobe@lists.linux.dev>; Mon, 19 Jan 2026 04:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176879603358.16178.15305371353628937971.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5b3e9bfff96dba0a7e067f2315746588d332542dac737a0488a9276f40b82a27
Date: Mon, 19 Jan 2026 04:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768796033
