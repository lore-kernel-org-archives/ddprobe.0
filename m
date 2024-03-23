Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06E3C1A38C9
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 08:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1711183697; cv=none; b=JMql6DxEvbdXSl4YuKqJrTdcQ8hx+dwvWsM0eUefjf5usS9xF4vpTYpvOeOMwNbK5d0467P749UI0JM79LDASH+N8zR2x5fe9LK0OhZD+5WYks/BlmEu/Cbl/SXkxAlZypyJo5uIP6F5EgeTDW2JGR9C8qfJ0yBS0gok60sYpqQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1711183697; c=relaxed/simple;
	bh=vRgxOB0HlyybYWm7wcp8/G8SvSNFHIuEze1JR4Xq/mA=;
	h=To:Subject:From:Message-Id:Date; b=ThJiOSu5QWHYVH1K2ytR1E9JcP2Ot1B/zMpUixdPLRXBa/XFo8EL4moFBecgH4lJ4+qJ60ZuIaBVKys38o2AalR9O2qm7+rwOCP7xXAN4NB9EWnrFVb0WaTd4zC4CajqHy4QBWJN04jlbxSakNQm3ywlrC9H8SoUIqr6xelY1qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dh5qQaYQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dh5qQaYQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 8C2ADC433F1
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 08:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1711183696;
	bh=vRgxOB0HlyybYWm7wcp8/G8SvSNFHIuEze1JR4Xq/mA=;
	h=To:Subject:From:Date:From;
	b=dh5qQaYQZkKD1KBj6WbV6vsUrI67MHyEooJvGdYZxVhTZy2g9EYtVECDBOjKFMPBY
	 MDPNoQClSfoPQD4UtJdHIsf+lWdpSgmlDtRvDNt2CnuTLFQ8ux83K7itOgT6JKMYga
	 rehlnVKoocD45kiezfG2DfRjsizVNH5GoA0BrS76h6W1xXKe6fWaU7ngdXXsXd6Frl
	 SWq4FAHbff19XUdNIupnatmbomSFnC5M9UuieNcgiWUYsTWwWd65YAbs6xInkBG8dM
	 uJUxwB9gEEc+pGuxsW8OXZo0NsqS+zvP1bqhZXo6QXMHsH6euF/LWrUd6Gz3C3lw8R
	 QwmGwPeE1Ce5Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77F43C54E67
	for <ddprobe@lists.linux.dev>; Sat, 23 Mar 2024 08:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171118369647.21988.10088431933388979964.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88587a11c24bd3c3f41ea3e6d9470ca6cd210f232fb8e2f47031479d9898a0c8
Date: Sat, 23 Mar 2024 08:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1711183696
