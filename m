Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40428262FFE
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745375994; cv=none; b=G14aETd9VDehq22uYXNldfUyC3ZdYMb9hseNp49HsPDQCQFlRl8XmMj8yLbNfsd7mNZVrJAz5s8Og5WE1KkTzJMZe0m4osMe1PFvr1UYJ0Lus19zDFEOdX/4Fdm8L0k+uGpPzAQC0B8DqFAubmbznlPgU8BQPEJRrAhaCY4Jeu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745375994; c=relaxed/simple;
	bh=0XS1jkRJo/TqH5saXAbqciP7v8n6UL+vn9UQXI38YZI=;
	h=To:Subject:From:Message-Id:Date; b=UFT6+UQgLlgycrsBWhnjiGtUnAJzi6fZjuGvYDeL8hhZ4fiYcbjhzZEE6bxeh81kfv6Rpe56CE084Jv2pb4gYgru2ZTU1+luV55qvxrplq+yPIBbePNIGArRhZOkqSh4Q4JjGDoct9V1F2NMl/dEYXVpDRsDhlq9qd3325ytrxk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTAolA+s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTAolA+s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1895C4CEE9
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745375993;
	bh=0XS1jkRJo/TqH5saXAbqciP7v8n6UL+vn9UQXI38YZI=;
	h=To:Subject:From:Date:From;
	b=QTAolA+s+FsBxoQBQOJ89rBlqO/mBeriPdvzGKCUEj33EsjRE4MNzARanFGHt3ke4
	 UL8yqGZ6OgQhZbT/LAkFZhpkOimdI+b9Zv2UR5usJ5TwMw5GZC6hGPoU9CFastgl2F
	 FoMa03a5c9roVranAOC4GwsC9ZSN3znipUNpGCugVF3YbGPittE4ew+KP9ROkSrT1n
	 +xVsZtYC0bqSugnaQscYRfld+nCQHUT5yRuYiqlcivVCxbcnNXCc/uvbrG/iNxImCO
	 pIVrk7dFrrP7oPjI6wr0TM/vO+LwzN5l90rXTczNOFzw+EMNhGULfWEl+tvsDXx9vv
	 xbnajqibe5m5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E57AC369C2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174537599357.15126.2874156399273639819.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 108b6d8340678d64ed3693fa2f215bde90bfa408978f363b946ab0f3cf45f1eb
Date: Wed, 23 Apr 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745375993
