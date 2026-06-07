Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33695318EE6
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780868074; cv=none; b=eeJfAGqoIdPhNq9rZiuXZnhV/FsxlFC2iTvoT3jaCYdeVd+pyNhLKAMdlFHn3ubWw7GTOPko2GwKdRbdwrOZjFjNFYVwQrRknolDS9Rw9YgxquEBOeQwlA5RdM4SPPtqUbakeM7dPrJPJXRt29xadjSDsZWdJXnX7FSw+OwiivE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780868074; c=relaxed/simple;
	bh=yp0UERA49JNYoQdPZIb2I7qDmNlNlCOLWTQ6IOqbni8=;
	h=To:Subject:From:Message-Id:Date; b=QMTxxEXVAR98CftM5gPqbcppHvfdd7Hu0TzIj6M34pw+OgsXNPa6Gu0fDMuQ4lXCXTCwx6T9VJ7nYabx0hR6MtQOFpxwSa/yHJWlq4q7OIMcdjIJ/CNsgjZpbY3bHQNYUx/bJQDwcZdT5vnNOq5IooWOG1rlb62vUd0OkPW9BFw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jr+Jrwdn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jr+Jrwdn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1405C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780868073;
	bh=yp0UERA49JNYoQdPZIb2I7qDmNlNlCOLWTQ6IOqbni8=;
	h=To:Subject:From:Date:From;
	b=Jr+JrwdnSWNijtw6mGOJfzeajWbJX6ANRukwYtBtyUteK8gsAae55d4UQdLIJZ2s9
	 5jXd/+BpicKltnYVzVegzQTLGzhIX82nq1F6SYT7oKYMpXyCMSxGJCWEBNWzL+FKPt
	 w2w96rN5/Z9vUmOYBjn1uP93yYbTPXyDm3nY9cpQ3r1njQfnww3gmM69V5Ap5Ep4Og
	 gJRO1pAabkVVrxHSkzMUuO+WbXSzDl0t1EyUElwYS7qieoBXFb/e1TUakLOAZHAdNr
	 nk7iT0ZsXzWBZGWZurlX9TCsBYvwQ7F8b6PhLVBmid5REnWx5nqJxnlHDRBGD9EO4Y
	 pEMpX53aoAC+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9674CD8C8C
	for <ddprobe@lists.linux.dev>; Sun,  7 Jun 2026 21:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178086807368.18344.15496550217677560702.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7f6e8f60e0b8e28682f207ee076cddd00736e18232ae59b2a813a0ade5ee23e
Date: Sun, 07 Jun 2026 21:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780868073
