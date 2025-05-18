Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1932CCC0
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747585194; cv=none; b=mGZ5SM27OZYO5IcIEE631vw8ktrPFpL3ASRCxMNoIJiwun606dXl99Su3eY0TIoLB8V0xclCouyyoi4PtXUjgiqzXgEiaOo3x9vPuY4n8/o2v2poP2NnzxFcUcuPRU1lreNmx98NWp92WUwCAa1vqP8hdM4oWpwNofyTlteiVA0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747585194; c=relaxed/simple;
	bh=lU00FUUMMCUs04wbailrON74hUOGnYZtRoYdK7XUOT0=;
	h=To:Subject:From:Message-Id:Date; b=J+5Hfvxt+P8oysQNOemQMYvIagZ59selPLDeA66LRiILF/fUcoDDcqRvcoqUQOSg8emeV8Fqp3CqWuBdCAFeqiaFtPRmP9DnEhYFRsekI6Narq7g+BpAxe44nFWhTm/vUbEPBWY4OffoN9/5tgzlNWaHASc3sHsWHzuNo9WjXKI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uIzbwG4f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uIzbwG4f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E66C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747585193;
	bh=lU00FUUMMCUs04wbailrON74hUOGnYZtRoYdK7XUOT0=;
	h=To:Subject:From:Date:From;
	b=uIzbwG4fJNUViRZd5oR1I/lCiXuX1wcHcmQnedmzxgPEfPpVzJln4dhbNoT9yfHQy
	 UwCvQGrpBz4FeYIYeQ4FEz6kqk+O5F6cXh7M7YRSn4uWFdKJfEO4JljSmbufy4vWk4
	 CKvZQynJGG8gtUhRUjyKfyv0pIAqcyOOQZ/m7M4T9IT9uts4EEWwovi7mgR1Z54t5s
	 TrEk/h94w1jQ/4gWvo3s+hy+sMxECQret4lThYXeVz+ZQjIAToa2Kko0OZayS2LFl2
	 6astDc2SnIEAZPlxe2ce3XtPkxD6C0JevVChDlJT1+PgRI7fAPyIWEOQd9XkjYW1ZN
	 lsOxKiaog2VfQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C1AC3ABC9
	for <ddprobe@lists.linux.dev>; Sun, 18 May 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174758519357.13325.8027673717261952359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1c65d268f98d8413e907cbc1f99a4c78dde72e877beb09be8b54c243438df05a
Date: Sun, 18 May 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747585193
