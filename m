Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C54D2594BD
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:27:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782296854; cv=none; b=G5Z/WgaKXOSvwJirC6MhJleYIZbO/EuX1OpYzvMEgMHfsGyjkWVSmj6SIq+5BJVEIgLs5se/lT8dNZHHhaPlkFgUIHR15n+lPKzkN8MeK1QdLV975B+wkznY8VA7SJ3rqhWYvmVEvuTR+ycYeFmQo0Lo5UxvfzKzLQwbrgoQW5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782296854; c=relaxed/simple;
	bh=gehk5NHcTFvF8hVqUSqToOK1XJLXYAWNx3gpIQrAIYw=;
	h=To:Subject:From:Message-Id:Date; b=aRkMHvbaI3+XWoJqrHiwbC0ORvf9z6q+trurJ7g+1tFLn6L5mlDwWcwx+CM1/ZV7O637Dz0YrFqLPW0NbwKsvcaNLpv8WBCtaAlPsVsTgSIzf3kKxNhWLJdlZQGOJQTmtjylKzWPWPk+oq25Sy+/sMxs0oogdiUSfwABhLrenNI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oy/D+8Uu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oy/D+8Uu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA828C2BCB4
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782296853;
	bh=gehk5NHcTFvF8hVqUSqToOK1XJLXYAWNx3gpIQrAIYw=;
	h=To:Subject:From:Date:From;
	b=oy/D+8Uugn08QP7tccncwcdPEk3mosxcSuxEwrHDe91DY0jLgdd3P2ZZxTKGT0r6f
	 /tMfvwN6ukI7xiuU+9BnRyw/btm+wf4AlIi9TGl53kb5DJIXDUtABZb7Bqbq6g9Avh
	 +QgwSa6B0hif8ZbNMxNlrWZz3DVawXAJ4Xm2bU4gHmrHTct+dvi+/ZOE4rcswcAjua
	 zX7AShdX1R1XHe5SWidhu9VaUtHzswYoDNO2yGjHnHeylmT3DJKL+Z9nB2RiBAgD9v
	 7vbH1QqL5t1WVLmCSkiRB13lp+mSb5dDHceC+EAbDvOxmJroeFIzTP07aXGSUMyqNf
	 cAIPAkNNOY47w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF1DBCDB479
	for <ddprobe@lists.linux.dev>; Wed, 24 Jun 2026 10:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178229685370.16152.10320521558254893527.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2418d79274c08f2f523e6c8dc023260748d3d62146d39d9aed16113520723ed
Date: Wed, 24 Jun 2026 10:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782296853
