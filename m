Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39D7F42A80
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769555034; cv=none; b=NmOBen/TQU8ylGbZUPMbd7FRLZA7C7yezqm0xMiU+WmXDGlAhbkOUsG/DRdIN7nDHv1nA6mG8/aQw85nLjakgqNLvOhgBvqiLlGaQnULl0jD0kNOvyHjMSv4Xh7LE2lTWJtSKASSo18dYwdFRXuUMWXDP5tUGb0+6md8j6ty9Os=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769555034; c=relaxed/simple;
	bh=G5UUiGNqez0rTvh6ULFu+hYYtKg4IreiLxCVU3k7W+g=;
	h=To:Subject:From:Message-Id:Date; b=QDEACWb1d9gh5/fxJlgt0iDeRrOSIcKiDiZzia08tlmfrACqtDTTSFwDe3fMMJor3VuwS2k8n3AN/vu1VVLUUvWBUt/U9BU7ulgj4LL/F/1BP74zrOdis0rOWP9jduNC0Ios05/7i/nOI92laYFmhnEhHax4Ol/NnMwA/gaPMLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VrimZlyf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VrimZlyf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C68C116C6
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769555033;
	bh=G5UUiGNqez0rTvh6ULFu+hYYtKg4IreiLxCVU3k7W+g=;
	h=To:Subject:From:Date:From;
	b=VrimZlyfqjnYkt4Oya4BQz7CUwe3L0DzZBYC/Q2YvzVfBXVftgMh3w4ZnjOlYi4EJ
	 ihLIrmhwc7+Ci06pGlL2KfxxN71o/pa6IjHmijB6JOG/s6aCc8EHMr/U6t5AhzBTo3
	 7JOcobHABMlnUcPepyUUfnbK9BcY/bIL4OtKIXDxEs/AIT2TnFwbiq0ulEr1XOczag
	 QAmKhBnDb0hStlJDhfvjZJVtXvIlxn+UImBcBv9ul4rmKXk3zXFJ2U6T6b/jcZnatx
	 K/wZk/eQepk2rHKBGPX176brCizxzU6nkBFCwi6wWzNM/V+BSdwuauP9Ubu93zp2wC
	 s02trK5ysd3Pg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94AB7D2FEFA
	for <ddprobe@lists.linux.dev>; Tue, 27 Jan 2026 23:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176955503360.29999.4681863080493419690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8318f4f6bcf32fe3218beebc48d7771231faa98a70a4654fdaad34db5ee93d26
Date: Tue, 27 Jan 2026 23:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769555033
