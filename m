Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BACC3A1E7A
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766746434; cv=none; b=cjYCJyDPY7nF35PewsbOtg0zqiHcVz2oTzAI1bd6WggYKpE9ra70jfD4iNs6kvBn9DsqkFKPJlDRtB17+AoeTMqkrVJbu2FebMXPg2RZgp/7mKzxS9h5mdFcGwLz/A08jR0O0hHKV1QrqdhV1QzNDCVhFGu86VPyYYdmNbEvg+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766746434; c=relaxed/simple;
	bh=U90o0ABz248RRbCofR8/fGVyBL9PUvXkUm2/EkcFBmc=;
	h=To:Subject:From:Message-Id:Date; b=gFa5nnPDzz3roaQpIZ/03HTXPeAY1jR5SHhEUz6E4QSq5bZzE5BMPfATmWhO/oZNVua4vzOOM03MqFHeXzdlfiIXiDlU7yCTe0YL6jYr4mi5/zLRE70cG9BLRQQ/dYFW6q5DX+md0U3hbBVO4CSyyblD2LPBT68muKbHnPADyQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q10TqMLz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q10TqMLz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ADA3EC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766746433;
	bh=U90o0ABz248RRbCofR8/fGVyBL9PUvXkUm2/EkcFBmc=;
	h=To:Subject:From:Date:From;
	b=Q10TqMLzSQqO1aSrRG67o20didRPfZ0i5BVzfAE/2h1dZ/LwCWQIyW2D9v+KPXSvG
	 2EzK6Zbf5Jn+eFyjqf91qVuaEuYo7i68Y4IpOFPg23YdmiEngjO6JNYRmQWMMNRxJQ
	 tF4LPlNW4bJe8S+fi5HvuXTamx2H18yIf9+0rraDO+2ovG4dIqO4fSWD8qXNZFPKEE
	 5wXzk4ihHEKUKOqPBhD5eHuUdLvU5By7Cu526fm/Y/LxaJLtUbyZfHvdA73c43FWyI
	 ppFsmfBvEIe2oM2uAuBLivj1XpQtn1BfGsNKrT6kP+074+bXaE7sQOzw1CW2VpbYhQ
	 Jr4Cbqq7b/+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99AA1E8FDA6
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176674643359.5862.9543126874786116613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 278ce3056ab1a05f02453a5cbad4aa22e2bcd3c6c0c229e5d697d28d48270192
Date: Fri, 26 Dec 2025 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766746433
