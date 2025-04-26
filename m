Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AB721EA7DD
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745699394; cv=none; b=P1WU9yBuQVaneNTG73qlbFZ10nO1iU4CqOblHmBB9W9AANx07BuZsWHAoDGQXrKKqOkmd3y19fmByHaEp0zymtOJZrv0cK4vf4UjVsZvWFyqFMAtrwhe+DSrIR9E7PmE6Qpqn5eTLVn+tUcbYvIajm6xBTzqP6Blh4ee/95kmQs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745699394; c=relaxed/simple;
	bh=cryxUkcqCwnAoqFt8XIEm9BKJEXEupIMpoAnA0Xee1Y=;
	h=To:Subject:From:Message-Id:Date; b=oIfJwdRWY2XkC5qoi8/U1wGTOpQXwghE4GspWKOs6WbHJqnwtSYomipBvekx3LrUDKacoHapBJt5u3nbjkM1xUqoj25/qIj3McrIU9F9uwdVRaBU3KCy10kRWE1irK9Nh0JfiDwFN8FwGPI9NWeENaEIJboyw3QlWJtCJ/C+Mqg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mtNk5Xt+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mtNk5Xt+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A334DC4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745699393;
	bh=cryxUkcqCwnAoqFt8XIEm9BKJEXEupIMpoAnA0Xee1Y=;
	h=To:Subject:From:Date:From;
	b=mtNk5Xt+IqM5cbsKm+Xk1sI1y/BDaJFzNP0wV5P76Owe/eZBa8DgtIgkJV7bIVxYD
	 7+GvxvC6GwAz09j/k4G9459Og+8QAYIYq0CEcKYcOPtOn+nql9rZ9Slg/96t7d0b2r
	 Tgynm5+0F6MKEzYwDxkcuKn9OUewGoqnOCzM4Y2TpnAsTVtuiT1PwW1eH6h7H6n81A
	 J71P4ahJQVYshLtSbvd+zF/32csGtbKMUJ9JSND8zQ2UzH49EiWfDWkjX074R3gwZD
	 t0CWpMr04CH7U/bYdEFzczOrZqax+EylVl7iV8x0LB/ZAJ9Fx4h/ynC9zBJzdwPdBC
	 ZOyrWUXyRwkGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90E75C369CB
	for <ddprobe@lists.linux.dev>; Sat, 26 Apr 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174569939357.21337.15633735843281123933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fa8e5a2c6274aa5653ffe1547ffbc52bab9302a04a7c09329c71104ad95da4e8
Date: Sat, 26 Apr 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745699393
