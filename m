Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4832A33987
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738119354; cv=none; b=gYXW6Gr8br7f5BWPJLHTOv3kWVe2marp6vHTYIYFWOPSDLWDUziK4kLZBVnE7XOxMCYFao+cKbPPsHPLdXJb5zZbKqVd4/aNSw7wyUvIOAd8MUeVQIgyTQHZK2bwM8wpDUcTOTF40UDAwCIOlWHRpQT4ilZsxnD9osI6KOVtZGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738119354; c=relaxed/simple;
	bh=90JShu8zSHvsXDGIKI0voVjNjqiCl3PfTCjpgwc3tjo=;
	h=To:Subject:From:Message-Id:Date; b=k7YbG754DryBtYyOyCUPURyvjt/SaUTD0J/wNBKQtA2fCrLqthNGnwzeSoJm7laypfrhtaYOHlTnXe0J1yZc1aihBX+/qhE2xiQiZ9W63GFY6vj40Uo9eEC3Jotx+3a9/7DYRzNyB3W2yE4FlXicf6lhsZxvh9re9d8BcO2fTPI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nT6Ulk5z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nT6Ulk5z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B62A8C4CED3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738119353;
	bh=90JShu8zSHvsXDGIKI0voVjNjqiCl3PfTCjpgwc3tjo=;
	h=To:Subject:From:Date:From;
	b=nT6Ulk5zYAheU77Ac+w+MoFw4w1haXyD4VYL15Umas47htJuyWg6bTuE1TBy20Cne
	 h6NqGzNm9TqBQpN/GnFC0m7kjTOIrODnPpz9tOo/ov1OUmsDTGzBTfrs6VPw18UE1b
	 mA7dCJVm384fRwG+KvB44MAyI6j0VgN3xlMngYDwMTJ7jFqYPSmo6W3EUZ+W07l1ov
	 3hG544pRSPyIgZt7QVm4VCgzYavaBQZjkrLNRLdxsdLAZhCzcEcy7nbkGQEjJMDgcW
	 sTW6Mo1ZxE+rgPwLUxauOp7//AADO2y6Acz7NKvltnKHWJAtPtbjA6vON0bOHdWxIE
	 h6eyHkftVVxHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A75DFC0218A
	for <ddprobe@lists.linux.dev>; Wed, 29 Jan 2025 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173811935367.27376.9232284968349722128.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7b75b7addf174a1b16ef3a8b29c1a710d7df5431b33fbf3678540ffa53f585c
Date: Wed, 29 Jan 2025 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738119353
