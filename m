Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1201F1E7C12
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772383494; cv=none; b=UrF/9Cc4DaWiLxjCLKnJiNOfMpAKg6r84f9pMoFpc3UEHfb2gLRSgRsAnf3EFHfvJQtlajq/7VyaiQ9XDgRlsh5mpGe7CAnowMRg4ZvpdVJ+GCO4GmcrFhvE+7BA49H6h6F8eYKkt5+ED3rMEeDU9kNEH3IrNRvx7FW6zWk9F1I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772383494; c=relaxed/simple;
	bh=ap6wHrF3y8IrTGVbzmeIpWQaFAUaqDU5iIaCUI4eFog=;
	h=To:Subject:From:Message-Id:Date; b=sumRcFPCmiaeiSpjDCdyhw7l6VfZBsYBVHQ6jlWcskqAeCAt6/pxqMxFiTXV9ST7IcXwk+BbHj9CW/JHaJCouqwy372MzKuX397kELpY0tDGXvMfAFPkNRE4fBWxT+rNAJxpx2nKNVy+DpJVp0zbdEKR9Rlb0uwbaF8xyWRRgNc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NlAjjoNx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NlAjjoNx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95C1C116C6
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772383493;
	bh=ap6wHrF3y8IrTGVbzmeIpWQaFAUaqDU5iIaCUI4eFog=;
	h=To:Subject:From:Date:From;
	b=NlAjjoNxCx9lCORyinVScWEIjFzdJYQJtrnqz7fZarj4wbgoPcfhcziD8E75+iy/n
	 TvQkMhM/UJK1sJltI+7YpCxET1MLsFxYAWLsMq0k+Lgheh3VoE+UTsyM8J2RpMD8v8
	 /ClCrmYTtXOHCHgb4HJyT6p2vBGnSYZjx+0lhHkFvdopqFxvQtuEGoISsTzbuEiQ2C
	 eJEJUsCV96jAjsZG7Z90JzHxzucM26owdpaw47ZQQzKYT9S3Wb16MlLKU2ur/4xZbf
	 gL8pCUxHZByEZlFZ9GsABUQYCqHGR4VoRaE/uKh8IleXEg643h6NZ6A7Pc/6GZ20Dn
	 p3nLKFIuj7YyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DC5FD0058
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 16:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177238349359.23594.1666721843373709309.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1188c01b59921ccec759474aaf69f3698c0f4cba75f3730b09d93a208cccf5
Date: Sun, 01 Mar 2026 16:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772383493
