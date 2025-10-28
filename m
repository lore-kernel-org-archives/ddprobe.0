Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FEAE33CEA7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761676195; cv=none; b=DwVtSTQs38w4Lb9oEJPKrNLdzdFuYlil9lVtkn4kVLYeMpC3Laci6dqR/6TwBJWEkNUc4ZRsTwGf4mMzDs/ouvlKTAGJDXxNHsBkdqNxX4dHNzmPkrQxXXeRy7a+GeYpyJoA9t/07BQxPr8b+NEvfqHDxDwaKXx4aylj2fUiSCA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761676195; c=relaxed/simple;
	bh=et5lqX7g64cWkVox0bZM5v762lUxHDqejhVnedSjah8=;
	h=To:Subject:From:Message-Id:Date; b=g2Dhq3EKk4yxBYAt2mEBsRF9CsekbJ7XBZnGGkASWfh6mDcA5wchtUJIuas4aTRNPGDxTzqWXXJatOICL8YrXK1+Qydh27DInFWzH9YprgIJvtKG+uubFkefabOYwcf8y/fws1dKll29A+o0g5oFKVB6y8fhbZZ95m0a34A8K3g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V+dAj4LV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V+dAj4LV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87EBC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761676193;
	bh=et5lqX7g64cWkVox0bZM5v762lUxHDqejhVnedSjah8=;
	h=To:Subject:From:Date:From;
	b=V+dAj4LVpht7Gk/ujjwqA8AFT8opUSLGvOYowm6stwK8hEvvlQ+cLGqsQzGluyx96
	 EzA0Bi1tyNeACZ15AP7PlrF6RDKiPvpVI9WDkTBZ1nfMcLnHDKuKa9rTzFgOeGFHa4
	 /tx1zTB05t+cxCIZEZnKSGonBm4mcVGUxOBl97BRDpBGiZVmEKbv3KAyNJg9Zj2DNe
	 EDjxSKDG5nKek/WDqvjfo4Rq9EL3nv/F7YkdHmHbvJfTygsDzlj46k4iZaH64WZkDJ
	 vItT1/TazU0zy6OrJj6wI4QHnD2t//ZJmghzviSjdHc6+A3/razFWAjkx+0VMSRh7i
	 8s5ZrJq2vWaHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CF8CCF9E0
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176167619358.23740.1011065425040420068.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cc75f1d5e82785adc01c335f0da6ca5f6a9ef908d5666f2376e16de0c7d568a
Date: Tue, 28 Oct 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761676193
