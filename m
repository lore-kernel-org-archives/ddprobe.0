Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C1CBC22173D
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774620293; cv=none; b=N0tie3JA9nf9vP+bxnI+OnV7TvUc0qx0fXrnwQGSF/67aE2OGomXw4b0VTEpo4TJKK87HqwMnV76v6aEdHQ9fOpwsArPgsDH/86UYIioSsIeKQYjCy1AAqR9TUtiKPq6+fUy33Mobw/o92kQoF2lObdnsJf6K1VzAdIuHjXnpyk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774620293; c=relaxed/simple;
	bh=Lycezua13UIqWC2XPf7lqLh4rmL1lPQAlQBkyso0oM8=;
	h=To:Subject:From:Message-Id:Date; b=qyr20c/2TFWXv3aTCzCimZQ5puLbPvMVcsbGvtTfOVNAREXHd30T7R6+GMgbXIAVBS//ixs4P7H9A1eLZ3nz8VMK2fHEjyOpTJNLtf31YgTvLOiDcBZQ5E0tQnGbeFHpg77G+7mqMR+Tzronl97xOXznNJv7t5GiE1vAohUnHQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OxoxZvm8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OxoxZvm8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A28D4C19423
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774620293;
	bh=Lycezua13UIqWC2XPf7lqLh4rmL1lPQAlQBkyso0oM8=;
	h=To:Subject:From:Date:From;
	b=OxoxZvm8n6LrhP0VEk3OVYJWVDcdj/TAt3OJOnq1o/OeXcthZs2/x1/P64sfTfAYq
	 3FhQOUHLKsVb24iLzH7AQS4ixMK3aUARPxebou+t4iyrDIYEoLZ0yFCGGND6JMlAFC
	 +ifbk0v9ARLSDZ4+C+5yPwbKbmTZJhD271U1eO4B9aA0pFCljMkrtBQJA6WKtu2YYm
	 opml5jCUi8NFi8Gde/2JYRMt6b2USCRTNH0KF/mQUcbGXD9sp3cTjC8JG+lLsyIC0b
	 BriLT/ceLJOw963VIgbpiymB7+hzWlKIj2APHPyvLq2UKdWhM/3gpGNGYlrwnUd9n7
	 nQHzWOIm7R+Iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90FBF10ED679
	for <ddprobe@lists.linux.dev>; Fri, 27 Mar 2026 14:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177462029358.30533.5908747336425303182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b615669b2fbb3b83becc4ed93510f3f45b8fa338191843c34a9f3e2ce497743e
Date: Fri, 27 Mar 2026 14:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774620293
