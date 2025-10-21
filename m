Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1544C283CB5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761080394; cv=none; b=m9ejf5gldU9nTJVeJeVnnkqavvA05cMYYQn9+EF6roKjyO0BnpEpuj8IAlbBsrkRdHMNQ4SVQ7i3P9Px3PvetFBT1GM0QI5S/G6Pyanz3z+WpjLqyJjgz/qQIemr/bTWJY6E2634kl9nYmy/92jUfRZqUH3DM+3nTKh7Goh8E+8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761080394; c=relaxed/simple;
	bh=RUlzt3Tb+XLnlTbrxPv2PO3IXlkmlQqcYBl/XmvGnjQ=;
	h=To:Subject:From:Message-Id:Date; b=uXpt19TdLXAFJo/53wZcA76Iw9/9Ox5GGg9xCQj4b6QwngfaCZ2ZuZQR1trhXfJJsUmHk3RYnVN/gT15913YKiwPL3r9IuG++fvTIOMPu+NcTZiVBTDMgnpVKxE5OrhzKAoNY57yMZe3vI/VciNIc2exi7ovt8mvz1Z0EokMc5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QTlBMUt9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QTlBMUt9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2258C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761080393;
	bh=RUlzt3Tb+XLnlTbrxPv2PO3IXlkmlQqcYBl/XmvGnjQ=;
	h=To:Subject:From:Date:From;
	b=QTlBMUt9tsjlShDL8wGvbTy5K/zR7+5ZbkqCc9WNSF6zC+tenMoYxwW62hXKpWjjP
	 aLRpTIHx5arIHRnTuzUee/PKvIqKhNWqsg1zKmTgT7n8AiDPHro/W3ud7CjPhG4yoy
	 YLXY/FMnoDioEfbBNgMxEX85yjjqZ/SOGcu/zyVSZY/PLVyLILj5cfZjYTZqGcjzxN
	 diLUcw7csFQzvddTsR7vCGumKoLOclZgpDW/8V2cEoooVtLd5LgCtBqSv8KkkBhY7j
	 J7yx0JnZ7i+BkEUX9u6V+eXCla4JqI835tNo9BD2YLCWc2VXSiuyFYEePHcy9g5Ppt
	 SvA5zhDwR9JJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9143ACCD1A5
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 20:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176108039358.11051.11627846607383904612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b72910afb85f38686c98933dca5a087f7f03e15719067ffe59a35d25fd0dd94d
Date: Tue, 21 Oct 2025 20:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761080393
