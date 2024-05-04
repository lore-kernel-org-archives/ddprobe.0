Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56435AD2C
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714865543; cv=none; b=ldRkr8vEyenAtGhJ0s542GdOq1n86CsHO86h5+iedWhO3w3ua0ltP6bBgVCD944E/AY17O3/9Es0riAiKiWTTRnQf615F1cSfE5J5Jyq/qXwkETTajKTWxIr8Rcx1I63l/RkDNy+PzKqcBJkK6BmGP6DfcUM/G2sybfWUw9pYwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714865543; c=relaxed/simple;
	bh=qmcgf2/AZUwX02NOEV1PyHgitolXYsKxDOpHiXLgiLQ=;
	h=To:Subject:From:Message-Id:Date; b=MCqFg5d4xYx5feMKO/iFbWcEqn+104wg2sg5BLPHgqfOJdmm7ez620DmBaXcGq7fVO9DEl3CeT5RT4e8YR6i57/6CPsn9xOMrQXPmUHQVEH14sTaBMpYRR0RxRyIxZHnxePhRhUaOiH8e0c5Gr/J+a2MnqhIj3YHnZtji5IhQLo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bj3mWjbD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bj3mWjbD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA84CC072AA
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714865542;
	bh=qmcgf2/AZUwX02NOEV1PyHgitolXYsKxDOpHiXLgiLQ=;
	h=To:Subject:From:Date:From;
	b=bj3mWjbD5xoLcN6QUZjTYXMt3R9tqKommEBZdm19FWjLpJl+0XaeZ8YLEg7geVKd6
	 oDAHHR5Ff7lifqYasca5zV0LJzWuV9DrDxMN1HMbQRVr24aro0M3BvBv1doYvzhzcS
	 S6vSkfo4cG64DfWRl5QRfTynfUvoNY27xoudp+KWog0MYQn8d/yzpgVE5qqIWIgbBV
	 Khs43vXR4yp+9aeRNKb+IZtDk85xqk8ybc+QD7W320uQT3M30nY4RVxKm51zkPg1k/
	 X99wdJPt5eB5F4mn3xTta43YTXWF5UKWdKarbZVZZU1J9pZsn0FUkLptVQZ942ue88
	 he9Oh1m5qSpGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C753CC10F1A
	for <ddprobe@lists.linux.dev>; Sat,  4 May 2024 23:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171486554278.30508.8199889926027794458.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae47d19b4cec28572d87cc17b83464530fc668e027d4ab79da84579489ec32dd
Date: Sat, 04 May 2024 23:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714865542
