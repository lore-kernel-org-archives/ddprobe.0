Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5618628E571
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755007194; cv=none; b=qutGdvvJami9GaBK7ASkXHb95ccO7Deaksw5rwA+7RZARM0H7xZg+J/4x3zqbwJ0COoDij31KNOyRy0zbyhbYAl6MOaAQug+16Y716G1/ep3e8fqmu+qKMqmc6QI4yc4hcxQ7n2jw5ndlDSv7dUrLHk8K3BTrtCk6qBymYqp4tg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755007194; c=relaxed/simple;
	bh=dAfHKHoKn1I9PNCx16STNEpGr98FlAtd3a7uz9WV6Xg=;
	h=To:Subject:From:Message-Id:Date; b=AyeD/nreMeGBC0XPhPub9erYpLOgZGtSVlxrz418XlUPtpDaSZ4838KCSZcsCIaQBDGcRd4fAE7Fs5FlqGPFHOjyNa0S/Z4X95g2nkMpE+1d022+4jlQUd24KIyYa85X5BwyVdFfduSnXVZs9KJ6T09KN0BJRQohP1AJ1NUWY40=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EcYUZBL/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EcYUZBL/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2227C4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755007193;
	bh=dAfHKHoKn1I9PNCx16STNEpGr98FlAtd3a7uz9WV6Xg=;
	h=To:Subject:From:Date:From;
	b=EcYUZBL/vwwdOBTd57cO//L91p5b8EoTBIQvYQgxnNBDVQwzJktYyI44YQgfSVpkc
	 xpZfRMob5GPMB94pCQhtAqx0QWa6KibLSXHhF6dpCePQQIgK5z7E3OnRpZl8M3Ao9p
	 +oXoDaPJFkdbDGzuGHOJaaTNo1fZSEkoEssCfFbpsDYl8Z9rxeKzuty4jYn4NDGmKd
	 Grh+/2hL0WnF37A0Kan54GE35EGHvnMya4OgygjWXaCv3JGUxBdT0Te+kxBJ/GYcXX
	 QNq8C0n6kVV+IQURehtMQkSnm4zY+ZHwnO46ITcy7vSV1orH/frAJfhTpinAbuQF7a
	 pp5W2ivl+wodQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 901A1C87FCB
	for <ddprobe@lists.linux.dev>; Tue, 12 Aug 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175500719358.22993.1276551776585228642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6de73bcbdc578276b3eb0d0418a48e6cfe6a4a9c03df6abb6c746c11ae155233
Date: Tue, 12 Aug 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755007193
