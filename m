Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16A81411F9F
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:30:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786491034; cv=none; b=q+3EaBZ+1YeyeIGXfElwv5ROUWqFf3W5eA4u7qq/eTLEYbPzshA6R43Xr/mgRmpPzQRIQ4WcMlriKBHQ8uw2BImLteyd2vGDn99wjEf6NR7rwGMptuncjxzX6av2OZO3QK2E2v1/4+FqX4g0rJra49XUEf9MhmNHN8Xxa0GLdzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786491034; c=relaxed/simple;
	bh=AigBU5EhSKR7USFeD09Ak4AgeY5wOc2nPD8GyLwKriw=;
	h=To:Subject:From:Message-Id:Date; b=edFr+3bv/yecjzsZv/fVdojeHlnZ+iTaRZOoOCc0Rc+LpsRzjmsxr+r6c4o8mHjCFL9mi6Icd+M6Ys/DQlQhmYdnCZTZl9kdORnAuMwfgX6ISnh66WRYDjSW6iiTtL5Xw7ruS8C9dLKtCRdj7kcM3Q71xvbVc5Y3QdBcrfIim00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HUraMF5d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HUraMF5d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA3F8C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786491033;
	bh=AigBU5EhSKR7USFeD09Ak4AgeY5wOc2nPD8GyLwKriw=;
	h=To:Subject:From:Date:From;
	b=HUraMF5dyTiU8vewKj+ufanQ6ccaL3n39wtYxPiSJTECXAxZlJaX9rRUSrWvcERYj
	 BsnZWUQYTGp54IVS/3od2H/qw56x70WpluHZadpSCs9ZUL/RLz01RgU11kThZzOrIK
	 nJsjJboH9dLsYUeY6QLBwHjLq2sWyAsCduXxKLWKgmT1P1gBYXv1uVZ54bbtOWNJ3l
	 hvecvFx+EJjpMkk/uX3ugi0WID6B2nYG1WPPYbOnxe99C5eEQ5iBg9CZaft4eJbzsU
	 GxSsb7jgHD5eesx06v3ha7y3higPSFAJEmcz9t4XFhDXy7oO1qB1ZNiq0X1VL/OmhL
	 1vy2quZTpBaKw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9B48C5AC67
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 23:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178649103368.24608.7769097066147216489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c757ca89fa18392434c81ca17ab744dea6a0726864780e0d466af8c805f3db6
Date: Tue, 11 Aug 2026 23:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786491033
