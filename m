Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 322D42AD3F
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790455234; cv=none; b=E+g4kgpJDTVNZwfqwQddMOGzJDu78+2tAmebYOdDfePXJGTA5KagYqdGONlLJE8FvK85YrPNnR4HkCF9I2Xyjy81dQra0WV9tDRShLTchXW6hfJNUY0ngn4ymT9eo4Ze/LKUGX7vq2H6/q3OFCUSm+9Jel1p/6RtrYg36BaKIMI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790455234; c=relaxed/simple;
	bh=Ulrtuu2frftM5nEUXUHN3GdQRdYN5MybblyzK58qPZQ=;
	h=To:Subject:From:Message-Id:Date; b=NPq66BkheoBgk79biHsuMbo5o3lwDnKS36dZHYfXWiqFGBO0UtsW43Eok+LVDvdnpCk2+6F/iiGembws1sDUiI6aCLPpv0SHl65DjwNp7Gf39TbaUeUp3Dbb1xq63NtjxAr0YEXPWEhFcotVdSUjxtsLLFRK0LFhqjZddyd48ns=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WQfuyEVt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WQfuyEVt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C866CC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790455233;
	bh=Ulrtuu2frftM5nEUXUHN3GdQRdYN5MybblyzK58qPZQ=;
	h=To:Subject:From:Date:From;
	b=WQfuyEVtUPGYo0sstWDabFXn5bA35kHFFPGqQGZv3Nv46Tyrv6utyXv0/7+/7O+rX
	 QljoG5EGcxU4Wq6mQsURWipvZX+yfTHh5mkY7+20yhHihVh7vjCu65N5iVzK/FDLjh
	 Yilarmdi3eej1+aAg8liupI6CMOEKtKGbSlg0s5hzd1kJwzDQLJVGvwIbgAhGGCuVm
	 V4u9VUwqIwjaQYcpyPg1ZIiGvr2ekgNdogUjLtbFJWMbSz5IcmwyqoOL+ypEBem10g
	 1cKdBfEFjjtr46NZ8T9vg9ZW80mhYGrd2LCsW4Ftcr5lx9HKpYVSCHVJKXUrjMzzfs
	 A0DtXi21N9+Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B030BC9832A
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 20:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179045523368.9005.16952505469305498962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb89925e2f5fa1cc3f94aafd7d42a4d986ed943a0c6ede806c7f3e76bfc0129
Date: Sat, 26 Sep 2026 20:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790455233
