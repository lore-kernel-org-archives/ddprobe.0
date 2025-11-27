Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38AA328F5
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764201774; cv=none; b=bYX673CnfLf2u4ut7sbWza/ZUY3xW7ruBBTuYii+XEzxZ2kMJ5mAQVfBHKKfCZndPh8cmKTwyQHdy1Er+O1zkyFzL/KUVJDie6ZqVKMsf1nXcrH8yw7Ii/JMenIYfI7PL3n0IwQ07a3BVi9Vx8beqbj5VOece0YX6zpyil/viWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764201774; c=relaxed/simple;
	bh=Ggm2qORvg2hx7hPOG58iJUz2IhcH6vgjUBlJc1V6wFs=;
	h=To:Subject:From:Message-Id:Date; b=Xcp23X6a0bPyp+SAAn+0MpPXKpYO8+ecAmiBVQiX/rzUnBRLQRjwHKmzowusBA4a6DvIXID4TzGiHJ+1VR9EZVJa99UefiPKilprceEFSDQZ413mfodFZ9KoYz7reuJ/MwnYULplJkASefKs1ZK872+5GBtwZ5ZL/c0LKam0tdo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BNQk5O+r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BNQk5O+r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3AA5C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764201773;
	bh=Ggm2qORvg2hx7hPOG58iJUz2IhcH6vgjUBlJc1V6wFs=;
	h=To:Subject:From:Date:From;
	b=BNQk5O+rD3CxspihJ71BMEtUoCaOQbyRH9RthGWLebISWcUQHds7gqVL6aPyKNPKm
	 7iZbvUR4QYYkhKzzXWbLf8CeEK54AxjRiWV+s/fzOColnhfGxAQ3IqQqs8yr6YvYrs
	 uYGQSbOQ4NdWs0w3mjxIkN3bUcV54qMkVTo7J3y5CU4e6xxlvYVZSd2f2rWGaox17k
	 CTPJYaj7/oxaffvSV927l/f17GiC7PpXdWoqfR4FC5C4XeSZ8FLhEoGtYfaQSngDhC
	 posa6pFaPBVh+ulLzHb23TkgDRNBM4BpaluOCkmUQ4t72/lJeL2ZM3sq9z1/jqhnzE
	 TclEk+hBz7zxg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BEABD116E1
	for <ddprobe@lists.linux.dev>; Thu, 27 Nov 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176420177360.24468.12675950829506469889.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9a7b21e27b74f93c337b7b56ad308f795cc8b11d8811ad97f653f0302eb431
Date: Thu, 27 Nov 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764201773
