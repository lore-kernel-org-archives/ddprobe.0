Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D87283AD503
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776710253; cv=none; b=EltCGbGcoY1nYsg370D5PKYcCB4ur4PN+dNuAUFuRsJBujAHA5sohjYG31fmNMGMk6y5l1qNwJJT4EaHeHX4a0NWgC8GkPDAR0nVOz8tvD3BTLe5H3kAQq+Oqxk2GiYhGDUhcHqT3lfJC7rmVT1CV3PpU+/I8T9GFskNimXnh1Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776710253; c=relaxed/simple;
	bh=607jP8mpDHlulA+0TWPPlMlj4KwAuVDKwZCsqDLDPiE=;
	h=To:Subject:From:Message-Id:Date; b=HxYDXXbeHQ8z0qQo9kGdHjtkquyiL6kAa7GBCBNq7PYdBnb5piRXLBtefRSUXgXgayCD1ZKEAQ5eFSkYDvA/NEN/PlhMcXMJuo2qJPu0H/e0qv+n3+G3H90gV4HPs+/TBrR6ufPIu2uYq51wUbEfYUx0jmxiMFmwpXBCWTJwTHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KBF+WfUR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KBF+WfUR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DF9C19425
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776710253;
	bh=607jP8mpDHlulA+0TWPPlMlj4KwAuVDKwZCsqDLDPiE=;
	h=To:Subject:From:Date:From;
	b=KBF+WfURmtO8XGsutFKu0L5qYd02t1h7N/AIGVVUF3wN8L3MWER/dfeAvJumb8m0c
	 /vdJI81dKOriKxTVeehzcz2HopQ1zCLkacO0ARwuhbgQ7BQsfcOPh/bAtpV1ld19mv
	 jlGceIpQRfbc3iDjljxPNoIz74CDKxzq6593rvCmEYtAHEASyrVDSGmMj5N82meaHz
	 pk3ypXuF+dkgC0eZfVcGVIfquqg3Z6qOgxpTrY5HD3pEhgwIjIZatIAia5XtAk4M6B
	 dQCiajtJXZroIY4+w2kgayKSn9v+M5XmpLuKj9A5ei3aAaCyOqQZRGH+n5FKQO6NZA
	 4LedegcptF9Vw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A951EF5A8AB
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 18:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177671025368.16541.1383665350934979894.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 713f4362bfa8b4dec5fe35bc0430d7f5e926c0641d08d6646a99ca44799db2a1
Date: Mon, 20 Apr 2026 18:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776710253
