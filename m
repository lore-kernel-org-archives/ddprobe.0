Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29275289821
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747852794; cv=none; b=U0r9WK2xn0apUhB4rTkOwQGOvstnh82i8ZCatobMq7cMiw6USsgDuyFvJTWFDkM6wiB3gfB0Z+NdsuYbhrMNfW47nGbkBA8kkgUfZKjSai8wAHCFfjXCzXSIH7vg/ewoIeZqetRYRaQmhRdV6RLZCPWq1E7mL4DE3HCrqa71NzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747852794; c=relaxed/simple;
	bh=K7q5DkcjcZazzuQ7aKphjgQnGfVrn8EQ/nGFw3pigfY=;
	h=To:Subject:From:Message-Id:Date; b=rli4x5lcjy+Ir0uMrimaRwOu9hril8G82mK6UL4009B3SYjf1AP2RAxreeb5QF2g2/zsxufJxHP/qXO33AalmlgBfdkbnwhwm6lyGJogtA22EkqRT2tGKAv+kH2nVRhkgejs+s18SVup2LzNBh+2SIdhAVsFIKvaQmVefyq6e+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MjGHPMQg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MjGHPMQg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E8D6C4CEE4
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747852793;
	bh=K7q5DkcjcZazzuQ7aKphjgQnGfVrn8EQ/nGFw3pigfY=;
	h=To:Subject:From:Date:From;
	b=MjGHPMQgQf65gx++MieN+ZpEbn++ZdyWiOSJBPqTgaGIFzhVWNPLFa4IJ4HeyxYzH
	 MiUXPl8RmOmtoXSqMbc9quvsdjUr5TDarw+NgbnDNS2hechclUPdZdM43ysIwSbbjq
	 71ixEfE6OLSjnxsd0CHAo/NKjiIAc0ksaUTr4udhdX5JayEw3cbmVRIXWXah+GR3Mp
	 VCrgGJkglZKfWfK8Oq/5n0nDX5GfgLczj4vzVN5BKKk8KxJC/fsm5Wv8pg6Mzvb7CH
	 zVlVYBfvtc4i4NgGhQcaS/I4trWu6JruwS/q6mwoXwtSKP1yEyNwgBrVyKBIhwe0rL
	 +IaR0/0+3CHbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F418C2D0CD
	for <ddprobe@lists.linux.dev>; Wed, 21 May 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174785279357.2118.17006160954754496993.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d293ad63f428757c8c5c9cebf7868ce52eebc73c70f587cc79f8f18de902b49
Date: Wed, 21 May 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747852793
