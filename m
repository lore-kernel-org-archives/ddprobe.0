Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27428189906
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766351034; cv=none; b=mqbd0QUY5QVT7TsufqwANGSC0cfZRdJmf7gJeX4oxU6N9ALcUttiaiot5dPzoYCb1h7zuGJvW0fGdRhIjOYf1S/l68t/ZBMinr3zShxQTAtsiDz+JLiRjk4NBkzbmksR9DXoyI5nF0QQHssnjvHzQ3EFjDdreV/lZ+cnnTFUtkk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766351034; c=relaxed/simple;
	bh=YwI7GUuzsibLa7NOvDHkiXbanlNQFkVQPUY3Sm5dve0=;
	h=To:Subject:From:Message-Id:Date; b=c2eZK64GLkxuszbV/2S0G6Jg3OVdL6bN6guLP5eSOtDSihyL2NT8/8jnH/kl7hgc1hF+gcEv5ka8g5LaO1U+ThlH7eeQ/gqLSjStiMhnkkrk4Zb3BoDLjZqQwWL5rYbpIF/IJhAGiicpKLttgMUjwQSs3LFu9F+5ap3xYrD0szM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Uxhsg3ie; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Uxhsg3ie"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC3BCC4CEFB
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766351033;
	bh=YwI7GUuzsibLa7NOvDHkiXbanlNQFkVQPUY3Sm5dve0=;
	h=To:Subject:From:Date:From;
	b=Uxhsg3iep0rSy3E76WTJtKgTMRLSlm+jOttmGUqDutUCoJ2j4r2R6Prwlvgr1l2Du
	 Am4al+/aCVxc+dgyOCk8Yx0/LbjAoeLN7HVnZJZR1QmUYz9ONWuVXOJHePBcwnFAm1
	 rx3ZGlbNt1Cesm8rtx6bxV7aZ1wcV8uEGPolgRN5+sm2RKrtrfYgyeOOpMyWmDK+Td
	 qHbp+Se3Jp4Ktu+itbelglYx55fr0JdE5c4rZVCXPx5O5qnIm3lLjSoDzRRrekSD3R
	 tFb6ZiVOQrIL0n6gaLpYzKiNUFfl/pFZ4IQKFYWg4vD0M+0OuOER7JDU/YlYjiSJmZ
	 8lxCLY5K49Wog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97E34E66886
	for <ddprobe@lists.linux.dev>; Sun, 21 Dec 2025 21:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176635103359.11381.7196822125731590833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad740da3870daac30e1a8be15e1d1c3499946b12934cae7101fee250dc066bf0
Date: Sun, 21 Dec 2025 21:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766351033
