Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3D56A26B2AD
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741292936; cv=none; b=PIJSlYXV8Ru8yZwLrH73x7iM5e0zbhU2sUagCGvvBVaFgv3Hzdbk4jD2SpiQ/LXVb0T3pGrWFtqvW82F3wMznG/e7njsEBm2qjbXYmAxqh/BNZEWz85T1OUl1eHaxiU8fnlF+QKJGOsDr8L4wn138l0QOXxUVnLo0NhZmtc1z14=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741292936; c=relaxed/simple;
	bh=SPrKoJPE0/21XAPxuYtN/AB0pWC28GMqVYXGPVSrWZw=;
	h=To:Subject:From:Message-Id:Date; b=bMWqg7HdpW1UFzubqwuVoYOwenuUt1AB0nmo/YgSWbEFBhyfuhcMwlydGSnZxd3apxvqglIBO+alK/WbSgqGa1rIbOK1m2W6leOOqybE4ImA0JnYEqvZERk6zI6bGum6hFwz8QJFrkMRmRqQsT0CR9H5y+3HscUprCfmAqdtYWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fBzPiiOl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fBzPiiOl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD8D7C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741292933;
	bh=SPrKoJPE0/21XAPxuYtN/AB0pWC28GMqVYXGPVSrWZw=;
	h=To:Subject:From:Date:From;
	b=fBzPiiOl4IGd0NClC3gcAs8CAMp/1OVtDCRHvCRK+NeDf3ltZKgZO5ytFaUA6awnU
	 i5ERix98NTb6QTyAy4TYuTMhJ9miEArxMJHoa09vVuMZhAQbp7aGcRCrk+CQZLophP
	 xpWpIAelNEOZHHN8g5e/D+kR8K7Bb0RLvO5xsfWqp6U4dKDaywxUbPke3QUJFjfj3G
	 8Sbi7ZlbwuMSTqxJ4wBWJdnaDCxkTGZFrmIbyQ9Ujj2gyfs2D4o+gnOo/sgce1iscM
	 wOtEnxDElNT2ANuTHzvYmeEAkiMGNZeIismS1GM4h5/weFs3VN9SANKWh6PQfihBAB
	 GImqTRae+HS2Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97EEDC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 20:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174129293361.13919.10165259849015109677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c56e73c02941af32958c2cbae0c420f7722248789b5c26d995c6322ada79cfb3
Date: Thu, 06 Mar 2025 20:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741292933
