Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 21D442DA757
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786686034; cv=none; b=d2XxH64ZvhKCbPgkUsLCr1VyaFX5EvzHS/W5z//vmaU7qM4C8dZ9uKaFZvVbe8Y2hPxZHjvRcWjH9iVpISmX1pBt+GFNer9v7/6G7nue7/ts32MWWr8tVMB8UMd6q3RIQOzQ7Cosp/WYdkK0mVVbylhPLMrUP5ZembnxKm3gRFY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786686034; c=relaxed/simple;
	bh=TNtbZDajmS5Wv99YKxWYcAKvKm+puYylePnT2VdMxIY=;
	h=To:Subject:From:Message-Id:Date; b=pHsYFiVMElNgi2AHHHaKaGX7aIPVh3mdMH1WVcJtIyLM/Y7gMvLHTNR/NQ4aMF0ircK30Hznf/Uwc/ha6a3kPJfG2oBZahXIGH4sPiKzjzllQUIpuEOZ4FDrB93+01HW7LKDsq6hv/IudfPj/N/vKH8INgQ33BSRCKscW4LOv4U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qs91SzEu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qs91SzEu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0C8BC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786686033;
	bh=TNtbZDajmS5Wv99YKxWYcAKvKm+puYylePnT2VdMxIY=;
	h=To:Subject:From:Date:From;
	b=qs91SzEusJQ3LQEJYmebIIaTT0BqMk4FsTacew+Q/KGM4MAYNIrzmu5SGp3wC0N+S
	 I72UDQbdGlND4IqFCeBD0B9rh5tdtQER1TRoeWZHMNiFZy9Snw1fPijxOsJrdv3Gb+
	 ysvB+1GFpahwA+iqWGLapUP7UJ0fDoHg+v2GBu8DU4xG52JrZzALz2SFfUrK4dQME8
	 P5IHKF5S8xiO6o5ddH10pdXgd1oDHJmXDjrDi0bejPoXEoN8OSHDfGgsoaSyQAXQAd
	 0AFBveWoTi8i21nsutlisOuyTJ1WQ00xLAqO8GlQTOLd2kEt7xNS9qwMMGJMzsgUxN
	 LbKK0R1Pp0gSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF7A6C5CFCF
	for <ddprobe@lists.linux.dev>; Fri, 14 Aug 2026 05:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178668603368.16095.15453100016955519005.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5c48a3b56191a54bedcb6c0e6feedfb0090cee783a34e07134e5e6fcd51ac0e
Date: Fri, 14 Aug 2026 05:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786686033
