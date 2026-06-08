Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B9771D6BB
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:04:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780891474; cv=none; b=YhZZOnLPplzvYLUakSJac/4AdB8nzvrmKYKCoSFzuNrnbb/MvUxLqAMSE+AJMmymL2Zrybvl1Jo+EdIJlGVkZAGfD8KnmJkX2weeOBeIjVWV53ZXUl9XK2EC/ElWNlkrIir9Jftxy3vgdeXxr64w9D2FevxoH4mF8+PqzUrqLBA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780891474; c=relaxed/simple;
	bh=58IZL6uXrljCgTf7NSYQpBp3N6WIo+vuW9N6FBkSI/g=;
	h=To:Subject:From:Message-Id:Date; b=eoLiF7QlaunYtMDiO/xWvTzNlENYC5uYlh5O01TFWpOXJ+xQ1m4pF+0HiRv8AFyiq5ROwia/m5ObYIsAVRzsJay2et31OFzx5QTkI4OBXIwiFxXMso+jIv6egWX5qJeGQbp3uoTKlWgBsfuaGX6aMHKR+d3+6mo8PmPBEsNjKDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W+wvBO8k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W+wvBO8k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7069C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780891473;
	bh=58IZL6uXrljCgTf7NSYQpBp3N6WIo+vuW9N6FBkSI/g=;
	h=To:Subject:From:Date:From;
	b=W+wvBO8k9HhNwEGI/2ohSDWnkpPSqq48EKr5XhuOA9Horhwc3I9R6H7+y9NxnHzvM
	 SHLWtdeBsmjuQyIuT/fu6aPhDhExf7V9OGA2GKnt1IbujDvZFEzhNaXl48c3gVFdcP
	 ph+XS8iBWs/GG7OBm2ynQvucnYPXiCnB8vPmxBUF4++Lu6IBAkTv7w5WOTSeKN42wT
	 Ajz5CbaTdrjFTWqECWz53mJ1bFS1FjhXHFl2t5wMPSNUhFb5GlHC2uvTUMxtXAmB9E
	 b6BS9IBZtmte2LsaalaR5lbc7N19hIqjFGYi41HsWn+hQb+ffZmMFzf4T7MR5pqcZf
	 d/9+dBye28qcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB703CD8C92
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 04:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178089147368.8708.10680536367539325190.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 13f3aa494a59d6115a70ca14715ab414e2b1d7cda9c9bf20718df1eea8195dba
Date: Mon, 08 Jun 2026 04:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780891473
