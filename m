Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3AD513CF1FC
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790795434; cv=none; b=WjxoemPW3FS/7lzZZGxmX5802zGYqV25iLET78r3mSv60RVzZgwQNO0HyhLNfrzWl1KS6CkGE2+kfdllzni1X/U7UGC6jjUQ5D+0L++1sU410Uzvjb0s1UmPIarOwDYna4iwg4wat/kU5JovcoCC59VizgZMX186xalGsNA8Vu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790795434; c=relaxed/simple;
	bh=TbhRia17SYpOaZtSQQ7uNWtW1HNBVAHhs73m7EoBQLk=;
	h=To:Subject:From:Message-Id:Date; b=SXRcbvQcLTfw/RCZzdOMlWPRcuzpgQdGADafmSEwUxrk3k++Xmc0j/o4ov3LQjM8DOxuQrkSZPIZiS9sVkivBYz503Aa7V99cVeeX1eOvqscVsezaC/H09yn2cB/0vRO8SClLYlTGNdQ0gPp+JWqTmTNY4+bvNojkMhHv6Qu3jg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MiFZl+1l; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MiFZl+1l"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5A93C4AF0B
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790795433;
	bh=TbhRia17SYpOaZtSQQ7uNWtW1HNBVAHhs73m7EoBQLk=;
	h=To:Subject:From:Date:From;
	b=MiFZl+1lseAQQDHxLRG60eQf5dwkiALXwmlc8F1T16Yd5lj947hoM0z/of7EsSFJ0
	 KbNroL0YIpDtQrse3BrLi45u42xzVBnAFGlXx+OApJyJTcmuw3+nbOo2xtePqQaPy7
	 npBKR/fztMJcxuIxSEyA0Gp9m8tznIIHNRxrBkYeXJGLjFtDxOLraI3BBRKxeE/mwd
	 lwwUh8uzEGaCN/nYGlKOpvJrquhU2mfbmcgzdfjvT+LHhLJG5UNd0XxMiM+VrG0n/3
	 p3uYvHQMMVJpVTVEgKeO8dYZBzs7kl6XVmFMntcLqcxp7Mq5YH5KYZkPgyqSYPbIMk
	 PLkIUfjNGAy+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B133FCA5FC4
	for <ddprobe@lists.linux.dev>; Wed, 30 Sep 2026 19:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179079543368.8269.11075068885278259748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb21f9a274acca6390bf43d74225cc8319ec34791c8359ea21f28b1dede0df73
Date: Wed, 30 Sep 2026 19:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790795433
