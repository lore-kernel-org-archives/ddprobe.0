Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E27C2ECD3A
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:36:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781872594; cv=none; b=pUuvW2LH9tZRjTo/JIBD4PEIR6S04ntcFUEvyt6TIQ/0WUtOVAEl4MKFVUUT3yYbj+GbfLahhMP4S4c4wsQuzFRT7fy2gDViVXiyAFEqUineAcFdhmrKD6F+hVbH3EJu6exAXIKCnCGXRVvlAsFenuK/2kZi8N/2wupUoLucH7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781872594; c=relaxed/simple;
	bh=Y9CZ5GwrheZS1WTobKVIjplRnQyiIL5qqpnHMTAxr1E=;
	h=To:Subject:From:Message-Id:Date; b=qs4WohP2vvuRupCL6TXxebNIzTggIJ98EusXR72A5fKm56+nRI6Q/edb8tsfJvcAvviwEU35M3qG+KGqmsy3XufwlI2utZkJa7xYq4KBUUu7gOM4d2IIu20gjSXs9C8QXvp4xIVntW+vDg2Dm4A+uppcwtJ4bEpUS0eYel4xYJo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T47C+m1H; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T47C+m1H"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C65E9C2BCB4
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781872593;
	bh=Y9CZ5GwrheZS1WTobKVIjplRnQyiIL5qqpnHMTAxr1E=;
	h=To:Subject:From:Date:From;
	b=T47C+m1HzhqOuMmnur7Nlbb69wVu5DLdtkPLTfnDtNtTEtaaaUCrWZdxBgXIX0TBW
	 GAtl/zhw9Lf1QgWDZJncjOCaApMalDIzLeE7qOkAFJxATtKk9+6CRjASttbcLnISnm
	 07vQJr16ydF1rR9VsQcecUi1zreujY/gdQgkJiOwmepSQ0+3Y8SescjHdLi8NNbqvE
	 u3QOp8hNHgyv+Z69LOGig8TbQ/GFP/2Brn2fdKRd3gtS4w7L6t9SIlYm4ADv4czHaY
	 V2qG+A5ZaH9ud+B86RrWE6QBeMO6DTsvJEFGIzBsTGslhDkWGax6Ao6HE69aBaO8fR
	 vlBnoH3JdisOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AABBDCD98F2
	for <ddprobe@lists.linux.dev>; Fri, 19 Jun 2026 12:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178187259369.11815.5677166075242890359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 885d6f91207746330f81ea35b7fea3aa2f34a009a28928d1e117c85465270625
Date: Fri, 19 Jun 2026 12:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781872593
