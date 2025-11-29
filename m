Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A60D1946DF
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764458574; cv=none; b=BI7+ryTvLN5kj+RaSf8PFtmjUJUumSBVYmQUVvklymoqaEIgY5A/kvWmy7CPj3KBg16prRPdl3pzb5RNJAz+p73rE91g0Z1WbU9n88U89Eh751LjpEWCVzRZUt5VD5IhWqZMN2rTooWwE53pn1Zsdd9LFT/h4jeC95CCORj1Ttk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764458574; c=relaxed/simple;
	bh=mjYufJHBWzPK6GQfLB/4h599/zToCatb1YPmA6QnS4w=;
	h=To:Subject:From:Message-Id:Date; b=iaX5JSsPKUnsEyHdHE0Yye5slevXQxdR4H+YYKD6Glfg8LzRFRy0SPfdyA2hqGsAf12wzspynayjl1SaU7xjvamET2R21JIfHpB7V4F1C7YyHIYZvab9pWvJD5GUWZYZIMSsZT4yV67LRqb7Z4EiOhQJTNkB1DubkSJxfwBlguU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tMz35OVM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tMz35OVM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 97B35C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764458573;
	bh=mjYufJHBWzPK6GQfLB/4h599/zToCatb1YPmA6QnS4w=;
	h=To:Subject:From:Date:From;
	b=tMz35OVMj/gniJ9RfUGKeE+bSsOmUHvxq4Ambe5gBa6yB/fxuIvtYjmK0og2Ydh9x
	 jwFamwOzagtj/OYpyuZb4nSbPnLPrD8IlZxcJ4K/xAD6PSTLQbk0thgP0Gcj+bdcip
	 hDj4WDf/uX7I9WUNCuz72anAebalP4X3089MMyVUyXoYSVJCw3UoI5IMkwAZ4DDVEv
	 Xa7l8BuRPAjhZMXNZYlMoBlBPojuwuaEt3VwS8fBVIlxXHtL2RqPjOIenMN5le5TKD
	 2DBblTvD983LyD/ZlYcwvtQZUyveUdnG88s+sW+bBTeYYs/6SlcI76ld7meZjf2k+Q
	 ZdGJA9MexNBcw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90659D116E2
	for <ddprobe@lists.linux.dev>; Sat, 29 Nov 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176445857358.23533.16149140471638032045.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1f07becc4a0d46ca7980da0a51d6a5c95aab69f1eb8df6f4b6f83298700ccf2b
Date: Sat, 29 Nov 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764458573
