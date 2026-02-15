Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210C1225397
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771169094; cv=none; b=M+6KFXenohEIVtVhaGu6N0I6AVSssJdq5mOgh8YqAKeCnXyamtPCJ0uygJI9+/3mSKKCXmovSeZGCOoSi4QDwdN3QbWH9qBaN4+nrr8q9MIhpLNnh1U6cJ40DgSnu6f8J/ABR53bHgPvYGeV5R5riK5N8TnXSHESIZGBmy5mJwY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771169094; c=relaxed/simple;
	bh=MawJVHY5eedSwPybGzh4fWreoNRwxIyZ84QkBBGJ7uw=;
	h=To:Subject:From:Message-Id:Date; b=mvNtEXzsZpPzFh2rHwhYPYNcsIF+74sQ+VXJnlIeLtP5qj/7dbUq+5tYkWlctxBLogPqY3/CYmqJAgOMuyHiwI/Mz5cs7AVO98Z2Q9vwCydg9rGpSwvGP+RkSsItCjGC+PC+VcGzdzqMZM+jJjlM6keF92XuV4Vph3V+Zt8P3aE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMN1Aoqz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMN1Aoqz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B326CC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771169093;
	bh=MawJVHY5eedSwPybGzh4fWreoNRwxIyZ84QkBBGJ7uw=;
	h=To:Subject:From:Date:From;
	b=gMN1AoqzqYq2hEjKKoM/7dbiptvs4l4r9WHkmKJgLRFdR3yIzm694XD/7G1yBHbnY
	 Z0Q4o73CGk2y+yW22YrtTKu+fvOXFaMDas31Q7whoz2fmK1mKu4HpL27Xu9r0pzAH0
	 7H8/B6s0KxIPBQuNlpMuR7qUJ2+5jJppVD86nHxHk9jua+6XdEY23ywzNKXlJanEQi
	 7E/+OlDgcCUwKMeFvLmM0oZNfBpe1rhW67VcU88FKQzD4nJFLonle40JBVVNfIq4Vi
	 Vh/I4fj1DMDX27EbU1q/Or6IZdcttcdzULgB6TQgzGk2TpKxwMtDEX2EryR3cSIiK0
	 XBYBrFNfjZieg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E0B0EF587B
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 15:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177116909359.3355.10350917594477001091.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88b4a659fdf72a5ae5bd951e6a38815f702307fbd0d4cb73395562490d06dcd4
Date: Sun, 15 Feb 2026 15:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771169093
