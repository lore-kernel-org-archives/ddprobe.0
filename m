Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 369A2F9D9
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745756394; cv=none; b=dnBtC71AoUnvefDGh84bC6p4U9cNjvQK4P7iRWhSytu4/n5K3C8rXwtsjX5U0+Y6gH7VJcAwpEVAWNWfkyPXhsTz/2m6WnHGcplxFlnxn1pcjRQIoFbnE80xMx3XIjeY0Dmk48Bvu1YZcZxdm8mi3AylfygOo+1Q5jmWrmivpIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745756394; c=relaxed/simple;
	bh=7LsyQ1a+rOugrwO/3LYtXar7ZgezvdVlARAsAVgsrTY=;
	h=To:Subject:From:Message-Id:Date; b=tnFm6svb4PcbN9ZJwMEdBZjVUJntNxg7uA+EGaNtlrVXa/aiy31LHiaXwGQQYyvd0wLu+6KJC+OhsCsfGUXnuU5RwxIqoJWQQ6bS9ZyqCVEvVDWHMq4wcec5b/IaBtXES3dE6oZNq8y5vpvrgMnuodh2suwh5nza5THHtIStH00=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IVGmaxeq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IVGmaxeq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A596EC4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745756393;
	bh=7LsyQ1a+rOugrwO/3LYtXar7ZgezvdVlARAsAVgsrTY=;
	h=To:Subject:From:Date:From;
	b=IVGmaxeqfsc38HD+cqhs875dQItolwlkc+sBqgaHH7pNyRMb3kmV0KGwG46w3XTwe
	 kUOfjinfaC/pX3QqTfKWotXI0qDtc+shKTwtej8T6t/zCSbGJl27LhCbyB9llL8hJE
	 2Co3uoqCHCXsfekcFfK34iq3F6TL9BnDD9pS9gF5br9TX3OwxqgSY/Pkl5fSpdTHVS
	 EXv1U2JOS55JapzuDch/UCq6dxn1hIBhP9MSb5SGR55+05kbcUSk1dfuId8W8rzdx6
	 d8cLJWHVGuNYYNHIGR2SnCboDycdKHcphDn9k7mp7L7qrF1sYEZFN6LtIZSJXm5EPb
	 0H6tQH7vedZeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9424CC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174575639357.21719.10543329851016379159.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: de69fd87fbe4048dcf9544c968c0ffe19622e3205030488d017a9cdd6cf358e0
Date: Sun, 27 Apr 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745756393
