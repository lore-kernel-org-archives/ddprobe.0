Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 650651EB1AA
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788724234; cv=none; b=cYyL3ea0ECMua8IAt73hSCmxCSFgp9MKZdUpFkvVQE4eUUqkO9Tb9TQHDfIMyZGjyfZd8DQbM99sZ/d4jyq9LA39JZswQpdOLXMg9a/0Vmd9yXaM6kfKVWR6XPK0HcCaiv1aejbGLxLlx7MFK8W1EH77bvrybh+UsdQ2i/OIFRw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788724234; c=relaxed/simple;
	bh=GlZJNRfmxFplhglRLQ+PMe+un1VPLhQ+bLuA4lywEL4=;
	h=To:Subject:From:Message-Id:Date; b=V/cwyk0VOg1fKo4IqoDcH31zsn0uGviac3Yyqy+DHnR0jnOimuqnA7jrqE+XwUMMjb2edox4l+0FYo9rtlkX/+OezEgQXSksPDLDK4+YSlrZSeiq4+L/z/LlBLTpG6Qc9XM45l6enLqM9lVJBvyv9mVVuDd1f/ExgmY7om79vMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gxAzCY4+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gxAzCY4+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB9E8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788724233;
	bh=GlZJNRfmxFplhglRLQ+PMe+un1VPLhQ+bLuA4lywEL4=;
	h=To:Subject:From:Date:From;
	b=gxAzCY4+Mdpqv9GwnVu/9fPEGeuezMHrmGAlsBceNOmH+OZ6F3Iw7SLjc9qzP+r3P
	 YpCGifIyhwgWchiLummsPd0XJYeup0QRoHvRGU+csKok+WeH5kUTwgdUqC+PdqcNq9
	 ywrKFxj78fZw/IehZ+LqH2EXDKC7iBVMyg7JW0PmlD46VIoqi49vnlLdtUywO31kUy
	 lLh03EthNnft2SwsiOdZPSwsUjivgzZcbzOOaodRVWLFmq6fBiw/Xl3jODyi4tjn/p
	 lhCGyIvr5G3FQ9U6+rmzLQuQZO2yOEQOxxBSmM/Bm9byKLTABi97T8y+BWxGM8nl9l
	 OpHV73gtYA3Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B211DC79F99
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178872423370.30719.710686904213334118.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a5ac420ae358e1b99409ffe41d0687ca80b8ef049783ab72d804ee4124504c65
Date: Sun, 06 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788724233
