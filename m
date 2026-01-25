Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E093E55C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769339034; cv=none; b=hM6wchxbV6SpHqDeoHBG6bvfgeemIfsiJSjns1mAWdxjaqm2vicPeb0ghjXgkV4dyZ6a9jUp6636f/XeeX5sNTr5gvIYGX+uWesDTaPH3ZvrXDNZswexbkwWkMEoBSOjVdEtJaEBYjdipVP8kKifodzl9hzpaFPaFHXKhGSXZWQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769339034; c=relaxed/simple;
	bh=U9pi9l8df0zOeR1X/TMEshNsEDpzudYg8zJBxoT5014=;
	h=To:Subject:From:Message-Id:Date; b=LWlvR/5nqHZ3Qpt7OUTtHJVIppTHmfZgZEKC3alXGssZuXLkGUeVJ1/z5VRvg/O3Y0zZ5U/M2ULR3GAirUfwqXYS47Q8t0rqSCDj6a44PUlu9pVYmII6ZO7xsYTIkKHbZJDgN7nDDX0dyEarDEkQzPTjKZxbfnHjzNCnwWUieEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZFHuIlZk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZFHuIlZk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C59C4CEF1
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769339033;
	bh=U9pi9l8df0zOeR1X/TMEshNsEDpzudYg8zJBxoT5014=;
	h=To:Subject:From:Date:From;
	b=ZFHuIlZkyMmHE6I97s/S1MSVD+SU4QungNlfBea8xAjdONDHgiPehJx1FGhppZmhD
	 v6JH0bxaalXINegSrObz4vND9Gl1mNAxJJ8VnccwLxxfHL5g48f3HMxPaQkZA6I/Wd
	 WjXhrUB2zFsakgTZVtsQpAaKAU6sIBjhOAopDO0uDsFmtZOH+svqJ8nxCnuU/X+9lG
	 uLIWj4gUYkBhyna5apHLmXAnWGmxa0BeMny04uIQ7+uat+LTvK9CjF2ofryauQY2Qs
	 O00MFNP0VVAWhoL27fvCr/WobuY/kuzZG6MOKWcaqxzPC9LJElJ4rXn0bd/RcxOyOL
	 XX9qhCgPQyDYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F2BE63C9C
	for <ddprobe@lists.linux.dev>; Sun, 25 Jan 2026 11:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176933903358.30543.1206080298163823750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 276edf6e91658e20d70a37c9af7b5e5e0027b50e31b0b80eec0976cdab7d486b
Date: Sun, 25 Jan 2026 11:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769339033
