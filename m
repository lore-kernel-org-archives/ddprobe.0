Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EC8DE3019D9
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769433834; cv=none; b=S/ZRhBCRe0T/MDIfhzs6uX4eXVOjugck8+Dl67V5imZJGM1wWQa08elSTuK9HEboTIyc7HwafdMZcNriQUdn4FD+H/7icGtlSZrFa90s91ED+zmZbCh/NAkOfLw+qJDLrawqfYhtUCC8dFk6jhDMn7jZSfmUzQmwB6kenZYXtZU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769433834; c=relaxed/simple;
	bh=hm1M/u6v6zjQ3FaE+fbuhd+Km76NODRqaSQpqw4EfI0=;
	h=To:Subject:From:Message-Id:Date; b=W0+IxQzW3g6NLr8FHGXgYPvA3wv7vxPUWNo2NtBNZdUa+pQkNMMB5WjDYI7UlwARVyy/NFJYiWKROz1AT0PJpQ1zPzDz5hRkdlBIl4r+Mf0Ls9wn6OzTP5i6/mAdEXa6Tin3xX0KxZKLy0wEc/rvM00u2X1ifx2oxykAkQFtGPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sQgpjELn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sQgpjELn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60BFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769433833;
	bh=hm1M/u6v6zjQ3FaE+fbuhd+Km76NODRqaSQpqw4EfI0=;
	h=To:Subject:From:Date:From;
	b=sQgpjELnq+bf4b8DUC/pBFzaMqPQDajfTi1DSZnMg6tT6LPb5mM8h0cFyvxzlzean
	 F6z3sAOoBaphOLBYnjDNT3BvY7JhXoE8DHCDDQudSU080tfoFnoirP19+UuImwQ4dS
	 ick2Q9tNdawTCDEYvmojfgJTOBqG7gY+VCPj4MXAdnYf18TzPRN45IUNENQva+aR3w
	 IhsfRBRk2kW8P6E9IzxFIRB4fZ24SZRlGhIwbr/in5Q1bRLdlWK153wLv3a6dZ4+gX
	 T5ROIoU5spGOUYf7Are7Kt16LAMK9RdvzUzwId//3OUWTzGhRtbaa+353GB75ZJV5l
	 +So3Kr6/giNHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95B9DD13C09
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 13:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176943383358.10470.13978577327487427916.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1724d2935881eb9cb7b0a9a9963fc6d4c0ad6a3a2a142a6ae53d82a3b66d9777
Date: Mon, 26 Jan 2026 13:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769433833
