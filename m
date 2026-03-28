Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D60A342510
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774713294; cv=none; b=gwz8PmzuoAVEMkuXmVZ9zo3TImuf/GWAe4JLcgKTwscYSKXkxLma5f6IK/zlXC1KXOp5QIns5cG6C6sSFJrlHyDIDiEzMo3MWsK59pOp/bghPjIh/Hwf5wBi8DJoYAjsK58Hrg4D/+piugmWAtFVPjE5mUc+h9WOZRGg+OZUFNg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774713294; c=relaxed/simple;
	bh=q1+DqAOm5va4Rx2MnnF3jWBtF2wZPUuGik4BgdNVH+A=;
	h=To:Subject:From:Message-Id:Date; b=OZjHKfLa0n8vNwIffpJQcCWjequALJ7oROI8c43oFx2vNj+j5ZwsVl7472Pl3kTLE5c4x+6HE1Kj2TQlHoO2LxpmGrQ+Kftzjrz3urriAdgpmUIykhdbXgmJL23NDyKZztSZ9/AN7t5hu0+/YDANqI1SwZPKs6vGGGni037KMx0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OcuBAyz7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OcuBAyz7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3146C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774713293;
	bh=q1+DqAOm5va4Rx2MnnF3jWBtF2wZPUuGik4BgdNVH+A=;
	h=To:Subject:From:Date:From;
	b=OcuBAyz7apNbbtBfRML2gew6iE2DqNmpc9y3ehyAu2MD+Rz1DiuYzQZLaPHsRDXhZ
	 sAa44B3YuxyMUU3Zj1RMxQlKit+EruICkCN4PgwUfA7b8kf3JXVSSded+s45OkyE0l
	 lZ3s954OhpDbpYShPaq0tkq0ffkaFd9LQ/flIDcgV8mnhpgg8/QeItYcUA99+2DJUW
	 mYFTk+KtfkZdDxpnSTAckylBeyoucRspduPQ+Q6UC5BRewNEWAwgP39etzozD9ngcR
	 gQn8g1JPV6pXvlE7q931JsJGb8JAt0mww5No3jzptrp6G1Vgy+I4TkgzylzW9jDFEd
	 fZnC/4B8DvixQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F3B10F3DE9
	for <ddprobe@lists.linux.dev>; Sat, 28 Mar 2026 15:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177471329358.23177.9515697388093296188.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f9c4f873235f0844c7e9e211d253d170472dbb5078b9afd4cdea547851c14fda
Date: Sat, 28 Mar 2026 15:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774713293
