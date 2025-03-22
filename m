Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 456E922F392
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742666394; cv=none; b=X85zvzVipid002Rdb3J2NUhlpbHlw1kTxiCIcrIYn6GUwpCCscWzfhBI8WsSEJ65F/R7Zdft4UJns8AzjJ5LVe6fW/fqNm7ICtC/llhWvLjLbVeEPPAlX9VfdoWB0qqv+3hfpTQ+vPnHq4CfyBxyMhLNuCtYXyE//ofYbuhnZpM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742666394; c=relaxed/simple;
	bh=91vgJ9Il3KivUoxoAXrrbW4kUhxlxjatbouUxjKPldc=;
	h=To:Subject:From:Message-Id:Date; b=i3QvNWSX8QEO1X+9KHOA2xMSWia5ygJXvlMBbETuoP4FJM5yANAU73B0yb5eG2O3uD+K6eV88728bS+1iPY9CpqYqrFqz0TD0nttfgUMP6KYQhkMbVyrELSUzHKy1GP7XSsyEq/+affAQy3uqbZfPKVO4LNwz+cGVqSiZRjRbuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MLsRdpox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MLsRdpox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B783AC4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742666393;
	bh=91vgJ9Il3KivUoxoAXrrbW4kUhxlxjatbouUxjKPldc=;
	h=To:Subject:From:Date:From;
	b=MLsRdpoxvrnv3IOy+U06krKV0eRyeBTYpkN6o40ZJ+KWjBUe3JRLHpYQ7zOqgxQqU
	 e3tocnsrOfTEBJoMeUk71u4wugCibZ2iWYN2gQTrtyc2FfV8QpdDwJQh80MFrPJqs8
	 M6UcQda+G4U6Gt68m5eALNKr1xgYG7BJFaAoNIuGrptecNemsaKAQWqKux8JvopqaL
	 6/odm5STJWFLSKG0ce01x3KSZ9aUnEBAFAx81KiWiDmIQJ2XOaUwqt4Cj/0JXSYN4C
	 Hnxh1J9xWSjGg794xGaBZuFI1OQw1v7W7c4VXotG7688lP6JNTKrSk5ymwpiQxh1M7
	 3QM4s5zDpqrfA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E3E9C35FFC
	for <ddprobe@lists.linux.dev>; Sat, 22 Mar 2025 17:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174266639363.5718.15281492749022801084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eab698cc7b3a4b9edf50f3bd96d8af5f532a63a290015487e109c28df6f5f1c0
Date: Sat, 22 Mar 2025 17:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742666393
