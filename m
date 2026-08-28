Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 57FF815E5BB
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787883034; cv=none; b=jqkcsq42cYboKMLLUkAguC/DUESSPLtlVryafVzZXXU93o0nR1B777MrXXu2pyMZ36o8yoJ5QVDVq12feS2LtN2avrBE/ecBM0dh73O/Jte86U1U/b5J0/mHDojFFeJxObjgMlxME0jJhDBy6tYlq7VCoL89EXkyC2Ib3LhAhR8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787883034; c=relaxed/simple;
	bh=xBD4UIzw4BX54MoqO7/s8M+PN7O8YyZfsFWqefQk7B4=;
	h=To:Subject:From:Message-Id:Date; b=WJd4TUzrzI3/brN4/kiE2gVceRcXhxrZEAGieJJGMu/zzEu0ohCJSDInSyd8G20OatHkAm5m1czj1j182AFEfrfRRe4sEOBdjmOQWS6YzSedwt5V90n7mrmYlMid3Cc7W1rxkSe1SnaBrNnca8bMTKpSZfiNN1Rqiq7a6hm9P6Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j6gVXJf7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j6gVXJf7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD9E2C19425
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787883033;
	bh=xBD4UIzw4BX54MoqO7/s8M+PN7O8YyZfsFWqefQk7B4=;
	h=To:Subject:From:Date:From;
	b=j6gVXJf7DCOOu6gNovAD1Fj0+79gcWPf4xn+mlwgfFJGqGWx2+lDpOBbDV9e/AMZc
	 oTGZwVMmwfer5fY6RpRTtbjNDwxlps/tIANZYKLAqWEOw7g3Yl548j0hmW/OXdBbOH
	 cvhkQ/JTzX1Zl8PQ2CJgo5IRyAs77+UGxtOVj2dGgIVBFjwSZcx9Ec5AA1MjevzT7d
	 rjsxxFbPWh9BHpyQem3aXmMctauSoKVSBv6ObXxCbFgvDAYhtWiPutuWom73AuPLmS
	 5AzNQ4BJvC0atF1i5/qgBKOVlG4RhA1sbSjD+bU7nxSkhAi80rj4jcGCj0lGBVNRsJ
	 keCHetYOIWN6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA04EC61DC4
	for <ddprobe@lists.linux.dev>; Fri, 28 Aug 2026 02:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178788303368.4287.5681842220082846865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 965baf0f6a5a96d88f1c8990f695f3d2e71efd0be020440848c8e6d22ef2435b
Date: Fri, 28 Aug 2026 02:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787883033
