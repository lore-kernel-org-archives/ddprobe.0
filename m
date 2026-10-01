Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 8AE3E38C42F
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790830834; cv=none; b=HxA30kkpXBE9K60Z4ehAdHdoX0xREr5HyByhLFy3y5znKv2a/3+nx0eVq2T+KY26Ifkd2H+zOlN1+ZaF6gLsca1fF9oZ2qO+I6nYIxw927U/XFe1WAOLwceimPkl90dDD7ZOhGyFgIixfT9Z1KZubuYnX9dZ6JSSJQF7vBHFx0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790830834; c=relaxed/simple;
	bh=vCKDBjAJGdNUDx7Kr4+TziCzRqLs2L3I7qrVWB3D6F8=;
	h=To:Subject:From:Message-Id:Date; b=MYnV1H70kE/4QLvO+F+PApOsXvbgheyHoanIeu+vtSDk558rGC7d89UvfZjEMjkveyVJyeC81DmBVSfTPY+F7l9LGL7ewLWj+sf09MaCJZ3yDAtxMKq4j4VbKYuGYMWuDEtZskI1JACjHSqmQ33JBn0nS19rAp54KaBC2w/+Sso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LnHa8/8l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LnHa8/8l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB687C2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790830834;
	bh=vCKDBjAJGdNUDx7Kr4+TziCzRqLs2L3I7qrVWB3D6F8=;
	h=To:Subject:From:Date:From;
	b=LnHa8/8lgNk68q/5MVpEnRyPUysT6A10JQbsEz/uj7M37R0u/jDEmfa1vCw6zVCe3
	 ljBf1sp2PzNEOwNn7FXtbCAlx1dwFwkEWY/rFd7cvV7D34TbeZKR042rsz04oIrq9r
	 qLWC4uO5aMdfwRmGQ9ZwaE31+MXJ8DZs0t6u7JUm5wAp25i4xu+wsuwk3Q4RZxz8CH
	 D1YhlBZnhYuOoekiQV0jIV2J2/ruGcpriZ9qfSRuBV14/FqTKXAnjDHwntft6aX/V/
	 R5mJSDZAzmf2X+27G0oflzBh5nymD8BSxQQdva86Q9RJXuJ0p9bV1gedcGZuGuSfZw
	 7fpmaJib3LBTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C44E2CA5FB3
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 05:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179083083379.6028.17431992851357405289.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72fc7a7576d5c9814336350d0b506ab785b7e4764c5343615f2a59b423ce6e7e
Date: Thu, 01 Oct 2026 05:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790830833
