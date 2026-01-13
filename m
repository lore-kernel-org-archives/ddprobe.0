Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01DA234D4E1
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768278234; cv=none; b=EtgrsJ+TYg1qd0HQngf4gubx4pg3J4/ZVDqK3mZvgnOVNfHhXzX35K1aA62xf+gBVLl14ai5X9/+RKoPQqtUYDDyZ8pO2M7T2elcue9EXFe0Z/fBGihYt+puPkbyQGYQKB52L7JGkMyYLo+gBo3xbMHln6t29YMMh+XjF8NyK8I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768278234; c=relaxed/simple;
	bh=SQ/RWBlKg4Q0aMatertQ7TY55KSFYvN4fGKM4MC8f4s=;
	h=To:Subject:From:Message-Id:Date; b=XemQNltns6rkn4Z57cKIhs4MQT6c5y00AcZGEEastmvfTUPtM9sI0OcdHoGpy0Pgb1xkJj5pHun4o9wEgl5gXuiMceb/Cw0LReFTS72A4yJ8SqBflA7YPBf+0pkU/l0a2aMvJsioxSQD0SppeZNE4kM1bXA/RWqexUgYgOeuhvU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DhFsfQ5v; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DhFsfQ5v"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A42A8C116C6
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768278233;
	bh=SQ/RWBlKg4Q0aMatertQ7TY55KSFYvN4fGKM4MC8f4s=;
	h=To:Subject:From:Date:From;
	b=DhFsfQ5vymfRmXa5fjuFyS8JeWcx3+iK1j4mn0zYTX5ns8E7IQi++3xY5IMc2sjiY
	 BjqajRp0NZqkgjKCsQyN0k/jlC8eviNLgIA1mYOAsrjuyQSV5RUsqEyX3y0qOXnYET
	 fzLhmWgErja0X/FDqqrM5Wua4H91WmNTDPZIob93UvjMIEums7j0VwQI9h516xn0Os
	 Bh80OWLmQlqXR2J7Tqu7MZWnSbfdHP9KxCc8XLIMItGXQdLwEFc25Tv/59nUlqgL0p
	 UY5ysNkIVxQl94Nscbwt1C6ULqWFvZoPTWxQa0UKqKCGIBUHkv2GQDgHsDvdUz9AV5
	 sXYFcT6z26uSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F59AD29DCA
	for <ddprobe@lists.linux.dev>; Tue, 13 Jan 2026 04:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176827823357.18763.9312453037051299348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 210a133a0e5ce03e146501a69c4544b5e4f4b77ba370a824b7e28c60e4d8a78a
Date: Tue, 13 Jan 2026 04:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768278233
