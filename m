Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11874272801
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764978774; cv=none; b=M0nW+JfPBYju5PjVq/DGINfoVxocCZiYV1V3bGB+wShMomMKwZaC+qCC5vd6MyWnXVR4LNu9bB1vPVTs2l1F7KuVNjn3RkobsR8FsG0MNZKBDNPmBaPpUO/bef8odket3vmCHoTRTpyta9wBhYi1VqtBoLts1u+LP3fv/1jUn3A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764978774; c=relaxed/simple;
	bh=qEJNWFLNMVHfKcGS6Hi+n7ToXL8FR4DfWbWFpVpMCiE=;
	h=To:Subject:From:Message-Id:Date; b=Ih2rVXZgwd2HO2EI1F+YgBwDIUZtsrGyQNqj70Uk+Cy02CRku/Y79372tPWOu1WvnKveT0874kCa5sIU5FHgODqHf7hmnyJa8hWbRAGjcfs50i2tesQyIVajImrD+ykqKEwynclQkFIOxIkKH/PjGKTqgEvazXhqGt+zDgG0ixM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dv04SWGZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dv04SWGZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7FF5C4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764978773;
	bh=qEJNWFLNMVHfKcGS6Hi+n7ToXL8FR4DfWbWFpVpMCiE=;
	h=To:Subject:From:Date:From;
	b=Dv04SWGZe86FyrpgJj/J+pGoarJnWZsV02Xdk54b8a6oE6wV9BffUldMWf8PQJ2AX
	 3IULo4uA3Kmr7trBKDYuU72gSVwc0fIXvUn2vby2pFpvrRwWi/iJwCH5lt2xWI7L59
	 9hOnbXSFjIz/L9vtBaFlarQ+qtj0/qo8CEGX7t2H4zZECP+6tCNMBh9EGbn8SAD4gg
	 5Zmp9abkF4MYPzxBEmEW67HrXDUuagrNJRq8i3v7x5RvD15i1Qvkz/kzA4KeOjobdK
	 nG/MqocPCSCGaULtK+rT1E9BguiwoO6rkMaRNfTsS7GM5s4YmMGg/9KRyOILFpuXzZ
	 lu8kOWv6QOvoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93A1AD3ABC2
	for <ddprobe@lists.linux.dev>; Fri,  5 Dec 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497877359.32522.17184704006674572273.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8ac1d9a9c827beddeefe9606b0324b4db7138a67aef15daf78db26e20889d6f
Date: Fri, 05 Dec 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764978773
