Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 59483367
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743554396; cv=none; b=efKg1o08O3wHGVmLQorvxeMC856NAhQzz5L5R4ohizQvBmdnStx/LXmxen3y1MURYebzoQh/tdp98KVRvpHKhkqNxQ7ygBDQ+GqlPd0vTGnOtnZyx640U/uJiLbHJbltayd6f4oQHSIjgYYhPir3naZfAG3X+4EdtR4PQufbv94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743554396; c=relaxed/simple;
	bh=u0sruRA0wDWd7pSZkIg9Q7OsLRPbquIPHm+hGBXOd8A=;
	h=To:Subject:From:Message-Id:Date; b=YYPX2Fgr2QU3uMphac8BJ7bjzJ1H6pkvmlfEWgsGRASY1+a7IRs5VxzH0UHlWxCUTWwctnxTBE0+IODTrZ0R9+RqMX2QLz6MUp5+LC5QAw1KRWwjLhujrRe6eky4lQHyBy0FwFgpVK7HkB0/uWs6UUqT76j/SOYF+AloNL+pdOI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z9q9ccY/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z9q9ccY/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5963C4CEE4
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743554393;
	bh=u0sruRA0wDWd7pSZkIg9Q7OsLRPbquIPHm+hGBXOd8A=;
	h=To:Subject:From:Date:From;
	b=Z9q9ccY/ZAtuNzqveRyFdS14jBCfd+DA/pnUd8euIqzlrNmchPlVCA6G+VPPOhPPJ
	 QxaB2uVIGwPhy0uaPf8DD1rpH+ist7hTe0dw/i2+XFdpoEGxP2AhVTovmRCWD+VSJX
	 orYocXAkjA0ejQUbwamq4n6AjQfP9q3yMVgVj/U25Oii5qF9GusumGVKfsAFqAOPiW
	 z1+izIjvyKppDhSbE27WW38t2uyMj870dm7PqkGu8Og7GGeKZo84pSxf/iBEI+GQ23
	 L4nTzXc4+spjAhbR9f0kD6UNuuwEf5X491+bU8ZSqMs5sm6jWdaVyGyWJzySb66W5f
	 nIbGqQ0MaG9Xg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA10EC36010
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 00:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174355439362.16149.9028913728572560117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88fba26b06507d1f640315044fd29253fc58958a1293fa49ac6dcb3ce70bcbf7
Date: Wed, 02 Apr 2025 00:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743554393
