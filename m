Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 097591E1C02
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771386894; cv=none; b=to++JBJXwJ9iqXaxAmIci/BKalVJ6Z+fNXUacviuV399H8MYwp0TJqAONsHHgbaTEuTlQVXuph8hvIAdKQoHYZDprJHwG9BMlgylcOlf5sI94BZz3H8a/gchvBwwn9WilkC6xr+st+T74jIEnCzIx/mnokcxr1bS2ofyFKV7DrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771386894; c=relaxed/simple;
	bh=Z+KgUPI0zn+cqFZG0LVcJ2pfk9OSm5G5Fsf7F6eyIeg=;
	h=To:Subject:From:Message-Id:Date; b=eHmaONayDNYXZ+SHSvKn7pZRSaHTfjzwGa8c4UvVKXkDZ4aWrkHsUyD7C+mTYA57lrt7pQRS5OPNUpKGVkdfIKv6Fiy1B7tmcYkM5lH/2XNyN2LSuVyAWcKV1UNlfcbfLqfvooWjnJLRAdC/ebwwQYe9CiCliwgGI1USDHc5m6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aAKAsPEH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aAKAsPEH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0CBC19425
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771386893;
	bh=Z+KgUPI0zn+cqFZG0LVcJ2pfk9OSm5G5Fsf7F6eyIeg=;
	h=To:Subject:From:Date:From;
	b=aAKAsPEHVqJKwtHIRCAqZDcOeERnRXRGptXS0ur1JyB1ccBVKpJKVjtqw5M9f4vr4
	 XpYIRDyNpEROegOZwv4qlXtaNGHv/CkIL2OokTKAZpXWeF86x5QebymwJ73kTN98qY
	 wb9TJlGwnHC0BHUdF+GukA/7eeIJu6eSoBtt7Z+Zv1PeZ+dzuAmW1dFJ//msAQfEKW
	 6zgInPzsJ1P0F8rm/ZMx2IjpjgTTAqCkrD8sAuOGxnKVKg9Fdf6976KeUBqgWvsMvv
	 5271finKZyYOoVTGpnilgg1YFZ5ZTUTMnBjMAC0MayslJiL+cDZ7DTUFFMaDBfJPwR
	 HR4FL0kU39AuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9193EE9A049
	for <ddprobe@lists.linux.dev>; Wed, 18 Feb 2026 03:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177138689358.5993.11178477463198522065.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d5090b5a3bb15c0cf2d32d577b06075a50fd82a02fe73c454c638b5fead6bc2b
Date: Wed, 18 Feb 2026 03:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771386893
